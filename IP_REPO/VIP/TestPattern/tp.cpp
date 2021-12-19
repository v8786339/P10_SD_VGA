#include "tp.h"



void test_pattern(AXI_STREAM& src_axi0)
{
#pragma HLS DATAFLOW

#pragma HLS INTERFACE axis port=src_axi0

#pragma HLS RESOURCE core=AXI_SLAVE variable=return metadata="-bus_bundle CONTROL_BUS"



        int interpolation;
            SRC_IMAGE       imag0_0(480,640);






              hls::Scalar<HLS_MAT_CN(HLS_8UC3), HLS_TNAME(HLS_8UC3)> s;
           loop_height1: for (HLS_SIZE_T i = 0; i < 480; i++) {
              loop_width1: for (HLS_SIZE_T j = 0; j < 640; j++) {
          #pragma HLS loop_flatten off
          #pragma HLS pipeline II=1

if(j<160)
{
 s.val[0]=255;
 s.val[1]=0;
s.val[2]=0;
}
else if(j<320)
{
	 s.val[0]=0;
	 s.val[1]=255;
	s.val[2]=0;
}
else if(j<480)
{
	 s.val[0]=0;
	 s.val[1]=0;
	s.val[2]=255;
}
else
s=255;

imag0_0 << s;

                  }

              }




            hls::Mat2AXIvideo(imag0_0, src_axi0);

}
void test_pattern1(AXI_STREAM& src_axi0)
{
#pragma HLS DATAFLOW

#pragma HLS INTERFACE axis port=src_axi0

#pragma HLS RESOURCE core=AXI_SLAVE variable=return metadata="-bus_bundle CONTROL_BUS"



        int interpolation;
            SRC_IMAGE       imag0_0(960,1280);






              hls::Scalar<HLS_MAT_CN(HLS_8UC3), HLS_TNAME(HLS_8UC3)> s;
           loop_height1: for (HLS_SIZE_T i = 0; i < 960; i++) {
              loop_width1: for (HLS_SIZE_T j = 0; j < 1280; j++) {
          #pragma HLS loop_flatten off
          #pragma HLS pipeline II=1
            	  if (i<480)
            	  {
            		  if(j<160)
            		  {
            			  s.val[0]=255;
            			  s.val[1]=0;
            			  s.val[2]=0;
            		  }
            		  else if(j<320)
            		  {
            			  s.val[0]=0;
            			  s.val[1]=255;
            			  s.val[2]=0;
            		  }
            		  else if(j<480)
            		  {
            			  s.val[0]=0;
            			  s.val[1]=0;
            			  s.val[2]=255;
            		  }
            		  else if(j<640)
            			  s=255;
            		  else if(j<800)
            		              		  {
            		              			  s.val[0]=255;
            		              			  s.val[1]=128;
            		              			  s.val[2]=0;
            		              		  }
            		              		  else if(j<960)
            		              		  {
            		              			  s.val[0]=0;
            		              			  s.val[1]=255;
            		              			  s.val[2]=128;
            		              		  }
            		              		  else if(j<1120)
            		              		  {
            		              			  s.val[0]=128;
            		              			  s.val[1]=0;
            		              			  s.val[2]=255;
            		              		  }
            		              		  else
            		              			  s=255;
            	  }
            	  else
            	  {
            		  if(j<160)
            		  {
 s.val[0]=255;
s.val[1]=255;
s.val[2]=0;
            		      		  }
            		              		  else if(j<320)
            		              		  {
            		              			  s.val[0]=0;
            		              			  s.val[1]=255;
            		              			  s.val[2]=255;
            		              		  }
            		              		  else if(j<480)
            		              		  {
            		              			  s.val[0]=255;
            		              			  s.val[1]=0;
            		              			  s.val[2]=255;
            		              		  }
            		              		else if(j<640)
            		              		            			  s=0;
            		              		            		  else if(j<800)
            		              		            		              		  {
            		              		            		              			  s.val[0]=255;
            		              		            		              			  s.val[1]=128;
            		              		            		              			  s.val[2]=64;
            		              		            		              		  }
            		              		            		              		  else if(j<960)
            		              		            		              		  {
            		              		            		              			  s.val[0]=64;
            		              		            		              			  s.val[1]=255;
            		              		            		              			  s.val[2]=128;
            		              		            		              		  }
            		              		            		              		  else if(j<1120)
            		              		            		              		  {
            		              		            		              			  s.val[0]=128;
            		              		            		              			  s.val[1]=64;
            		              		            		              			  s.val[2]=255;
            		              		            		              		  }
            		              		            		              		  else
            		              		            		              			  s=128;
            	  }
            	  imag0_0 << s;
              }

           }




            hls::Mat2AXIvideo(imag0_0, src_axi0);

}
