// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xdut.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDut_CfgInitialize(XDut *InstancePtr, XDut_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDut_Set_src_buff(XDut *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDut_WriteReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_SRC_BUFF_DATA, (u32)(Data));
    XDut_WriteReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_SRC_BUFF_DATA + 4, (u32)(Data >> 32));
}

u64 XDut_Get_src_buff(XDut *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDut_ReadReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_SRC_BUFF_DATA);
    Data += (u64)XDut_ReadReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_SRC_BUFF_DATA + 4) << 32;
    return Data;
}

void XDut_Set_src_sz(XDut *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDut_WriteReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_SRC_SZ_DATA, Data);
}

u32 XDut_Get_src_sz(XDut *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDut_ReadReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_SRC_SZ_DATA);
    return Data;
}

void XDut_Set_dst_buff(XDut *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDut_WriteReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_DST_BUFF_DATA, (u32)(Data));
    XDut_WriteReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_DST_BUFF_DATA + 4, (u32)(Data >> 32));
}

u64 XDut_Get_dst_buff(XDut *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDut_ReadReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_DST_BUFF_DATA);
    Data += (u64)XDut_ReadReg(InstancePtr->Control_BaseAddress, XDUT_CONTROL_ADDR_DST_BUFF_DATA + 4) << 32;
    return Data;
}

