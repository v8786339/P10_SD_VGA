; ModuleID = 'D:/BaiduNetdiskDownload/P10_SD_VGA_m/IP_REPO/VIP/TestPattern/TestPattern/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@test_pattern1_str = internal unnamed_addr constant [14 x i8] c"test_pattern1\00"
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@imag0_0_OC_data_stre_2 = internal unnamed_addr constant [25 x i8] c"imag0_0.data_stream[0].V\00"
@imag0_0_OC_data_stre_1 = internal unnamed_addr constant [25 x i8] c"imag0_0.data_stream[1].V\00"
@imag0_0_OC_data_stre = internal unnamed_addr constant [25 x i8] c"imag0_0.data_stream[2].V\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str7 = private unnamed_addr constant [12 x i8] c"loop_width1\00", align 1
@p_str6 = private unnamed_addr constant [13 x i8] c"loop_height1\00", align 1
@p_str5 = private unnamed_addr constant [24 x i8] c"-bus_bundle CONTROL_BUS\00", align 1
@p_str4 = private unnamed_addr constant [10 x i8] c"AXI_SLAVE\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str20 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str18 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1
@p_str14 = private unnamed_addr constant [11 x i8] c"loop_width\00", align 1
@p_str13 = private unnamed_addr constant [12 x i8] c"loop_height\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define void @test_pattern1(i24* %src_axi0_V_data_V, i3* %src_axi0_V_keep_V, i3* %src_axi0_V_strb_V, i1* %src_axi0_V_user_V, i1* %src_axi0_V_last_V, i1* %src_axi0_V_id_V, i1* %src_axi0_V_dest_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %src_axi0_V_data_V), !map !113
  call void (...)* @_ssdm_op_SpecBitsMap(i3* %src_axi0_V_keep_V), !map !117
  call void (...)* @_ssdm_op_SpecBitsMap(i3* %src_axi0_V_strb_V), !map !121
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %src_axi0_V_user_V), !map !125
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %src_axi0_V_last_V), !map !129
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %src_axi0_V_id_V), !map !133
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %src_axi0_V_dest_V), !map !137
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @test_pattern1_str) nounwind
  %imag0_0_data_stream_s = alloca i8, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([25 x i8]* @imag0_0_OC_data_stre_2, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %imag0_0_data_stream_s, i8* %imag0_0_data_stream_s)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag0_0_data_stream_s, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %imag0_0_data_stream_1 = alloca i8, align 1
  %empty_4 = call i32 (...)* @_ssdm_op_SpecChannel([25 x i8]* @imag0_0_OC_data_stre_1, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %imag0_0_data_stream_1, i8* %imag0_0_data_stream_1)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag0_0_data_stream_1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %imag0_0_data_stream_2 = alloca i8, align 1
  %empty_5 = call i32 (...)* @_ssdm_op_SpecChannel([25 x i8]* @imag0_0_OC_data_stre, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %imag0_0_data_stream_2, i8* %imag0_0_data_stream_2)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag0_0_data_stream_2, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i24* %src_axi0_V_data_V, i3* %src_axi0_V_keep_V, i3* %src_axi0_V_strb_V, i1* %src_axi0_V_user_V, i1* %src_axi0_V_last_V, i1* %src_axi0_V_id_V, i1* %src_axi0_V_dest_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str, [10 x i8]* @p_str4, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str5)
  call fastcc void @Loop_loop_height1_pr(i8* %imag0_0_data_stream_s, i8* %imag0_0_data_stream_1, i8* %imag0_0_data_stream_2)
  call fastcc void @Mat2AXIvideo(i8* %imag0_0_data_stream_s, i8* %imag0_0_data_stream_1, i8* %imag0_0_data_stream_2, i24* %src_axi0_V_data_V, i3* %src_axi0_V_keep_V, i3* %src_axi0_V_strb_V, i1* %src_axi0_V_user_V, i1* %src_axi0_V_last_V, i1* %src_axi0_V_id_V, i1* %src_axi0_V_dest_V)
  ret void
}

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

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
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

define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %1 to i16
  %empty_6 = zext i8 %2 to i16
  %empty_7 = shl i16 %empty, 8
  %empty_8 = or i16 %empty_7, %empty_6
  %empty_9 = zext i8 %0 to i24
  %empty_10 = zext i16 %empty_8 to i24
  %empty_11 = shl i24 %empty_9, 16
  %empty_12 = or i24 %empty_11, %empty_10
  ret i24 %empty_12
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
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 960, i64 960, i64 960)
  %i_V = add i10 %t_V, 1
  br i1 %exitcond1, label %4, label %1

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str13) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str13)
  br label %2

; <label>:2                                       ; preds = %"operator>>.exit", %1
  %t_V_1 = phi i11 [ 0, %1 ], [ %j_V, %"operator>>.exit" ]
  %exitcond = icmp eq i11 %t_V_1, -768
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1280, i64 1280, i64 1280)
  %j_V = add i11 %t_V_1, 1
  br i1 %exitcond, label %3, label %"operator>>.exit"

"operator>>.exit":                                ; preds = %2
  %tmp_user_V_load = load i1* %tmp_user_V
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str14) nounwind
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str14)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %axi_last_V = icmp eq i11 %t_V_1, -769
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str18)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str) nounwind
  %tmp_4 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_0_V)
  %tmp_5 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_1_V)
  %tmp_3 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_2_V)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str18, i32 %tmp_8)
  %tmp_data_V = call i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8 %tmp_3, i8 %tmp_5, i8 %tmp_4)
  call void @_ssdm_op_Write.axis.volatile.i24P.i3P.i3P.i1P.i1P.i1P.i1P(i24* %AXI_video_strm_V_data_V, i3* %AXI_video_strm_V_keep_V, i3* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i24 %tmp_data_V, i3 -1, i3 undef, i1 %tmp_user_V_load, i1 %axi_last_V, i1 undef, i1 undef)
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str14, i32 %tmp_7)
  store i1 false, i1* %tmp_user_V
  br label %2

; <label>:3                                       ; preds = %2
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str13, i32 %tmp)
  br label %0

; <label>:4                                       ; preds = %0
  ret void
}

define internal fastcc void @Loop_loop_height1_pr(i8* %imag0_0_data_stream_0_V, i8* %imag0_0_data_stream_1_V, i8* %imag0_0_data_stream_2_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag0_0_data_stream_2_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag0_0_data_stream_1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %imag0_0_data_stream_0_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %0

test_pattern1_.exit.exitStub:                     ; preds = %0
  ret void

; <label>:0                                       ; preds = %1, %newFuncRoot
  %t_V = phi i10 [ 0, %newFuncRoot ], [ %i_V, %1 ]
  %tmp_i = icmp eq i10 %t_V, -64
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 960, i64 960, i64 960)
  %i_V = add i10 %t_V, 1
  br i1 %tmp_i, label %test_pattern1_.exit.exitStub, label %3

; <label>:1                                       ; preds = %2
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str6, i32 %tmp)
  br label %0

; <label>:2                                       ; preds = %"operator<<.exit.i", %3
  %t_V_1 = phi i11 [ 0, %3 ], [ %j_V, %"operator<<.exit.i" ]
  %tmp_2_i = icmp eq i11 %t_V_1, -768
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1280, i64 1280, i64 1280)
  %j_V = add i11 %t_V_1, 1
  br i1 %tmp_2_i, label %1, label %5

; <label>:3                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str6) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str6)
  %tmp_1_i = icmp ult i10 %t_V, 480
  br label %2

"operator<<.exit.i":                              ; preds = %16, %"operator=.exit.i", %15, %14, %13, %12, %11, %10, %"operator=.exit230.i", %9, %8, %7, %6, %4
  %tmp_4 = phi i8 [ -1, %4 ], [ 0, %6 ], [ 0, %7 ], [ -1, %8 ], [ -1, %9 ], [ %storemerge1, %"operator=.exit230.i" ], [ 0, %10 ], [ -1, %11 ], [ 0, %12 ], [ -1, %13 ], [ -1, %14 ], [ 0, %15 ], [ -128, %"operator=.exit.i" ], [ 64, %16 ]
  %tmp_5 = phi i8 [ 0, %4 ], [ -1, %6 ], [ 0, %7 ], [ -128, %8 ], [ -1, %9 ], [ %storemerge2_cast, %"operator=.exit230.i" ], [ -1, %10 ], [ -1, %11 ], [ -1, %12 ], [ 0, %13 ], [ -128, %14 ], [ 0, %15 ], [ %storemerge3, %"operator=.exit.i" ], [ -1, %16 ]
  %tmp_6 = phi i8 [ 0, %4 ], [ 0, %6 ], [ -1, %7 ], [ 0, %8 ], [ -1, %9 ], [ -1, %"operator=.exit230.i" ], [ -128, %10 ], [ 0, %11 ], [ -1, %12 ], [ -1, %13 ], [ 64, %14 ], [ 0, %15 ], [ %storemerge, %"operator=.exit.i" ], [ -128, %16 ]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str20)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %imag0_0_data_stream_0_V, i8 %tmp_4)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %imag0_0_data_stream_1_V, i8 %tmp_5)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %imag0_0_data_stream_2_V, i8 %tmp_6)
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str20, i32 %tmp_2)
  %empty_20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_1)
  br label %2

; <label>:4                                       ; preds = %5
  br i1 %tmp_4_i, label %"operator<<.exit.i", label %6

; <label>:5                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str7) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_4_i = icmp ult i11 %t_V_1, 160
  br i1 %tmp_1_i, label %4, label %11

; <label>:6                                       ; preds = %4
  %tmp_6_i = icmp ult i11 %t_V_1, 320
  br i1 %tmp_6_i, label %"operator<<.exit.i", label %7

; <label>:7                                       ; preds = %6
  %tmp_8_i = icmp ult i11 %t_V_1, 480
  br i1 %tmp_8_i, label %"operator<<.exit.i", label %9

; <label>:8                                       ; preds = %9
  %tmp_10_i = icmp ult i11 %t_V_1, 800
  br i1 %tmp_10_i, label %"operator<<.exit.i", label %10

; <label>:9                                       ; preds = %7
  %tmp_i_21 = icmp ult i11 %t_V_1, 640
  br i1 %tmp_i_21, label %"operator<<.exit.i", label %8

"operator=.exit230.i":                            ; preds = %10
  %tmp_15_i = icmp ult i11 %t_V_1, -928
  %storemerge1 = select i1 %tmp_15_i, i8 -128, i8 -1
  %not_tmp_15_i = xor i1 %tmp_15_i, true
  %storemerge2_cast = select i1 %not_tmp_15_i, i8 -1, i8 0
  br label %"operator<<.exit.i"

; <label>:10                                      ; preds = %8
  %tmp_12_i = icmp ult i11 %t_V_1, 960
  br i1 %tmp_12_i, label %"operator<<.exit.i", label %"operator=.exit230.i"

; <label>:11                                      ; preds = %5
  br i1 %tmp_4_i, label %"operator<<.exit.i", label %12

; <label>:12                                      ; preds = %11
  %tmp_7_i = icmp ult i11 %t_V_1, 320
  br i1 %tmp_7_i, label %"operator<<.exit.i", label %13

; <label>:13                                      ; preds = %12
  %tmp_9_i = icmp ult i11 %t_V_1, 480
  br i1 %tmp_9_i, label %"operator<<.exit.i", label %15

; <label>:14                                      ; preds = %15
  %tmp_11_i = icmp ult i11 %t_V_1, 800
  br i1 %tmp_11_i, label %"operator<<.exit.i", label %16

; <label>:15                                      ; preds = %13
  %tmp_3_i = icmp ult i11 %t_V_1, 640
  br i1 %tmp_3_i, label %"operator<<.exit.i", label %14

"operator=.exit.i":                               ; preds = %16
  %tmp_17_i = icmp ult i11 %t_V_1, -928
  %storemerge3 = select i1 %tmp_17_i, i8 64, i8 -128
  %storemerge = select i1 %tmp_17_i, i8 -1, i8 -128
  br label %"operator<<.exit.i"

; <label>:16                                      ; preds = %14
  %tmp_13_i = icmp ult i11 %t_V_1, 960
  br i1 %tmp_13_i, label %"operator<<.exit.i", label %"operator=.exit.i"
}

!opencl.kernels = !{!0, !0, !7, !13, !16, !18, !18, !21, !21, !27, !30, !32, !32, !21, !34, !21, !21, !36, !32, !32, !21, !39, !21, !21, !21, !42, !42, !44, !44, !46, !52, !55, !57, !57, !21, !59, !62, !62, !68, !69, !18, !18, !21, !21, !18, !18, !21, !70, !72, !21, !75, !78, !80, !21, !21, !82, !84, !21, !21, !21, !42, !42, !86, !86, !88, !18, !18, !21, !90, !92, !93, !69, !21, !21, !21, !21, !21, !21, !21, !21, !94, !94, !96, !98, !99, !30, !34, !93, !69, !18, !18, !21, !21, !21, !21, !102, !102, !102, !104, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!106}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"AXI_STREAM &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"src_axi0"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"Mat<960, 1280, 4096> &", metadata !"stream<ap_axiu<24, 1, 1, 1> > &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"img", metadata !"AXI_video_strm"}
!13 = metadata !{null, metadata !1, metadata !2, metadata !14, metadata !4, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axiu<24, 1, 1, 1> &"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"wdata"}
!16 = metadata !{null, metadata !1, metadata !2, metadata !14, metadata !4, metadata !17, metadata !6}
!17 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!18 = metadata !{null, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space"}
!23 = metadata !{metadata !"kernel_arg_access_qual"}
!24 = metadata !{metadata !"kernel_arg_type"}
!25 = metadata !{metadata !"kernel_arg_type_qual"}
!26 = metadata !{metadata !"kernel_arg_name"}
!27 = metadata !{null, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<3> &"}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!30 = metadata !{null, metadata !1, metadata !2, metadata !19, metadata !4, metadata !31, metadata !6}
!31 = metadata !{metadata !"kernel_arg_name", metadata !""}
!32 = metadata !{null, metadata !1, metadata !2, metadata !19, metadata !4, metadata !33, metadata !6}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!34 = metadata !{null, metadata !1, metadata !2, metadata !35, metadata !4, metadata !29, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!36 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !38, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"int"}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!39 = metadata !{null, metadata !8, metadata !9, metadata !40, metadata !11, metadata !41, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"const ap_int_base<32, true> &"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!42 = metadata !{null, metadata !1, metadata !2, metadata !43, metadata !4, metadata !33, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!44 = metadata !{null, metadata !1, metadata !2, metadata !45, metadata !4, metadata !33, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &"}
!46 = metadata !{null, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !6}
!47 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!48 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"ap_axiu<24, 1, 1, 1> &", metadata !"int", metadata !"int", metadata !"uchar"}
!50 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"axi", metadata !"start", metadata !"w", metadata !"val"}
!52 = metadata !{null, metadata !47, metadata !48, metadata !53, metadata !50, metadata !54, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<24> &", metadata !"int", metadata !"int", metadata !"uchar"}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"pix", metadata !"start", metadata !"w", metadata !"val"}
!55 = metadata !{null, metadata !1, metadata !2, metadata !56, metadata !4, metadata !20, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!57 = metadata !{null, metadata !1, metadata !2, metadata !58, metadata !4, metadata !33, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong"}
!59 = metadata !{null, metadata !8, metadata !9, metadata !60, metadata !11, metadata !61, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!62 = metadata !{null, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !6}
!63 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!64 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, false>*", metadata !"int", metadata !"int"}
!66 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!67 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!68 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !41, metadata !6}
!69 = metadata !{null, metadata !1, metadata !2, metadata !43, metadata !4, metadata !29, metadata !6}
!70 = metadata !{null, metadata !1, metadata !2, metadata !71, metadata !4, metadata !29, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<24> &"}
!72 = metadata !{null, metadata !1, metadata !2, metadata !73, metadata !4, metadata !74, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"Scalar<((((4096) & ((512 - 1) << 11)) >> 11) + 1), typename Type<((4096) & ((1 << 11) - 1))>::name> &"}
!74 = metadata !{metadata !"kernel_arg_name", metadata !"s"}
!75 = metadata !{null, metadata !1, metadata !2, metadata !76, metadata !4, metadata !77, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"uchar &"}
!77 = metadata !{metadata !"kernel_arg_name", metadata !"rdata"}
!78 = metadata !{null, metadata !1, metadata !2, metadata !76, metadata !4, metadata !79, metadata !6}
!79 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!80 = metadata !{null, metadata !1, metadata !2, metadata !81, metadata !4, metadata !29, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<5> &"}
!82 = metadata !{null, metadata !8, metadata !9, metadata !83, metadata !11, metadata !38, metadata !6}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"int"}
!84 = metadata !{null, metadata !8, metadata !9, metadata !85, metadata !11, metadata !41, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<32, true> &"}
!86 = metadata !{null, metadata !1, metadata !2, metadata !87, metadata !4, metadata !33, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!88 = metadata !{null, metadata !1, metadata !2, metadata !89, metadata !4, metadata !29, metadata !6}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<34, true> &"}
!90 = metadata !{null, metadata !1, metadata !2, metadata !91, metadata !4, metadata !29, metadata !6}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!92 = metadata !{null, metadata !1, metadata !2, metadata !87, metadata !4, metadata !29, metadata !6}
!93 = metadata !{null, metadata !8, metadata !9, metadata !83, metadata !11, metadata !41, metadata !6}
!94 = metadata !{null, metadata !1, metadata !2, metadata !95, metadata !4, metadata !74, metadata !6}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"Scalar<((((4096) & ((512 - 1) << 11)) >> 11) + 1), typename Type<((4096) & ((1 << 11) - 1))>::name>"}
!96 = metadata !{null, metadata !1, metadata !2, metadata !97, metadata !4, metadata !15, metadata !6}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"const uchar &"}
!98 = metadata !{null, metadata !1, metadata !2, metadata !97, metadata !4, metadata !17, metadata !6}
!99 = metadata !{null, metadata !1, metadata !2, metadata !100, metadata !4, metadata !101, metadata !6}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"uchar"}
!101 = metadata !{metadata !"kernel_arg_name", metadata !"value"}
!102 = metadata !{null, metadata !8, metadata !9, metadata !60, metadata !11, metadata !103, metadata !6}
!103 = metadata !{metadata !"kernel_arg_name", metadata !"_rows", metadata !"_cols"}
!104 = metadata !{null, metadata !1, metadata !2, metadata !105, metadata !4, metadata !29, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!106 = metadata !{metadata !107, [0 x i32]* @llvm_global_ctors_0}
!107 = metadata !{metadata !108}
!108 = metadata !{i32 0, i32 31, metadata !109}
!109 = metadata !{metadata !110}
!110 = metadata !{metadata !"llvm.global_ctors.0", metadata !111, metadata !"", i32 0, i32 31}
!111 = metadata !{metadata !112}
!112 = metadata !{i32 0, i32 0, i32 1}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 23, metadata !115}
!115 = metadata !{metadata !116}
!116 = metadata !{metadata !"src_axi0.V.data.V", metadata !111, metadata !"uint24", i32 0, i32 23}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 0, i32 2, metadata !119}
!119 = metadata !{metadata !120}
!120 = metadata !{metadata !"src_axi0.V.keep.V", metadata !111, metadata !"uint3", i32 0, i32 2}
!121 = metadata !{metadata !122}
!122 = metadata !{i32 0, i32 2, metadata !123}
!123 = metadata !{metadata !124}
!124 = metadata !{metadata !"src_axi0.V.strb.V", metadata !111, metadata !"uint3", i32 0, i32 2}
!125 = metadata !{metadata !126}
!126 = metadata !{i32 0, i32 0, metadata !127}
!127 = metadata !{metadata !128}
!128 = metadata !{metadata !"src_axi0.V.user.V", metadata !111, metadata !"uint1", i32 0, i32 0}
!129 = metadata !{metadata !130}
!130 = metadata !{i32 0, i32 0, metadata !131}
!131 = metadata !{metadata !132}
!132 = metadata !{metadata !"src_axi0.V.last.V", metadata !111, metadata !"uint1", i32 0, i32 0}
!133 = metadata !{metadata !134}
!134 = metadata !{i32 0, i32 0, metadata !135}
!135 = metadata !{metadata !136}
!136 = metadata !{metadata !"src_axi0.V.id.V", metadata !111, metadata !"uint1", i32 0, i32 0}
!137 = metadata !{metadata !138}
!138 = metadata !{i32 0, i32 0, metadata !139}
!139 = metadata !{metadata !140}
!140 = metadata !{metadata !"src_axi0.V.dest.V", metadata !111, metadata !"uint1", i32 0, i32 0}
