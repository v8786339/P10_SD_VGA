set moduleName Mat2AXIvideo
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {Mat2AXIvideo}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_data_stream_0_V int 8 regular {fifo 0 volatile }  }
	{ img_data_stream_1_V int 8 regular {fifo 0 volatile }  }
	{ img_data_stream_2_V int 8 regular {fifo 0 volatile }  }
	{ AXI_video_strm_V_data_V int 24 regular {axi_s 1 volatile  { dst_axi Data } }  }
	{ AXI_video_strm_V_keep_V int 3 regular {axi_s 1 volatile  { dst_axi Keep } }  }
	{ AXI_video_strm_V_strb_V int 3 regular {axi_s 1 volatile  { dst_axi Strb } }  }
	{ AXI_video_strm_V_user_V int 1 regular {axi_s 1 volatile  { dst_axi User } }  }
	{ AXI_video_strm_V_last_V int 1 regular {axi_s 1 volatile  { dst_axi Last } }  }
	{ AXI_video_strm_V_id_V int 1 regular {axi_s 1 volatile  { dst_axi ID } }  }
	{ AXI_video_strm_V_dest_V int 1 regular {axi_s 1 volatile  { dst_axi Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "img_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "img_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "AXI_video_strm_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AXI_video_strm_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_data_stream_0_V_dout sc_in sc_lv 8 signal 0 } 
	{ img_data_stream_0_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_data_stream_0_V_read sc_out sc_logic 1 signal 0 } 
	{ img_data_stream_1_V_dout sc_in sc_lv 8 signal 1 } 
	{ img_data_stream_1_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ img_data_stream_1_V_read sc_out sc_logic 1 signal 1 } 
	{ img_data_stream_2_V_dout sc_in sc_lv 8 signal 2 } 
	{ img_data_stream_2_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ img_data_stream_2_V_read sc_out sc_logic 1 signal 2 } 
	{ dst_axi_TDATA sc_out sc_lv 24 signal 3 } 
	{ dst_axi_TVALID sc_out sc_logic 1 outvld 9 } 
	{ dst_axi_TREADY sc_in sc_logic 1 outacc 9 } 
	{ dst_axi_TKEEP sc_out sc_lv 3 signal 4 } 
	{ dst_axi_TSTRB sc_out sc_lv 3 signal 5 } 
	{ dst_axi_TUSER sc_out sc_lv 1 signal 6 } 
	{ dst_axi_TLAST sc_out sc_lv 1 signal 7 } 
	{ dst_axi_TID sc_out sc_lv 1 signal 8 } 
	{ dst_axi_TDEST sc_out sc_lv 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_data_stream_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_data_stream_0_V", "role": "dout" }} , 
 	{ "name": "img_data_stream_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_stream_0_V", "role": "empty_n" }} , 
 	{ "name": "img_data_stream_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_stream_0_V", "role": "read" }} , 
 	{ "name": "img_data_stream_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_data_stream_1_V", "role": "dout" }} , 
 	{ "name": "img_data_stream_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_stream_1_V", "role": "empty_n" }} , 
 	{ "name": "img_data_stream_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_stream_1_V", "role": "read" }} , 
 	{ "name": "img_data_stream_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_data_stream_2_V", "role": "dout" }} , 
 	{ "name": "img_data_stream_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_stream_2_V", "role": "empty_n" }} , 
 	{ "name": "img_data_stream_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_data_stream_2_V", "role": "read" }} , 
 	{ "name": "dst_axi_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "AXI_video_strm_V_data_V", "role": "default" }} , 
 	{ "name": "dst_axi_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "AXI_video_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "dst_axi_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "AXI_video_strm_V_dest_V", "role": "default" }} , 
 	{ "name": "dst_axi_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_video_strm_V_keep_V", "role": "default" }} , 
 	{ "name": "dst_axi_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AXI_video_strm_V_strb_V", "role": "default" }} , 
 	{ "name": "dst_axi_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_user_V", "role": "default" }} , 
 	{ "name": "dst_axi_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_last_V", "role": "default" }} , 
 	{ "name": "dst_axi_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_id_V", "role": "default" }} , 
 	{ "name": "dst_axi_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_video_strm_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Mat2AXIvideo",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "img_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_axi_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Axis", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	Mat2AXIvideo {
		img_data_stream_0_V {Type I LastRead 3 FirstWrite -1}
		img_data_stream_1_V {Type I LastRead 3 FirstWrite -1}
		img_data_stream_2_V {Type I LastRead 3 FirstWrite -1}
		AXI_video_strm_V_data_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_keep_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_strb_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_user_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_last_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_id_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_dest_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1232641", "Max" : "1232641"}
	, {"Name" : "Interval", "Min" : "1232641", "Max" : "1232641"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	img_data_stream_0_V { ap_fifo {  { img_data_stream_0_V_dout fifo_data 0 8 }  { img_data_stream_0_V_empty_n fifo_status 0 1 }  { img_data_stream_0_V_read fifo_update 1 1 } } }
	img_data_stream_1_V { ap_fifo {  { img_data_stream_1_V_dout fifo_data 0 8 }  { img_data_stream_1_V_empty_n fifo_status 0 1 }  { img_data_stream_1_V_read fifo_update 1 1 } } }
	img_data_stream_2_V { ap_fifo {  { img_data_stream_2_V_dout fifo_data 0 8 }  { img_data_stream_2_V_empty_n fifo_status 0 1 }  { img_data_stream_2_V_read fifo_update 1 1 } } }
	AXI_video_strm_V_data_V { axis {  { dst_axi_TDATA out_data 1 24 } } }
	AXI_video_strm_V_keep_V { axis {  { dst_axi_TKEEP out_data 1 3 } } }
	AXI_video_strm_V_strb_V { axis {  { dst_axi_TSTRB out_data 1 3 } } }
	AXI_video_strm_V_user_V { axis {  { dst_axi_TUSER out_data 1 1 } } }
	AXI_video_strm_V_last_V { axis {  { dst_axi_TLAST out_data 1 1 } } }
	AXI_video_strm_V_id_V { axis {  { dst_axi_TID out_data 1 1 } } }
	AXI_video_strm_V_dest_V { axis {  { dst_axi_TVALID out_vld 1 1 }  { dst_axi_TREADY out_acc 0 1 }  { dst_axi_TDEST out_data 1 1 } } }
}
