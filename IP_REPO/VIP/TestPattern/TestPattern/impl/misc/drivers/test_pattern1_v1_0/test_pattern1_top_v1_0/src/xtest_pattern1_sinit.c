// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xtest_pattern1.h"

extern XTest_pattern1_Config XTest_pattern1_ConfigTable[];

XTest_pattern1_Config *XTest_pattern1_LookupConfig(u16 DeviceId) {
	XTest_pattern1_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTEST_PATTERN1_NUM_INSTANCES; Index++) {
		if (XTest_pattern1_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTest_pattern1_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTest_pattern1_Initialize(XTest_pattern1 *InstancePtr, u16 DeviceId) {
	XTest_pattern1_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTest_pattern1_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTest_pattern1_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

