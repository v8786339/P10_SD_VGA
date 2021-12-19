/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include "xaxivdma.h"
#include "xaxivdma_i.h"
#include "sleep.h"

#include <string.h>
#include "xparameters.h"
#include "xil_printf.h"
//#include "ff.h"
#include "xdevcfg.h"
#include "stdio.h"
#include "i2c_16bit.h"

#include "netif/xadapter.h"
#include "platform_config.h"

#include "ff.h"

#include "xvip1_m.h"

#if LWIP_DHCP==1
#include "lwip/dhcp.h"
#endif

int main_thread();
void print_echo_app_header();
void echo_application_thread(void *);
extern int Led_Button_task(void);
extern int sd_test_task(void);

void lwip_init();

#if LWIP_DHCP==1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif

void
print_ip(char *msg, struct ip_addr *ip)
{
	xil_printf(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

void
print_ip_settings(struct ip_addr *ip, struct ip_addr *mask, struct ip_addr *gw)
{

	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}

#define THREAD_STACKSIZE 1024

static struct netif server_netif;
struct netif *echo_netif;

XVip1_m vip1;

#define DDR_BASEADDR        0x00000000
#define VDMA_BASEADDR       XPAR_AXI_VDMA_0_BASEADDR
#define H_STRIDE            1280
#define H_ACTIVE            1280
#define V_ACTIVE            960

#define VIDEO_BASEADDR0 DDR_BASEADDR + 0x1000000
#define VIDEO_BASEADDR1 DDR_BASEADDR + 0x2000000
#define VIDEO_BASEADDR2 DDR_BASEADDR + 0x3000000

void Xil_DCacheFlush(void);

unsigned char picture1[640*480*3]={0};
/*static FATFS fatfs;

void show_img(u32 x, u32 y, u32 disp_base_addr, unsigned char * addr, u32 size_x, u32 size_y)
{
    u32 i=0;
    u32 j=0;
    u32 r,g,b;
    u32 start_addr=disp_base_addr;
    //start_addr = disp_base_addr + 4*x + y*4*H_STRIDE;

    start_addr = disp_base_addr + 3*x + y*3*H_STRIDE;

    for(j=0;j<size_y;j++)
    {
        for(i=0;i<size_x;i++)
        {
            b = *(addr+(i+j*size_x)*3+0);
            g = *(addr+(i+j*size_x)*3+1);
            r = *(addr+(i+j*size_x)*3+2);
            //Xil_Out32((start_addr+(i+j*H_STRIDE)*4),((r<<16)|(g<<8)|(b<<0)|0x0));
           // Xil_Out32((start_addr+(i+j*H_STRIDE)*4),((r<<24)|(g<<16)|(b<<8)|0x0));

            Xil_Out32((start_addr+(i+j*H_STRIDE)*3),((r<<16)|(g<<8)|(b<<0)|0x0));
        }
    }
    Xil_DCacheFlush();
}
*/
int SD_Init()
{
   /* FRESULT rc;
    rc = f_mount(&fatfs,"",0);
    if(rc)
    {
        xil_printf("ERROR : f_mount returned %d\r\n",rc);
        return XST_FAILURE;
    }*/
    return XST_SUCCESS;
}
/*
int SD_Transfer_read(char *FileName,u32 DestinationAddress,u32 ByteLength)
{
    FIL fil;
    FRESULT rc;
    UINT br;
    rc = f_open(&fil,FileName,FA_READ);
    if(rc)
    {
        xil_printf("ERROR : f_open returned %d\r\n",rc);
        return XST_FAILURE;
    }
    rc = f_lseek(&fil, 0);
    if(rc)
    {
        xil_printf("ERROR : f_lseek returned %d\r\n",rc);
        return XST_FAILURE;
    }
    rc = f_read(&fil, (void*)DestinationAddress,ByteLength,&br);
    if(rc)
    {
        xil_printf("ERROR : f_read returned %d\r\n",rc);
        return XST_FAILURE;
    }
    rc = f_close(&fil);
    if(rc)
    {
        xil_printf(" ERROR : f_close returned %d\r\n", rc);
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}
*/
int main(void)
{


xil_printf("Starting the first VDMA \n\r");
    //VDMA configurateAXI VDMA0
    /*****************往DDR写数据设置**********************/
    //Xil_Out32((VDMA_BASEADDR + 0x030), 0x3);// enable circular mode
    //Xil_Out32((VDMA_BASEADDR + 0x0AC), VIDEO_BASEADDR0);  // start address
    //Xil_Out32((VDMA_BASEADDR + 0x0B0), VIDEO_BASEADDR1);  // start address
    //Xil_Out32((VDMA_BASEADDR + 0x0B4), VIDEO_BASEADDR2);  // start address
    //Xil_Out32((VDMA_BASEADDR + 0x0A8), (H_STRIDE*4));     // h offset (800 * 4) bytes
    //Xil_Out32((VDMA_BASEADDR + 0x0A4), (H_ACTIVE*4));     // h size (600 * 4) bytes
    //Xil_Out32((VDMA_BASEADDR + 0x0A0), V_ACTIVE);         // v size (600)
    /*****************从DDR读数据设置**********************/
 /*   Xil_Out32((VDMA_BASEADDR + 0x000), 0x3);        // enable circular mode
    Xil_Out32((VDMA_BASEADDR + 0x05c), VIDEO_BASEADDR0);    // start address
    Xil_Out32((VDMA_BASEADDR + 0x060), VIDEO_BASEADDR1);    // start address
    Xil_Out32((VDMA_BASEADDR + 0x064), VIDEO_BASEADDR2);    // start address
    Xil_Out32((VDMA_BASEADDR + 0x058), (H_STRIDE*3));       // h offset (800 * 4) bytes
    Xil_Out32((VDMA_BASEADDR + 0x054), (H_ACTIVE*3));       // h size (800 * 4) bytes
    Xil_Out32((VDMA_BASEADDR + 0x050), V_ACTIVE);           // v size (600)

    for(i=0;i<H_STRIDE*H_ACTIVE;i++)
    {
        Xil_Out32(VIDEO_BASEADDR0+i,0);
    }
*/
    SD_Init();
  /*  SD_Transfer_read("test.bin",(u32)picture1,640*480*3+1);

    while(1)
    {
        show_img(0,0,VIDEO_BASEADDR0,&picture1[0],640,480);
        show_img(0,0,VIDEO_BASEADDR1,&picture1[0],640,480);
        show_img(0,0,VIDEO_BASEADDR2,&picture1[0],640,480);
        sleep(5);

        xil_printf("first VDMA1 \n\r");
    }*/

	 I2C_config_init();
    	//Xil_Out32((VDMA_BASEADDR + 0x030), 0x108B);// enable circular mode
    	Xil_Out32((VDMA_BASEADDR + 0x030), 0x8b);// enable circular mode
    	Xil_Out32((VDMA_BASEADDR + 0x0AC), VIDEO_BASEADDR0);	// start address
    	Xil_Out32((VDMA_BASEADDR + 0x0B0), VIDEO_BASEADDR1);	// start address
    	Xil_Out32((VDMA_BASEADDR + 0x0B4), VIDEO_BASEADDR2);	// start address
    	Xil_Out32((VDMA_BASEADDR + 0x0A8), (H_STRIDE*3));		// h offset (H_STRIDE* 3) bytes
    	Xil_Out32((VDMA_BASEADDR + 0x0A4), (H_ACTIVE*3));		// h size (H_ACTIVE * 3) bytes
    	Xil_Out32((VDMA_BASEADDR + 0x0A0), V_ACTIVE);			// v size (V_ACTIVE)
    		/*****************从DDR读数据设置**********************/
    	Xil_Out32((VDMA_BASEADDR + 0x000), 0x8b); 		// enable circular mode
    	Xil_Out32((VDMA_BASEADDR + 0x05c), VIDEO_BASEADDR0); 	// start address
    	Xil_Out32((VDMA_BASEADDR + 0x060), VIDEO_BASEADDR1); 	// start address
    	Xil_Out32((VDMA_BASEADDR + 0x064), VIDEO_BASEADDR2); 	// start address
    	Xil_Out32((VDMA_BASEADDR + 0x058), (H_STRIDE*3)); 		// h offset (H_STRIDE * 3) bytes
    	Xil_Out32((VDMA_BASEADDR + 0x054), (H_ACTIVE*3)); 		// h size (H_ACTIVE * 3) bytes
    	Xil_Out32((VDMA_BASEADDR + 0x050), 1024); 			// v size (V_ACTIVE)



		int status = XVip1_m_Initialize(&vip1, XVIP1_M_CONTROL_BUS_ADDR_AP_CTRL);
		if(0 != status)
		{
		xil_printf("XVip1_m_Initialize failed \n");
		}
		XVip1_m_EnableAutoRestart(&vip1);
		XVip1_m_InterruptGlobalDisable(&vip1);

		XVip1_m_Start(&vip1);



status=Xil_In32(VDMA_BASEADDR + 0x034);
printf("%u\n",status);

sys_thread_new("main_thrd", (void(*)(void*))main_thread, 0,
	                THREAD_STACKSIZE,
	                DEFAULT_THREAD_PRIO);

    sys_thread_new("Led_Button", Led_Button_task, NULL,
		THREAD_STACKSIZE,
            DEFAULT_THREAD_PRIO-1);

    sys_thread_new("sd_test", sd_test_task, NULL,
		THREAD_STACKSIZE,
            DEFAULT_THREAD_PRIO-1);
	vTaskStartScheduler();

    	while (1) {

    	}
    return 0;
}

void network_thread(void *p)
{
    struct netif *netif;
    struct ip_addr ipaddr, netmask, gw;
#if LWIP_DHCP==1
    int mscnt = 0;
#endif
    /* the mac address of the board. this should be unique per board */
    unsigned char mac_ethernet_address[] = { 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

    netif = &server_netif;

#if LWIP_DHCP==0
    /* initliaze IP addresses to be used */
    IP4_ADDR(&ipaddr,  192, 168, 1, 10);
    IP4_ADDR(&netmask, 255, 255, 255,  0);
    IP4_ADDR(&gw,      192, 168, 1, 1);
#endif

    /* print out IP settings of the board */
    xil_printf("\r\n\r\n");
    xil_printf("-----lwIP Socket Mode Echo server Demo Application ------\r\n");

#if LWIP_DHCP==0
    print_ip_settings(&ipaddr, &netmask, &gw);
    /* print all application headers */
#endif

#if LWIP_DHCP==1
	ipaddr.addr = 0;
	gw.addr = 0;
	netmask.addr = 0;
#endif
    /* Add network interface to the netif_list, and set it as default */
    if (!xemac_add(netif, &ipaddr, &netmask, &gw, mac_ethernet_address, PLATFORM_EMAC_BASEADDR)) {
        xil_printf("Error adding N/W interface\r\n");
        return;
    }
    netif_set_default(netif);

    /* specify that the network if is up */
    netif_set_up(netif);

    /* start packet receive thread - required for lwIP operation */
    sys_thread_new("xemacif_input_thread", (void(*)(void*))xemacif_input_thread, netif,
            THREAD_STACKSIZE,
            DEFAULT_THREAD_PRIO);

#if LWIP_DHCP==1
    err_t e =dhcp_start(netif);
    xil_printf("Error///////////////////////////////////////////////////////////////// %d \r\n",e);
    while (1) {
		vTaskDelay(DHCP_FINE_TIMER_MSECS / portTICK_RATE_MS);
		dhcp_fine_tmr();
		mscnt += DHCP_FINE_TIMER_MSECS;
		if (mscnt >= DHCP_COARSE_TIMER_SECS*1000) {
			dhcp_coarse_tmr();
			mscnt = 0;
		}
	}
#else
    xil_printf("\r\n");
    xil_printf("%20s %6s %s\r\n", "Server", "Port", "Connect With..");
    xil_printf("%20s %6s %s\r\n", "--------------------", "------", "--------------------");

    print_echo_app_header();
    xil_printf("\r\n");
    sys_thread_new("echod", echo_application_thread, 0,
		THREAD_STACKSIZE,
		DEFAULT_THREAD_PRIO);
    vTaskDelete(NULL);
#endif
    return;
}

int main_thread()
{
#if LWIP_DHCP==1
	int mscnt = 0;
#endif

#ifdef XPS_BOARD_ZCU102
	IicPhyReset();
#endif

	/* initialize lwIP before calling sys_thread_new */
    lwip_init();

    /* any thread using lwIP should be created using sys_thread_new */
    sys_thread_new("NW_THRD", network_thread, NULL,
		THREAD_STACKSIZE,
            DEFAULT_THREAD_PRIO);

#if LWIP_DHCP==1
    while (1) {
	vTaskDelay(DHCP_FINE_TIMER_MSECS / portTICK_RATE_MS);
		if (server_netif.ip_addr.addr) {
			xil_printf("DHCP request success\r\n");
			print_ip_settings(&(server_netif.ip_addr), &(server_netif.netmask), &(server_netif.gw));
			print_echo_app_header();
			xil_printf("\r\n");
			sys_thread_new("echod", echo_application_thread, 0,
					THREAD_STACKSIZE,
					DEFAULT_THREAD_PRIO);
			break;
		}
		mscnt += DHCP_FINE_TIMER_MSECS;
		if (mscnt >= 10000) {
			xil_printf("ERROR: DHCP request timed out\r\n");
			xil_printf("Configuring default IP of 192.168.1.10\r\n");
			IP4_ADDR(&(server_netif.ip_addr),  192, 168, 1, 10);
			IP4_ADDR(&(server_netif.netmask), 255, 255, 255,  0);
			IP4_ADDR(&(server_netif.gw),  192, 168, 1, 1);
			print_ip_settings(&(server_netif.ip_addr), &(server_netif.netmask), &(server_netif.gw));
			/* print all application headers */
			xil_printf("\r\n");
			xil_printf("%20s %6s %s\r\n", "Server", "Port", "Connect With..");
			xil_printf("%20s %6s %s\r\n", "--------------------", "------", "--------------------");

			print_echo_app_header();
			xil_printf("\r\n");
			sys_thread_new("echod", echo_application_thread, 0,
					THREAD_STACKSIZE,
					DEFAULT_THREAD_PRIO);
			break;
		}
	}
#endif
    vTaskDelete(NULL);
    return 0;
}


