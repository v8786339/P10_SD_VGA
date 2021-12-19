// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xvip1.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XVip1_CfgInitialize(XVip1 *InstancePtr, XVip1_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XVip1_Start(XVip1 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVip1_ReadReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XVip1_WriteReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XVip1_IsDone(XVip1 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVip1_ReadReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XVip1_IsIdle(XVip1 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVip1_ReadReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XVip1_IsReady(XVip1 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVip1_ReadReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XVip1_EnableAutoRestart(XVip1 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVip1_WriteReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XVip1_DisableAutoRestart(XVip1 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVip1_WriteReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XVip1_SetSrc_rows(XVip1 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVip1_WriteReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_SRC_ROWS_DATA, Data);
}

u32 XVip1_GetSrc_rows(XVip1 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVip1_ReadReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_SRC_ROWS_DATA);
    return Data;
}

void XVip1_SetSrc_cols(XVip1 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVip1_WriteReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_SRC_COLS_DATA, Data);
}

u32 XVip1_GetSrc_cols(XVip1 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVip1_ReadReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_SRC_COLS_DATA);
    return Data;
}

void XVip1_SetDst_rows(XVip1 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVip1_WriteReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_DST_ROWS_DATA, Data);
}

u32 XVip1_GetDst_rows(XVip1 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVip1_ReadReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_DST_ROWS_DATA);
    return Data;
}

void XVip1_SetDst_cols(XVip1 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVip1_WriteReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_DST_COLS_DATA, Data);
}

u32 XVip1_GetDst_cols(XVip1 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVip1_ReadReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_DST_COLS_DATA);
    return Data;
}

void XVip1_InterruptGlobalEnable(XVip1 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVip1_WriteReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_GIE, 1);
}

void XVip1_InterruptGlobalDisable(XVip1 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVip1_WriteReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_GIE, 0);
}

void XVip1_InterruptEnable(XVip1 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVip1_ReadReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_IER);
    XVip1_WriteReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XVip1_InterruptDisable(XVip1 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVip1_ReadReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_IER);
    XVip1_WriteReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XVip1_InterruptClear(XVip1 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVip1_WriteReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XVip1_InterruptGetEnabled(XVip1 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVip1_ReadReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_IER);
}

u32 XVip1_InterruptGetStatus(XVip1 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVip1_ReadReg(InstancePtr->Control_bus_BaseAddress, XVIP1_CONTROL_BUS_ADDR_ISR);
}
