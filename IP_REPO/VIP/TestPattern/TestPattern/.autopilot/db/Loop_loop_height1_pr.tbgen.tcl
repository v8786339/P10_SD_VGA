set moduleName Loop_loop_height1_pr
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {Loop_loop_height1_pr}
set C_modelType { void 0 }
set C_modelArgList {
	{ imag0_0_data_stream_0_V int 8 regular {fifo 1 volatile }  }
	{ imag0_0_data_stream_1_V int 8 regular {fifo 1 volatile }  }
	{ imag0_0_data_stream_2_V int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imag0_0_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imag0_0_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imag0_0_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imag0_0_data_stream_0_V_din sc_out sc_lv 8 signal 0 } 
	{ imag0_0_data_stream_0_V_full_n sc_in sc_logic 1 signal 0 } 
	{ imag0_0_data_stream_0_V_write sc_out sc_logic 1 signal 0 } 
	{ imag0_0_data_stream_1_V_din sc_out sc_lv 8 signal 1 } 
	{ imag0_0_data_stream_1_V_full_n sc_in sc_logic 1 signal 1 } 
	{ imag0_0_data_stream_1_V_write sc_out sc_logic 1 signal 1 } 
	{ imag0_0_data_stream_2_V_din sc_out sc_lv 8 signal 2 } 
	{ imag0_0_data_stream_2_V_full_n sc_in sc_logic 1 signal 2 } 
	{ imag0_0_data_stream_2_V_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imag0_0_data_stream_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imag0_0_data_stream_0_V", "role": "din" }} , 
 	{ "name": "imag0_0_data_stream_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag0_0_data_stream_0_V", "role": "full_n" }} , 
 	{ "name": "imag0_0_data_stream_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag0_0_data_stream_0_V", "role": "write" }} , 
 	{ "name": "imag0_0_data_stream_1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imag0_0_data_stream_1_V", "role": "din" }} , 
 	{ "name": "imag0_0_data_stream_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag0_0_data_stream_1_V", "role": "full_n" }} , 
 	{ "name": "imag0_0_data_stream_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag0_0_data_stream_1_V", "role": "write" }} , 
 	{ "name": "imag0_0_data_stream_2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imag0_0_data_stream_2_V", "role": "din" }} , 
 	{ "name": "imag0_0_data_stream_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag0_0_data_stream_2_V", "role": "full_n" }} , 
 	{ "name": "imag0_0_data_stream_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imag0_0_data_stream_2_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Loop_loop_height1_pr",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "imag0_0_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "imag0_0_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imag0_0_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "imag0_0_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imag0_0_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "imag0_0_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Loop_loop_height1_pr {
		imag0_0_data_stream_0_V {Type O LastRead -1 FirstWrite 3}
		imag0_0_data_stream_1_V {Type O LastRead -1 FirstWrite 3}
		imag0_0_data_stream_2_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1231681", "Max" : "1231681"}
	, {"Name" : "Interval", "Min" : "1231681", "Max" : "1231681"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	imag0_0_data_stream_0_V { ap_fifo {  { imag0_0_data_stream_0_V_din fifo_data 1 8 }  { imag0_0_data_stream_0_V_full_n fifo_status 0 1 }  { imag0_0_data_stream_0_V_write fifo_update 1 1 } } }
	imag0_0_data_stream_1_V { ap_fifo {  { imag0_0_data_stream_1_V_din fifo_data 1 8 }  { imag0_0_data_stream_1_V_full_n fifo_status 0 1 }  { imag0_0_data_stream_1_V_write fifo_update 1 1 } } }
	imag0_0_data_stream_2_V { ap_fifo {  { imag0_0_data_stream_2_V_din fifo_data 1 8 }  { imag0_0_data_stream_2_V_full_n fifo_status 0 1 }  { imag0_0_data_stream_2_V_write fifo_update 1 1 } } }
}
