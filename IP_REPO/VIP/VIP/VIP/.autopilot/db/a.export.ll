; ModuleID = 'D:/BaiduNetdiskDownload/P10_SD_VGA_m/IP_REPO/VIP/VIP/VIP/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@vip1_m_str = internal unnamed_addr constant [7 x i8] c"vip1_m\00"
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@imag_1_OC_data_strea_2 = internal unnamed_addr constant [24 x i8] c"imag_1.data_stream[0].V\00"
@imag_1_OC_data_strea_1 = internal unnamed_addr constant [24 x i8] c"imag_1.data_stream[1].V\00"
@imag_1_OC_data_strea = internal unnamed_addr constant [24 x i8] c"imag_1.data_stream[2].V\00"
@imag3_0_OC_data_stre_2 = internal unnamed_addr constant [27 x i8] c"imag3_0.data_stream[0].V13\00"
@imag3_0_OC_data_stre_1 = internal unnamed_addr constant [27 x i8] c"imag3_0.data_stream[1].V15\00"
@imag3_0_OC_data_stre = internal unnamed_addr constant [27 x i8] c"imag3_0.data_stream[2].V16\00"
@imag2_0_OC_data_stre_2 = internal unnamed_addr constant [26 x i8] c"imag2_0.data_stream[0].V9\00"
@imag2_0_OC_data_stre_1 = internal unnamed_addr constant [27 x i8] c"imag2_0.data_stream[1].V10\00"
@imag2_0_OC_data_stre = internal unnamed_addr constant [27 x i8] c"imag2_0.data_stream[2].V11\00"
@imag0_0_OC_data_stre_2 = internal unnamed_addr constant [25 x i8] c"imag0_0.data_stream[0].V\00"
@imag0_0_OC_data_stre_1 = internal unnamed_addr constant [25 x i8] c"imag0_0.data_stream[1].V\00"
@imag0_0_OC_data_stre = internal unnamed_addr constant [25 x i8] c"imag0_0.data_stream[2].V\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str6 = private unnamed_addr constant [10 x i8] c"ap_stable\00", align 1
@p_str5 = private unnamed_addr constant [24 x i8] c"-bus_bundle CONTROL_BUS\00", align 1
@p_str42 = private unnamed_addr constant [18 x i8] c"loop_wait_for_eol\00", align 1
@p_str41 = private unnamed_addr constant [20 x i8] c"loop_wait_for_start\00", align 1
@p_str4 = private unnamed_addr constant [10 x i8] c"AXI_SLAVE\00", align 1
@p_str39 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str37 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@p_str35 = private unnamed_addr constant [12 x i8] c"hls_label_4\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str28 = private unnamed_addr constant [12 x i8] c"hls_label_6\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str17 = private unnamed_addr constant [11 x i8] c"loop_width\00", align 1
@p_str16 = private unnamed_addr constant [12 x i8] c"loop_height\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define void @vip1_m(i24* %src_axi0_V_data_V, i3* %src_axi0_V_keep_V, i3* %src_axi0_V_strb_V, i1* %src_axi0_V_user_V, i1* %src_axi0_V_last_V, i1* %src_axi0_V_id_V, i1* %src_axi0_V_dest_V, i24* %dst_axi_V_data_V, i3* %dst_axi_V_keep_V, i3* %dst_axi_V_strb_V, i1* %dst_axi_V_user_V, i1* %dst_axi_V_last_V, i1* %dst_axi_V_id_V, i1* %dst_axi_V_dest_V) {
._crit_edge:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %src_axi0_V_data_V), !map !218
  call void (...)* @_ssdm_op_SpecBitsMap(i3* %src_axi0_V_keep_V), !map !222
  call void (...)* @_ssdm_op_SpecBitsMap(i3* %src_axi0_V_strb_V), !map !226
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %src_axi0_V_user_V), !map !230
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %src_axi0_V_last_V), !map !234
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %src_axi0_V_id_V), !map !238
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %src_axi0_V_dest_V), !map !242
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %dst_axi_V_data_V), !map !246
  call void (...)* @_ssdm_op_SpecBitsMap(i3* %dst_axi_V_keep_V), !map !250
  call void (...)* @_ssdm_op_SpecBitsMap(i3* %dst_axi_V_strb_V), !map !254
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %dst_axi_V_user_V), !map !258
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %dst_axi_V_last_V), !map !262
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %dst_axi_V_id_V), !map !266
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %dst_axi_V_dest_V), !map !270
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @vip1_m_str) nounwind
  %imag0_0_data_stream_s = alloca i8, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([25 x i8]* @imag0_0_OC_data_stre_2, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %imag0_0_data_stream_s, i8* %imag0_0_data_stream_s)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag0_0_data_stream_s, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %imag0_0_data_stream_1 = alloca i8, align 1
  %empty_8 = call i32 (...)* @_ssdm_op_SpecChannel([25 x i8]* @imag0_0_OC_data_stre_1, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %imag0_0_data_stream_1, i8* %imag0_0_data_stream_1)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag0_0_data_stream_1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %imag0_0_data_stream_2 = alloca i8, align 1
  %empty_9 = call i32 (...)* @_ssdm_op_SpecChannel([25 x i8]* @imag0_0_OC_data_stre, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %imag0_0_data_stream_2, i8* %imag0_0_data_stream_2)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag0_0_data_stream_2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %imag_1_data_stream_0 = alloca i8, align 1
  %empty_10 = call i32 (...)* @_ssdm_op_SpecChannel([24 x i8]* @imag_1_OC_data_strea_2, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %imag_1_data_stream_0, i8* %imag_1_data_stream_0)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag_1_data_stream_0, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %imag_1_data_stream_1 = alloca i8, align 1
  %empty_11 = call i32 (...)* @_ssdm_op_SpecChannel([24 x i8]* @imag_1_OC_data_strea_1, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %imag_1_data_stream_1, i8* %imag_1_data_stream_1)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag_1_data_stream_1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %imag_1_data_stream_2 = alloca i8, align 1
  %empty_12 = call i32 (...)* @_ssdm_op_SpecChannel([24 x i8]* @imag_1_OC_data_strea, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %imag_1_data_stream_2, i8* %imag_1_data_stream_2)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag_1_data_stream_2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i24* %src_axi0_V_data_V, i3* %src_axi0_V_keep_V, i3* %src_axi0_V_strb_V, i1* %src_axi0_V_user_V, i1* %src_axi0_V_last_V, i1* %src_axi0_V_id_V, i1* %src_axi0_V_dest_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i24* %dst_axi_V_data_V, i3* %dst_axi_V_keep_V, i3* %dst_axi_V_strb_V, i1* %dst_axi_V_user_V, i1* %dst_axi_V_last_V, i1* %dst_axi_V_id_V, i1* %dst_axi_V_dest_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 480, [1 x i8]* @p_str, [10 x i8]* @p_str4, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecIFCore(i32 640, [1 x i8]* @p_str, [10 x i8]* @p_str4, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecIFCore(i32 960, [1 x i8]* @p_str, [10 x i8]* @p_str4, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecIFCore(i32 1280, [1 x i8]* @p_str, [10 x i8]* @p_str4, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str, [10 x i8]* @p_str4, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecInterface(i32 480, [10 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 640, [10 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 960, [10 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 1280, [10 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call fastcc void @AXIvideo2Mat(i24* %src_axi0_V_data_V, i3* %src_axi0_V_keep_V, i3* %src_axi0_V_strb_V, i1* %src_axi0_V_user_V, i1* %src_axi0_V_last_V, i1* %src_axi0_V_id_V, i1* %src_axi0_V_dest_V, i8* %imag0_0_data_stream_s, i8* %imag0_0_data_stream_1, i8* %imag0_0_data_stream_2)
  call fastcc void @Loop_loop_height_pro(i8* %imag_1_data_stream_0, i8* %imag_1_data_stream_1, i8* %imag_1_data_stream_2, i8* %imag0_0_data_stream_s, i8* %imag0_0_data_stream_1, i8* %imag0_0_data_stream_2)
  call fastcc void @Mat2AXIvideo(i8* %imag_1_data_stream_0, i8* %imag_1_data_stream_1, i8* %imag_1_data_stream_2, i24* %dst_axi_V_data_V, i3* %dst_axi_V_keep_V, i3* %dst_axi_V_strb_V, i1* %dst_axi_V_user_V, i1* %dst_axi_V_last_V, i1* %dst_axi_V_id_V, i1* %dst_axi_V_dest_V)
  ret void
}

declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_Write.axis.volatile.i24P.i3P.i3P.i1P.i1P.i1P.i1P(i24*, i3*, i3*, i1*, i1*, i1*, i1*, i24, i3, i3, i1, i1, i1, i1) {
entry:
  store i24 %7, i24* %0
  store i3 %8, i3* %1
  store i3 %9, i3* %2
  store i1 %10, i1* %3
  store i1 %11, i1* %4
  store i1 %12, i1* %5
  store i1 %13, i1* %6
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecProtocol(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak { i24, i3, i3, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i24P.i3P.i3P.i1P.i1P.i1P.i1P(i24*, i3*, i3*, i1*, i1*, i1*, i1*) {
entry:
  %empty = load i24* %0
  %empty_13 = load i3* %1
  %empty_14 = load i3* %2
  %empty_15 = load i1* %3
  %empty_16 = load i1* %4
  %empty_17 = load i1* %5
  %empty_18 = load i1* %6
  %mrv_0 = insertvalue { i24, i3, i3, i1, i1, i1, i1 } undef, i24 %empty, 0
  %mrv1 = insertvalue { i24, i3, i3, i1, i1, i1, i1 } %mrv_0, i3 %empty_13, 1
  %mrv2 = insertvalue { i24, i3, i3, i1, i1, i1, i1 } %mrv1, i3 %empty_14, 2
  %mrv3 = insertvalue { i24, i3, i3, i1, i1, i1, i1 } %mrv2, i1 %empty_15, 3
  %mrv4 = insertvalue { i24, i3, i3, i1, i1, i1, i1 } %mrv3, i1 %empty_16, 4
  %mrv5 = insertvalue { i24, i3, i3, i1, i1, i1, i1 } %mrv4, i1 %empty_17, 5
  %mrv6 = insertvalue { i24, i3, i3, i1, i1, i1, i1 } %mrv5, i1 %empty_18, 6
  ret { i24, i3, i3, i1, i1, i1, i1 } %mrv6
}

define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2)
  %empty_19 = trunc i24 %empty to i8
  ret i8 %empty_19
}

define weak i8 @_ssdm_op_PartSelect.i8.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_20 = trunc i22 %empty to i8
  ret i8 %empty_20
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %1 to i16
  %empty_21 = zext i8 %2 to i16
  %empty_22 = shl i16 %empty, 8
  %empty_23 = or i16 %empty_22, %empty_21
  %empty_24 = zext i8 %0 to i24
  %empty_25 = zext i16 %empty_23 to i24
  %empty_26 = shl i24 %empty_24, 16
  %empty_27 = or i24 %empty_26, %empty_25
  ret i24 %empty_27
}

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i8 @_autotb_FifoRead_i8(i8*)

define internal fastcc void @Mat2AXIvideo(i8* %img_data_stream_0_V, i8* %img_data_stream_1_V, i8* %img_data_stream_2_V, i24* %AXI_video_strm_V_data_V, i3* %AXI_video_strm_V_keep_V, i3* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) {
._crit_edge:
  %tmp_user_V = alloca i1
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_2_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i24* %AXI_video_strm_V_data_V, i3* %AXI_video_strm_V_keep_V, i3* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  store i1 true, i1* %tmp_user_V
  br label %0

; <label>:0                                       ; preds = %3, %._crit_edge
  %t_V = phi i10 [ 0, %._crit_edge ], [ %i_V, %3 ]
  %exitcond1 = icmp eq i10 %t_V, -64
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 960, i64 960, i64 960)
  %i_V = add i10 %t_V, 1
  br i1 %exitcond1, label %4, label %1

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str16) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str16)
  br label %2

; <label>:2                                       ; preds = %"operator>>.exit", %1
  %t_V_1 = phi i11 [ 0, %1 ], [ %j_V, %"operator>>.exit" ]
  %exitcond = icmp eq i11 %t_V_1, -768
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1280, i64 1280, i64 1280)
  %j_V = add i11 %t_V_1, 1
  br i1 %exitcond, label %3, label %"operator>>.exit"

"operator>>.exit":                                ; preds = %2
  %tmp_user_V_load = load i1* %tmp_user_V
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str17) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str17)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %axi_last_V = icmp eq i11 %t_V_1, -769
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str35)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str) nounwind
  %tmp_5 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_0_V)
  %tmp_6 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_1_V)
  %tmp_4 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_2_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str35, i32 %tmp_1)
  %tmp_data_V = call i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8 %tmp_4, i8 %tmp_6, i8 %tmp_5)
  call void @_ssdm_op_Write.axis.volatile.i24P.i3P.i3P.i1P.i1P.i1P.i1P(i24* %AXI_video_strm_V_data_V, i3* %AXI_video_strm_V_keep_V, i3* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i24 %tmp_data_V, i3 -1, i3 undef, i1 %tmp_user_V_load, i1 %axi_last_V, i1 undef, i1 undef)
  %empty_28 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str17, i32 %tmp_s)
  store i1 false, i1* %tmp_user_V
  br label %2

; <label>:3                                       ; preds = %2
  %empty_29 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str16, i32 %tmp)
  br label %0

; <label>:4                                       ; preds = %0
  ret void
}

define internal fastcc void @Loop_loop_height_pro(i8* %imag_1_data_stream_0_V, i8* %imag_1_data_stream_1_V, i8* %imag_1_data_stream_2_V, i8* %imag0_0_data_stream_0_V, i8* %imag0_0_data_stream_1_V, i8* %imag0_0_data_stream_2_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag_1_data_stream_2_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag_1_data_stream_1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag_1_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag0_0_data_stream_2_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag0_0_data_stream_1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag0_0_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %imag2_0_data_stream_s = alloca i8, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @imag2_0_OC_data_stre_2, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 640, i32 640, i8* %imag2_0_data_stream_s, i8* %imag2_0_data_stream_s)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag2_0_data_stream_s, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %imag2_0_data_stream_1 = alloca i8, align 1
  %empty_30 = call i32 (...)* @_ssdm_op_SpecChannel([27 x i8]* @imag2_0_OC_data_stre_1, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 640, i32 640, i8* %imag2_0_data_stream_1, i8* %imag2_0_data_stream_1)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag2_0_data_stream_1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %imag2_0_data_stream_2 = alloca i8, align 1
  %empty_31 = call i32 (...)* @_ssdm_op_SpecChannel([27 x i8]* @imag2_0_OC_data_stre, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 640, i32 640, i8* %imag2_0_data_stream_2, i8* %imag2_0_data_stream_2)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag2_0_data_stream_2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %imag3_0_data_stream_s = alloca i8, align 1
  %empty_32 = call i32 (...)* @_ssdm_op_SpecChannel([27 x i8]* @imag3_0_OC_data_stre_2, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 640, i32 640, i8* %imag3_0_data_stream_s, i8* %imag3_0_data_stream_s)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag3_0_data_stream_s, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %imag3_0_data_stream_1 = alloca i8, align 1
  %empty_33 = call i32 (...)* @_ssdm_op_SpecChannel([27 x i8]* @imag3_0_OC_data_stre_1, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 640, i32 640, i8* %imag3_0_data_stream_1, i8* %imag3_0_data_stream_1)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag3_0_data_stream_1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %imag3_0_data_stream_2 = alloca i8, align 1
  %empty_34 = call i32 (...)* @_ssdm_op_SpecChannel([27 x i8]* @imag3_0_OC_data_stre, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 640, i32 640, i8* %imag3_0_data_stream_2, i8* %imag3_0_data_stream_2)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag3_0_data_stream_2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %0

.exitStub:                                        ; preds = %0
  ret void

; <label>:0                                       ; preds = %1, %newFuncRoot
  %t_V = phi i10 [ 0, %newFuncRoot ], [ %i_V, %1 ]
  %exitcond1 = icmp eq i10 %t_V, -64
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 960, i64 960, i64 960)
  %i_V = add i10 %t_V, 1
  br i1 %exitcond1, label %.exitStub, label %3

; <label>:1                                       ; preds = %2
  %empty_35 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str16, i32 %tmp)
  br label %0

; <label>:2                                       ; preds = %"operator<<.exit1", %3
  %t_V_1 = phi i11 [ 0, %3 ], [ %j_V, %"operator<<.exit1" ]
  %exitcond = icmp eq i11 %t_V_1, -768
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1280, i64 1280, i64 1280)
  %j_V = add i11 %t_V_1, 1
  br i1 %exitcond, label %1, label %4

; <label>:3                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str16) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str16)
  %tmp_5 = icmp ult i10 %t_V, 480
  br label %2

"operator<<.exit1":                               ; preds = %_ifconv, %5, %"operator>>.exit300"
  %tmp_22 = phi i8 [ %tmp_14, %"operator>>.exit300" ], [ %tmp_9, %_ifconv ], [ %s_val_0, %5 ]
  %tmp_23 = phi i8 [ %tmp_15, %"operator>>.exit300" ], [ %tmp_6, %_ifconv ], [ %s_val_0, %5 ]
  %tmp_24 = phi i8 [ %tmp_16, %"operator>>.exit300" ], [ %tmp_3, %_ifconv ], [ %s_val_0, %5 ]
  %tmp_26 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str37)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %imag_1_data_stream_0_V, i8 %tmp_22)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %imag_1_data_stream_1_V, i8 %tmp_23)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %imag_1_data_stream_2_V, i8 %tmp_24)
  %empty_36 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str37, i32 %tmp_26)
  %empty_37 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str17, i32 %tmp_1)
  br label %2

"operator>>.exit300":                             ; preds = %4
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str39)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str) nounwind
  %tmp_14 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %imag0_0_data_stream_0_V)
  %tmp_15 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %imag0_0_data_stream_1_V)
  %tmp_16 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %imag0_0_data_stream_2_V)
  %empty_38 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str39, i32 %tmp_2)
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str28)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %imag2_0_data_stream_s, i8 %tmp_14)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %imag2_0_data_stream_1, i8 %tmp_15)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %imag2_0_data_stream_2, i8 %tmp_16)
  %empty_39 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str28, i32 %tmp_4)
  br label %"operator<<.exit1"

; <label>:4                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str17) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str17)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_7 = icmp ult i11 %t_V_1, 640
  %or_cond = and i1 %tmp_5, %tmp_7
  br i1 %or_cond, label %"operator>>.exit300", label %7

; <label>:5                                       ; preds = %"operator>>.exit", %"operator>>.exit292"
  %storemerge256_in_in = phi i10 [ %tmp_20, %"operator>>.exit" ], [ %tmp_13, %"operator>>.exit292" ]
  %zext_cast = zext i10 %storemerge256_in_in to i22
  %mul = mul i22 %zext_cast, 1366
  %s_val_0 = call i8 @_ssdm_op_PartSelect.i8.i22.i32.i32(i22 %mul, i32 12, i32 19)
  br label %"operator<<.exit1"

"operator>>.exit292":                             ; preds = %6
  %tmp_33 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %imag2_0_data_stream_s)
  %tmp_15_cast = zext i8 %tmp_33 to i9
  %tmp_34 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %imag2_0_data_stream_1)
  %tmp_16_cast = zext i8 %tmp_34 to i9
  %tmp_12 = add i9 %tmp_16_cast, %tmp_15_cast
  %tmp_18_cast = zext i9 %tmp_12 to i10
  %tmp_25 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %imag2_0_data_stream_2)
  %tmp_17_cast = zext i8 %tmp_25 to i10
  %tmp_13 = add i10 %tmp_18_cast, %tmp_17_cast
  %empty_40 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str39, i32 %tmp_11)
  br label %5

; <label>:6                                       ; preds = %7
  %tmp_11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str39)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str) nounwind
  br i1 %tmp_5, label %"operator>>.exit292", label %"operator>>.exit"

; <label>:7                                       ; preds = %4
  br i1 %tmp_7, label %_ifconv, label %6

"operator>>.exit":                                ; preds = %6
  %tmp_35 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %imag3_0_data_stream_s)
  %tmp_22_cast = zext i8 %tmp_35 to i9
  %tmp_36 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %imag3_0_data_stream_1)
  %tmp_23_cast = zext i8 %tmp_36 to i9
  %tmp_18 = add i9 %tmp_23_cast, %tmp_22_cast
  %tmp_25_cast = zext i9 %tmp_18 to i10
  %tmp_32 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %imag3_0_data_stream_2)
  %tmp_24_cast = zext i8 %tmp_32 to i10
  %tmp_20 = add i10 %tmp_25_cast, %tmp_24_cast
  %empty_41 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str39, i32 %tmp_11)
  br label %5

_ifconv:                                          ; preds = %7
  %tmp_s = icmp ult i11 %t_V_1, 160
  %tmp_8 = icmp ult i11 %t_V_1, 320
  %not_tmp_s = icmp ugt i11 %t_V_1, 479
  %not_tmp_1 = xor i1 %tmp_8, true
  %p_not_tmp_s = and i1 %not_tmp_s, %not_tmp_1
  %p_not_tmp_1 = or i1 %tmp_8, %not_tmp_s
  %s_val_0_3 = or i1 %tmp_s, %p_not_tmp_s
  %not_tmp_2 = xor i1 %tmp_s, true
  %s_val_1 = and i1 %p_not_tmp_1, %not_tmp_2
  %s_val_2 = and i1 %not_tmp_2, %not_tmp_1
  %tmp_3 = select i1 %s_val_2, i8 -1, i8 0
  %tmp_6 = select i1 %s_val_1, i8 -1, i8 0
  %tmp_9 = select i1 %s_val_0_3, i8 -1, i8 0
  %tmp_10 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str28)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %imag3_0_data_stream_s, i8 %tmp_9)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %imag3_0_data_stream_1, i8 %tmp_6)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %imag3_0_data_stream_2, i8 %tmp_3)
  %empty_42 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str28, i32 %tmp_10)
  br label %"operator<<.exit1"
}

define internal fastcc void @Block_._crit_edge151() readnone {
newFuncRoot:
  ret void
}

define internal fastcc void @AXIvideo2Mat(i24* %AXI_video_strm_V_data_V, i3* %AXI_video_strm_V_keep_V, i3* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i8* %img_data_stream_0_V, i8* %img_data_stream_1_V, i8* %img_data_stream_2_V) {
._crit_edge:
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_2_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i24* %AXI_video_strm_V_data_V, i3* %AXI_video_strm_V_keep_V, i3* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  br label %._crit_edge1

._crit_edge1:                                     ; preds = %._crit_edge1, %._crit_edge
  call void (...)* @_ssdm_op_SpecLoopName([20 x i8]* @p_str41) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([20 x i8]* @p_str41)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 0, i32 0, [1 x i8]* @p_str) nounwind
  %empty = call { i24, i3, i3, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i24P.i3P.i3P.i1P.i1P.i1P.i1P(i24* %AXI_video_strm_V_data_V, i3* %AXI_video_strm_V_keep_V, i3* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V = extractvalue { i24, i3, i3, i1, i1, i1, i1 } %empty, 0
  %tmp_user_V = extractvalue { i24, i3, i3, i1, i1, i1, i1 } %empty, 3
  %tmp_last_V = extractvalue { i24, i3, i3, i1, i1, i1, i1 } %empty, 4
  %empty_43 = call i32 (...)* @_ssdm_op_SpecRegionEnd([20 x i8]* @p_str41, i32 %tmp)
  br i1 %tmp_user_V, label %.preheader186.preheader, label %._crit_edge1

.preheader186.preheader:                          ; preds = %._crit_edge1
  %sof_1 = alloca i1
  store i1 true, i1* %sof_1
  br label %.preheader186

.preheader186:                                    ; preds = %.preheader186.preheader, %5
  %axi_last_V1 = phi i1 [ %axi_last_V_3, %5 ], [ %tmp_last_V, %.preheader186.preheader ]
  %axi_data_V1 = phi i24 [ %axi_data_V_3, %5 ], [ %tmp_data_V, %.preheader186.preheader ]
  %t_V = phi i9 [ %i_V, %5 ], [ 0, %.preheader186.preheader ]
  %exitcond2 = icmp eq i9 %t_V, -32
  %i_V = add i9 %t_V, 1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 480, i64 480, i64 480)
  br i1 %exitcond2, label %6, label %0

; <label>:0                                       ; preds = %.preheader186
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str16) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str16)
  br label %1

; <label>:1                                       ; preds = %._crit_edge2, %0
  %eol_1 = phi i1 [ %axi_last_V1, %0 ], [ %axi_last_V_2, %._crit_edge2 ]
  %axi_data_V_1 = phi i24 [ %axi_data_V1, %0 ], [ %p_Val2_s, %._crit_edge2 ]
  %t_V_2 = phi i10 [ 0, %0 ], [ %j_V, %._crit_edge2 ]
  %eol = phi i1 [ false, %0 ], [ %axi_last_V_2, %._crit_edge2 ]
  %exitcond = icmp eq i10 %t_V_2, -384
  %j_V = add i10 %t_V_2, 1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 640, i64 640, i64 640)
  br i1 %exitcond, label %.preheader.preheader, label %2

.preheader.preheader:                             ; preds = %1
  br label %.preheader

; <label>:2                                       ; preds = %1
  %sof_1_load = load i1* %sof_1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str17) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str17)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %brmerge = or i1 %sof_1_load, %eol
  br i1 %brmerge, label %._crit_edge2, label %3

; <label>:3                                       ; preds = %2
  %empty_44 = call { i24, i3, i3, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i24P.i3P.i3P.i1P.i1P.i1P.i1P(i24* %AXI_video_strm_V_data_V, i3* %AXI_video_strm_V_keep_V, i3* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V_1 = extractvalue { i24, i3, i3, i1, i1, i1, i1 } %empty_44, 0
  %tmp_last_V_1 = extractvalue { i24, i3, i3, i1, i1, i1, i1 } %empty_44, 4
  br label %._crit_edge2

._crit_edge2:                                     ; preds = %3, %2
  %axi_last_V_2 = phi i1 [ %tmp_last_V_1, %3 ], [ %eol_1, %2 ]
  %p_Val2_s = phi i24 [ %tmp_data_V_1, %3 ], [ %axi_data_V_1, %2 ]
  %tmp_37 = trunc i24 %p_Val2_s to i8
  %tmp_5 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %p_Val2_s, i32 8, i32 15)
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %p_Val2_s, i32 16, i32 23)
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str28)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_0_V, i8 %tmp_37)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_1_V, i8 %tmp_5)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_2_V, i8 %tmp_6)
  %empty_45 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str28, i32 %tmp_7)
  %empty_46 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str17, i32 %tmp_2)
  store i1 false, i1* %sof_1
  br label %1

.preheader:                                       ; preds = %.preheader.preheader, %4
  %axi_last_V_3 = phi i1 [ %tmp_last_V_2, %4 ], [ %eol_1, %.preheader.preheader ]
  %axi_data_V_3 = phi i24 [ %tmp_data_V_2, %4 ], [ %axi_data_V_1, %.preheader.preheader ]
  %eol_2 = phi i1 [ %tmp_last_V_2, %4 ], [ %eol, %.preheader.preheader ]
  br i1 %eol_2, label %5, label %4

; <label>:4                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([18 x i8]* @p_str42) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @p_str42)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 0, i32 0, [1 x i8]* @p_str) nounwind
  %empty_47 = call { i24, i3, i3, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i24P.i3P.i3P.i1P.i1P.i1P.i1P(i24* %AXI_video_strm_V_data_V, i3* %AXI_video_strm_V_keep_V, i3* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V_2 = extractvalue { i24, i3, i3, i1, i1, i1, i1 } %empty_47, 0
  %tmp_last_V_2 = extractvalue { i24, i3, i3, i1, i1, i1, i1 } %empty_47, 4
  %empty_48 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @p_str42, i32 %tmp_3)
  br label %.preheader

; <label>:5                                       ; preds = %.preheader
  %empty_49 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str16, i32 %tmp_s)
  br label %.preheader186

; <label>:6                                       ; preds = %.preheader186
  ret void
}

!opencl.kernels = !{!0, !7, !13, !19, !25, !28, !30, !33, !39, !45, !47, !47, !50, !52, !58, !58, !60, !39, !39, !39, !63, !58, !58, !66, !39, !69, !69, !71, !73, !76, !78, !78, !39, !79, !79, !39, !39, !76, !78, !78, !39, !39, !39, !50, !50, !47, !39, !39, !81, !84, !84, !87, !39, !39, !39, !39, !39, !39, !39, !39, !78, !78, !89, !39, !39, !39, !39, !39, !91, !91, !93, !39, !58, !58, !39, !95, !39, !39, !39, !97, !97, !99, !99, !101, !39, !39, !39, !103, !58, !58, !39, !105, !107, !107, !109, !109, !111, !39, !39, !39, !39, !39, !39, !113, !39, !39, !39, !39, !115, !115, !118, !39, !39, !39, !120, !123, !125, !127, !128, !128, !131, !133, !134, !137, !39, !139, !127, !141, !141, !39, !39, !143, !39, !39, !145, !148, !150, !141, !141, !39, !39, !151, !39, !153, !154, !39, !39, !39, !107, !107, !156, !156, !158, !161, !164, !166, !166, !39, !168, !171, !171, !141, !141, !39, !175, !177, !39, !179, !182, !184, !185, !39, !39, !107, !107, !187, !187, !189, !141, !141, !39, !191, !39, !39, !39, !39, !39, !39, !39, !39, !128, !128, !177, !39, !193, !131, !133, !194, !141, !141, !39, !39, !39, !39, !194, !184, !185, !39, !39, !39, !107, !107, !187, !187, !193, !125, !127, !196, !199, !201, !39, !39, !189, !39, !203, !205, !206, !207, !207, !207, !209, !39, !39, !39, !39, !207, !207, !207, !39, !39, !39, !39, !39}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!211}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"AXI_STREAM &", metadata !"AXI_STREAM &", metadata !"AXI_STREAM &", metadata !"AXI_STREAM &", metadata !"AXI_STREAM &", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"src_axi0", metadata !"src_axi1", metadata !"src_axi2", metadata !"src_axi3", metadata !"dst_axi", metadata !"src_rows", metadata !"src_cols", metadata !"dst_rows", metadata !"dst_cols"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"AXI_STREAM &", metadata !"AXI_STREAM &", metadata !"AXI_STREAM &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"src_axi0", metadata !"src_axi1", metadata !"dst_axi"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"AXI_STREAM &", metadata !"AXI_STREAM &"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"src_axi0", metadata !"dst_axi"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"AXI_STREAM &", metadata !"AXI_STREAM &", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"src_axi0", metadata !"dst_axi", metadata !"src_rows", metadata !"src_cols", metadata !"dst_rows", metadata !"dst_cols"}
!25 = metadata !{null, metadata !14, metadata !15, metadata !26, metadata !17, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"Mat<480, 640, 4096> &", metadata !"Mat<480, 640, 4096> &"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"_src", metadata !"_dst"}
!28 = metadata !{null, metadata !14, metadata !15, metadata !29, metadata !17, metadata !27, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"Scalar<3, uchar> &", metadata !"Scalar<3, uchar> &"}
!30 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !32, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"Scalar<3, uchar> &", metadata !"uchar &", metadata !"Scalar<3, typename CvtColor_traits<uchar>::COEFF_T>"}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"_src", metadata !"result", metadata !"par"}
!33 = metadata !{null, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !6}
!34 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!35 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<35, 13, 5, 3, 0>"}
!37 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!39 = metadata !{null, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !6}
!40 = metadata !{metadata !"kernel_arg_addr_space"}
!41 = metadata !{metadata !"kernel_arg_access_qual"}
!42 = metadata !{metadata !"kernel_arg_type"}
!43 = metadata !{metadata !"kernel_arg_type_qual"}
!44 = metadata !{metadata !"kernel_arg_name"}
!45 = metadata !{null, metadata !34, metadata !35, metadata !46, metadata !37, metadata !38, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<35, 13, (enum ap_q_mode)5, (enum ap_o_mode)3>"}
!47 = metadata !{null, metadata !34, metadata !35, metadata !48, metadata !37, metadata !49, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<35, 13, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!49 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!50 = metadata !{null, metadata !34, metadata !35, metadata !51, metadata !37, metadata !49, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<35, 13, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!52 = metadata !{null, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !6}
!53 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!54 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!56 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"underflow", metadata !"overflow", metadata !"lD", metadata !"sign"}
!58 = metadata !{null, metadata !34, metadata !35, metadata !59, metadata !37, metadata !49, metadata !6}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!60 = metadata !{null, metadata !14, metadata !15, metadata !61, metadata !17, metadata !62, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, false> &", metadata !"int"}
!62 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!63 = metadata !{null, metadata !34, metadata !35, metadata !64, metadata !37, metadata !65, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, false> &"}
!65 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!66 = metadata !{null, metadata !8, metadata !9, metadata !67, metadata !11, metadata !68, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!68 = metadata !{metadata !"kernel_arg_name", metadata !"qb", metadata !"r", metadata !"s"}
!69 = metadata !{null, metadata !34, metadata !35, metadata !70, metadata !37, metadata !49, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<8, 8, (enum ap_q_mode)0, (enum ap_o_mode)0, 0> &"}
!71 = metadata !{null, metadata !34, metadata !35, metadata !72, metadata !37, metadata !49, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, false, (enum ap_q_mode)0, (enum ap_o_mode)0, 0> &"}
!73 = metadata !{null, metadata !34, metadata !35, metadata !74, metadata !37, metadata !75, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!75 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!76 = metadata !{null, metadata !34, metadata !35, metadata !77, metadata !37, metadata !65, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 11, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!78 = metadata !{null, metadata !34, metadata !35, metadata !77, metadata !37, metadata !49, metadata !6}
!79 = metadata !{null, metadata !34, metadata !35, metadata !80, metadata !37, metadata !49, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<34, 12, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!81 = metadata !{null, metadata !14, metadata !15, metadata !82, metadata !17, metadata !83, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<25, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &", metadata !"uchar"}
!83 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!84 = metadata !{null, metadata !34, metadata !35, metadata !85, metadata !37, metadata !86, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"uchar"}
!86 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!87 = metadata !{null, metadata !34, metadata !35, metadata !88, metadata !37, metadata !65, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!89 = metadata !{null, metadata !34, metadata !35, metadata !90, metadata !37, metadata !49, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<33, 11, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!91 = metadata !{null, metadata !34, metadata !35, metadata !92, metadata !37, metadata !38, metadata !6}
!92 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!93 = metadata !{null, metadata !34, metadata !35, metadata !92, metadata !37, metadata !94, metadata !6}
!94 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!95 = metadata !{null, metadata !14, metadata !15, metadata !96, metadata !17, metadata !62, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!97 = metadata !{null, metadata !34, metadata !35, metadata !98, metadata !37, metadata !49, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!99 = metadata !{null, metadata !34, metadata !35, metadata !100, metadata !37, metadata !49, metadata !6}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!101 = metadata !{null, metadata !34, metadata !35, metadata !102, metadata !37, metadata !65, metadata !6}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!103 = metadata !{null, metadata !14, metadata !15, metadata !104, metadata !17, metadata !83, metadata !6}
!104 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!105 = metadata !{null, metadata !14, metadata !15, metadata !106, metadata !17, metadata !62, metadata !6}
!106 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!107 = metadata !{null, metadata !34, metadata !35, metadata !108, metadata !37, metadata !49, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!109 = metadata !{null, metadata !34, metadata !35, metadata !110, metadata !37, metadata !49, metadata !6}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!111 = metadata !{null, metadata !34, metadata !35, metadata !112, metadata !37, metadata !65, metadata !6}
!112 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!113 = metadata !{null, metadata !34, metadata !35, metadata !92, metadata !37, metadata !114, metadata !6}
!114 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!115 = metadata !{null, metadata !8, metadata !9, metadata !116, metadata !11, metadata !117, metadata !6}
!116 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<25, 3, 5, 3, 0>", metadata !"struct ap_fixed<25, 3, 5, 3, 0>", metadata !"struct ap_fixed<25, 3, 5, 3, 0>"}
!117 = metadata !{metadata !"kernel_arg_name", metadata !"v0", metadata !"v1", metadata !"v2"}
!118 = metadata !{null, metadata !34, metadata !35, metadata !119, metadata !37, metadata !49, metadata !6}
!119 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<25, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!120 = metadata !{null, metadata !8, metadata !9, metadata !121, metadata !11, metadata !122, metadata !6}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"Mat<480, 640, 4096> &", metadata !"Mat<480, 640, 4096> &", metadata !"Mat<480, 640, 4096> &"}
!122 = metadata !{metadata !"kernel_arg_name", metadata !"src", metadata !"dst1", metadata !"dst2"}
!123 = metadata !{null, metadata !34, metadata !35, metadata !85, metadata !37, metadata !124, metadata !6}
!124 = metadata !{metadata !"kernel_arg_name", metadata !"value"}
!125 = metadata !{null, metadata !14, metadata !15, metadata !126, metadata !17, metadata !62, metadata !6}
!126 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"int"}
!127 = metadata !{null, metadata !34, metadata !35, metadata !108, metadata !37, metadata !65, metadata !6}
!128 = metadata !{null, metadata !34, metadata !35, metadata !129, metadata !37, metadata !130, metadata !6}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"Scalar<((((4096) & ((512 - 1) << 11)) >> 11) + 1), typename Type<((4096) & ((1 << 11) - 1))>::name>"}
!130 = metadata !{metadata !"kernel_arg_name", metadata !"s"}
!131 = metadata !{null, metadata !34, metadata !35, metadata !59, metadata !37, metadata !132, metadata !6}
!132 = metadata !{metadata !"kernel_arg_name", metadata !""}
!133 = metadata !{null, metadata !34, metadata !35, metadata !100, metadata !37, metadata !65, metadata !6}
!134 = metadata !{null, metadata !34, metadata !35, metadata !135, metadata !37, metadata !136, metadata !6}
!135 = metadata !{metadata !"kernel_arg_type", metadata !"const uchar &"}
!136 = metadata !{metadata !"kernel_arg_name", metadata !"wdata"}
!137 = metadata !{null, metadata !34, metadata !35, metadata !135, metadata !37, metadata !138, metadata !6}
!138 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!139 = metadata !{null, metadata !14, metadata !15, metadata !140, metadata !17, metadata !62, metadata !6}
!140 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"int"}
!141 = metadata !{null, metadata !34, metadata !35, metadata !59, metadata !37, metadata !142, metadata !6}
!142 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!143 = metadata !{null, metadata !34, metadata !35, metadata !144, metadata !37, metadata !65, metadata !6}
!144 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<5> &"}
!145 = metadata !{null, metadata !14, metadata !15, metadata !146, metadata !17, metadata !147, metadata !6}
!146 = metadata !{metadata !"kernel_arg_type", metadata !"Mat<960, 1280, 4096> &", metadata !"stream<ap_axiu<24, 1, 1, 1> > &"}
!147 = metadata !{metadata !"kernel_arg_name", metadata !"img", metadata !"AXI_video_strm"}
!148 = metadata !{null, metadata !34, metadata !35, metadata !149, metadata !37, metadata !136, metadata !6}
!149 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axiu<24, 1, 1, 1> &"}
!150 = metadata !{null, metadata !34, metadata !35, metadata !149, metadata !37, metadata !138, metadata !6}
!151 = metadata !{null, metadata !34, metadata !35, metadata !152, metadata !37, metadata !65, metadata !6}
!152 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<3> &"}
!153 = metadata !{null, metadata !14, metadata !15, metadata !140, metadata !17, metadata !83, metadata !6}
!154 = metadata !{null, metadata !14, metadata !15, metadata !155, metadata !17, metadata !62, metadata !6}
!155 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"const ap_int_base<32, true> &"}
!156 = metadata !{null, metadata !34, metadata !35, metadata !157, metadata !37, metadata !49, metadata !6}
!157 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &"}
!158 = metadata !{null, metadata !53, metadata !54, metadata !159, metadata !56, metadata !160, metadata !6}
!159 = metadata !{metadata !"kernel_arg_type", metadata !"ap_axiu<24, 1, 1, 1> &", metadata !"int", metadata !"int", metadata !"uchar"}
!160 = metadata !{metadata !"kernel_arg_name", metadata !"axi", metadata !"start", metadata !"w", metadata !"val"}
!161 = metadata !{null, metadata !53, metadata !54, metadata !162, metadata !56, metadata !163, metadata !6}
!162 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<24> &", metadata !"int", metadata !"int", metadata !"uchar"}
!163 = metadata !{metadata !"kernel_arg_name", metadata !"pix", metadata !"start", metadata !"w", metadata !"val"}
!164 = metadata !{null, metadata !34, metadata !35, metadata !165, metadata !37, metadata !142, metadata !6}
!165 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!166 = metadata !{null, metadata !34, metadata !35, metadata !167, metadata !37, metadata !49, metadata !6}
!167 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong"}
!168 = metadata !{null, metadata !14, metadata !15, metadata !169, metadata !17, metadata !170, metadata !6}
!169 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!170 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!171 = metadata !{null, metadata !172, metadata !9, metadata !173, metadata !11, metadata !174, metadata !6}
!172 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!173 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, false>*", metadata !"int", metadata !"int"}
!174 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!175 = metadata !{null, metadata !34, metadata !35, metadata !176, metadata !37, metadata !65, metadata !6}
!176 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<24> &"}
!177 = metadata !{null, metadata !34, metadata !35, metadata !178, metadata !37, metadata !130, metadata !6}
!178 = metadata !{metadata !"kernel_arg_type", metadata !"Scalar<((((4096) & ((512 - 1) << 11)) >> 11) + 1), typename Type<((4096) & ((1 << 11) - 1))>::name> &"}
!179 = metadata !{null, metadata !34, metadata !35, metadata !180, metadata !37, metadata !181, metadata !6}
!180 = metadata !{metadata !"kernel_arg_type", metadata !"uchar &"}
!181 = metadata !{metadata !"kernel_arg_name", metadata !"rdata"}
!182 = metadata !{null, metadata !34, metadata !35, metadata !180, metadata !37, metadata !183, metadata !6}
!183 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!184 = metadata !{null, metadata !14, metadata !15, metadata !126, metadata !17, metadata !83, metadata !6}
!185 = metadata !{null, metadata !14, metadata !15, metadata !186, metadata !17, metadata !62, metadata !6}
!186 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<32, true> &"}
!187 = metadata !{null, metadata !34, metadata !35, metadata !188, metadata !37, metadata !49, metadata !6}
!188 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!189 = metadata !{null, metadata !34, metadata !35, metadata !190, metadata !37, metadata !65, metadata !6}
!190 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<34, true> &"}
!191 = metadata !{null, metadata !34, metadata !35, metadata !192, metadata !37, metadata !65, metadata !6}
!192 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!193 = metadata !{null, metadata !34, metadata !35, metadata !188, metadata !37, metadata !65, metadata !6}
!194 = metadata !{null, metadata !34, metadata !35, metadata !195, metadata !37, metadata !65, metadata !6}
!195 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &"}
!196 = metadata !{null, metadata !14, metadata !15, metadata !197, metadata !17, metadata !198, metadata !6}
!197 = metadata !{metadata !"kernel_arg_type", metadata !"stream<ap_axiu<24, 1, 1, 1> > &", metadata !"Mat<480, 640, 4096> &"}
!198 = metadata !{metadata !"kernel_arg_name", metadata !"AXI_video_strm", metadata !"img"}
!199 = metadata !{null, metadata !53, metadata !54, metadata !200, metadata !56, metadata !160, metadata !6}
!200 = metadata !{metadata !"kernel_arg_type", metadata !"ap_axiu<24, 1, 1, 1>", metadata !"int", metadata !"int", metadata !"uchar &"}
!201 = metadata !{null, metadata !53, metadata !54, metadata !202, metadata !56, metadata !163, metadata !6}
!202 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<24>", metadata !"int", metadata !"int", metadata !"uchar &"}
!203 = metadata !{null, metadata !34, metadata !35, metadata !204, metadata !37, metadata !181, metadata !6}
!204 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_axiu<24, 1, 1, 1> &"}
!205 = metadata !{null, metadata !34, metadata !35, metadata !204, metadata !37, metadata !183, metadata !6}
!206 = metadata !{null, metadata !34, metadata !35, metadata !149, metadata !37, metadata !132, metadata !6}
!207 = metadata !{null, metadata !14, metadata !15, metadata !169, metadata !17, metadata !208, metadata !6}
!208 = metadata !{metadata !"kernel_arg_name", metadata !"_rows", metadata !"_cols"}
!209 = metadata !{null, metadata !34, metadata !35, metadata !210, metadata !37, metadata !65, metadata !6}
!210 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!211 = metadata !{metadata !212, [0 x i32]* @llvm_global_ctors_0}
!212 = metadata !{metadata !213}
!213 = metadata !{i32 0, i32 31, metadata !214}
!214 = metadata !{metadata !215}
!215 = metadata !{metadata !"llvm.global_ctors.0", metadata !216, metadata !"", i32 0, i32 31}
!216 = metadata !{metadata !217}
!217 = metadata !{i32 0, i32 0, i32 1}
!218 = metadata !{metadata !219}
!219 = metadata !{i32 0, i32 23, metadata !220}
!220 = metadata !{metadata !221}
!221 = metadata !{metadata !"src_axi0.V.data.V", metadata !216, metadata !"uint24", i32 0, i32 23}
!222 = metadata !{metadata !223}
!223 = metadata !{i32 0, i32 2, metadata !224}
!224 = metadata !{metadata !225}
!225 = metadata !{metadata !"src_axi0.V.keep.V", metadata !216, metadata !"uint3", i32 0, i32 2}
!226 = metadata !{metadata !227}
!227 = metadata !{i32 0, i32 2, metadata !228}
!228 = metadata !{metadata !229}
!229 = metadata !{metadata !"src_axi0.V.strb.V", metadata !216, metadata !"uint3", i32 0, i32 2}
!230 = metadata !{metadata !231}
!231 = metadata !{i32 0, i32 0, metadata !232}
!232 = metadata !{metadata !233}
!233 = metadata !{metadata !"src_axi0.V.user.V", metadata !216, metadata !"uint1", i32 0, i32 0}
!234 = metadata !{metadata !235}
!235 = metadata !{i32 0, i32 0, metadata !236}
!236 = metadata !{metadata !237}
!237 = metadata !{metadata !"src_axi0.V.last.V", metadata !216, metadata !"uint1", i32 0, i32 0}
!238 = metadata !{metadata !239}
!239 = metadata !{i32 0, i32 0, metadata !240}
!240 = metadata !{metadata !241}
!241 = metadata !{metadata !"src_axi0.V.id.V", metadata !216, metadata !"uint1", i32 0, i32 0}
!242 = metadata !{metadata !243}
!243 = metadata !{i32 0, i32 0, metadata !244}
!244 = metadata !{metadata !245}
!245 = metadata !{metadata !"src_axi0.V.dest.V", metadata !216, metadata !"uint1", i32 0, i32 0}
!246 = metadata !{metadata !247}
!247 = metadata !{i32 0, i32 23, metadata !248}
!248 = metadata !{metadata !249}
!249 = metadata !{metadata !"dst_axi.V.data.V", metadata !216, metadata !"uint24", i32 0, i32 23}
!250 = metadata !{metadata !251}
!251 = metadata !{i32 0, i32 2, metadata !252}
!252 = metadata !{metadata !253}
!253 = metadata !{metadata !"dst_axi.V.keep.V", metadata !216, metadata !"uint3", i32 0, i32 2}
!254 = metadata !{metadata !255}
!255 = metadata !{i32 0, i32 2, metadata !256}
!256 = metadata !{metadata !257}
!257 = metadata !{metadata !"dst_axi.V.strb.V", metadata !216, metadata !"uint3", i32 0, i32 2}
!258 = metadata !{metadata !259}
!259 = metadata !{i32 0, i32 0, metadata !260}
!260 = metadata !{metadata !261}
!261 = metadata !{metadata !"dst_axi.V.user.V", metadata !216, metadata !"uint1", i32 0, i32 0}
!262 = metadata !{metadata !263}
!263 = metadata !{i32 0, i32 0, metadata !264}
!264 = metadata !{metadata !265}
!265 = metadata !{metadata !"dst_axi.V.last.V", metadata !216, metadata !"uint1", i32 0, i32 0}
!266 = metadata !{metadata !267}
!267 = metadata !{i32 0, i32 0, metadata !268}
!268 = metadata !{metadata !269}
!269 = metadata !{metadata !"dst_axi.V.id.V", metadata !216, metadata !"uint1", i32 0, i32 0}
!270 = metadata !{metadata !271}
!271 = metadata !{i32 0, i32 0, metadata !272}
!272 = metadata !{metadata !273}
!273 = metadata !{metadata !"dst_axi.V.dest.V", metadata !216, metadata !"uint1", i32 0, i32 0}
