// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XVIP1_H
#define XVIP1_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xvip1_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_bus_BaseAddress;
} XVip1_Config;
#endif

typedef struct {
    u32 Control_bus_BaseAddress;
    u32 IsReady;
} XVip1;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XVip1_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XVip1_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XVip1_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XVip1_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XVip1_Initialize(XVip1 *InstancePtr, u16 DeviceId);
XVip1_Config* XVip1_LookupConfig(u16 DeviceId);
int XVip1_CfgInitialize(XVip1 *InstancePtr, XVip1_Config *ConfigPtr);
#else
int XVip1_Initialize(XVip1 *InstancePtr, const char* InstanceName);
int XVip1_Release(XVip1 *InstancePtr);
#endif

void XVip1_Start(XVip1 *InstancePtr);
u32 XVip1_IsDone(XVip1 *InstancePtr);
u32 XVip1_IsIdle(XVip1 *InstancePtr);
u32 XVip1_IsReady(XVip1 *InstancePtr);
void XVip1_EnableAutoRestart(XVip1 *InstancePtr);
void XVip1_DisableAutoRestart(XVip1 *InstancePtr);

void XVip1_SetSrc_rows(XVip1 *InstancePtr, u32 Data);
u32 XVip1_GetSrc_rows(XVip1 *InstancePtr);
void XVip1_SetSrc_cols(XVip1 *InstancePtr, u32 Data);
u32 XVip1_GetSrc_cols(XVip1 *InstancePtr);
void XVip1_SetDst_rows(XVip1 *InstancePtr, u32 Data);
u32 XVip1_GetDst_rows(XVip1 *InstancePtr);
void XVip1_SetDst_cols(XVip1 *InstancePtr, u32 Data);
u32 XVip1_GetDst_cols(XVip1 *InstancePtr);

void XVip1_InterruptGlobalEnable(XVip1 *InstancePtr);
void XVip1_InterruptGlobalDisable(XVip1 *InstancePtr);
void XVip1_InterruptEnable(XVip1 *InstancePtr, u32 Mask);
void XVip1_InterruptDisable(XVip1 *InstancePtr, u32 Mask);
void XVip1_InterruptClear(XVip1 *InstancePtr, u32 Mask);
u32 XVip1_InterruptGetEnabled(XVip1 *InstancePtr);
u32 XVip1_InterruptGetStatus(XVip1 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
