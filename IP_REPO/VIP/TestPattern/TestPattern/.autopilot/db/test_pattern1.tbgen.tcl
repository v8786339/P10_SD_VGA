set C_TypeInfoList {{ 
"test_pattern1" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"src_axi0": [[], {"reference": "0"}] }],[],""], 
"0": [ "AXI_STREAM", {"typedef": [[[],"1"],""]}], 
"1": [ "stream<ap_axiu<24, 1, 1, 1> >", {"hls_type": {"stream": [[[[],"2"]],"3"]}}], 
"2": [ "ap_axiu<24, 1, 1, 1>", {"struct": [[],[{"D":[[], {"scalar": { "int": 24}}]},{"U":[[], {"scalar": { "int": 1}}]},{"TI":[[], {"scalar": { "int": 1}}]},{"TD":[[], {"scalar": { "int": 1}}]}],[{ "data": [[], "4"]},{ "keep": [[], "5"]},{ "strb": [[], "5"]},{ "user": [[], "6"]},{ "last": [[], "6"]},{ "id": [[], "6"]},{ "dest": [[], "6"]}],""]}], 
"6": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"5": [ "ap_uint<3>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 3}}]],""]}}], 
"4": [ "ap_uint<24>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 24}}]],""]}}],
"3": ["hls", ""]
}}
set moduleName test_pattern1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {test_pattern1}
set C_modelType { void 0 }
set C_modelArgList {
	{ src_axi0_V_data_V int 24 regular {axi_s 1 volatile  { src_axi0 Data } }  }
	{ src_axi0_V_keep_V int 3 regular {axi_s 1 volatile  { src_axi0 Keep } }  }
	{ src_axi0_V_strb_V int 3 regular {axi_s 1 volatile  { src_axi0 Strb } }  }
	{ src_axi0_V_user_V int 1 regular {axi_s 1 volatile  { src_axi0 User } }  }
	{ src_axi0_V_last_V int 1 regular {axi_s 1 volatile  { src_axi0 Last } }  }
	{ src_axi0_V_id_V int 1 regular {axi_s 1 volatile  { src_axi0 ID } }  }
	{ src_axi0_V_dest_V int 1 regular {axi_s 1 volatile  { src_axi0 Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src_axi0_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "src_axi0.V.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "src_axi0_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "src_axi0.V.keep.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "src_axi0_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "src_axi0.V.strb.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "src_axi0_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "src_axi0.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "src_axi0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "src_axi0.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "src_axi0_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "src_axi0.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "src_axi0_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "src_axi0.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ src_axi0_TDATA sc_out sc_lv 24 signal 0 } 
	{ src_axi0_TKEEP sc_out sc_lv 3 signal 1 } 
	{ src_axi0_TSTRB sc_out sc_lv 3 signal 2 } 
	{ src_axi0_TUSER sc_out sc_lv 1 signal 3 } 
	{ src_axi0_TLAST sc_out sc_lv 1 signal 4 } 
	{ src_axi0_TID sc_out sc_lv 1 signal 5 } 
	{ src_axi0_TDEST sc_out sc_lv 1 signal 6 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ src_axi0_TVALID sc_out sc_logic 1 outvld 6 } 
	{ src_axi0_TREADY sc_in sc_logic 1 outacc 6 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "src_axi0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "src_axi0_V_data_V", "role": "default" }} , 
 	{ "name": "src_axi0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "src_axi0_V_keep_V", "role": "default" }} , 
 	{ "name": "src_axi0_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "src_axi0_V_strb_V", "role": "default" }} , 
 	{ "name": "src_axi0_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi0_V_user_V", "role": "default" }} , 
 	{ "name": "src_axi0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi0_V_last_V", "role": "default" }} , 
 	{ "name": "src_axi0_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi0_V_id_V", "role": "default" }} , 
 	{ "name": "src_axi0_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi0_V_dest_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "src_axi0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_axi0_V_dest_V", "role": "default" }} , 
 	{ "name": "src_axi0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "src_axi0_V_dest_V", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "test_pattern1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "Mat2AXIvideo_U0"}],
		"Port" : [
			{"Name" : "src_axi0_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "src_axi0_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "src_axi0_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "src_axi0_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "src_axi0_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "src_axi0_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "src_axi0_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_dest_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_loop_height1_pr_U0", "Parent" : "0",
		"CDFG" : "Loop_loop_height1_pr",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "imag0_0_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "3",
				"BlockSignal" : [
					{"Name" : "imag0_0_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imag0_0_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "4",
				"BlockSignal" : [
					{"Name" : "imag0_0_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imag0_0_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "5",
				"BlockSignal" : [
					{"Name" : "imag0_0_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Mat2AXIvideo_U0", "Parent" : "0",
		"CDFG" : "Mat2AXIvideo",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "img_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "3",
				"BlockSignal" : [
					{"Name" : "img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "4",
				"BlockSignal" : [
					{"Name" : "img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "5",
				"BlockSignal" : [
					{"Name" : "img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "src_axi0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imag0_0_data_stream_s_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imag0_0_data_stream_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imag0_0_data_stream_2_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	test_pattern1 {
		src_axi0_V_data_V {Type O LastRead -1 FirstWrite 3}
		src_axi0_V_keep_V {Type O LastRead -1 FirstWrite 3}
		src_axi0_V_strb_V {Type O LastRead -1 FirstWrite 3}
		src_axi0_V_user_V {Type O LastRead -1 FirstWrite 3}
		src_axi0_V_last_V {Type O LastRead -1 FirstWrite 3}
		src_axi0_V_id_V {Type O LastRead -1 FirstWrite 3}
		src_axi0_V_dest_V {Type O LastRead -1 FirstWrite 3}}
	Loop_loop_height1_pr {
		imag0_0_data_stream_0_V {Type O LastRead -1 FirstWrite 3}
		imag0_0_data_stream_1_V {Type O LastRead -1 FirstWrite 3}
		imag0_0_data_stream_2_V {Type O LastRead -1 FirstWrite 3}}
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
	{"Name" : "Latency", "Min" : "1232642", "Max" : "1232642"}
	, {"Name" : "Interval", "Min" : "1232642", "Max" : "1232642"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	src_axi0_V_data_V { axis {  { src_axi0_TDATA out_data 1 24 } } }
	src_axi0_V_keep_V { axis {  { src_axi0_TKEEP out_data 1 3 } } }
	src_axi0_V_strb_V { axis {  { src_axi0_TSTRB out_data 1 3 } } }
	src_axi0_V_user_V { axis {  { src_axi0_TUSER out_data 1 1 } } }
	src_axi0_V_last_V { axis {  { src_axi0_TLAST out_data 1 1 } } }
	src_axi0_V_id_V { axis {  { src_axi0_TID out_data 1 1 } } }
	src_axi0_V_dest_V { axis {  { src_axi0_TDEST out_data 1 1 }  { src_axi0_TVALID out_vld 1 1 }  { src_axi0_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
