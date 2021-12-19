// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xvip1_m.h"

extern XVip1_m_Config XVip1_m_ConfigTable[];

XVip1_m_Config *XVip1_m_LookupConfig(u16 DeviceId) {
	XVip1_m_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XVIP1_M_NUM_INSTANCES; Index++) {
		if (XVip1_m_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XVip1_m_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XVip1_m_Initialize(XVip1_m *InstancePtr, u16 DeviceId) {
	XVip1_m_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XVip1_m_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XVip1_m_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif
