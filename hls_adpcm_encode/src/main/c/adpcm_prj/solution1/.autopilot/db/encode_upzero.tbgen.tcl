set moduleName encode_upzero
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {encode_upzero}
set C_modelType { void 0 }
set C_modelArgList { 
	{ dlt int 32 regular  }
	{ dlti int 32 regular {array 6 { 2 2 } 1 1 }  }
	{ bli int 32 regular {array 6 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dlt", "interface" : "wire", "bitwidth" : 32 ,"direction" : "READONLY" } , 
 	{ "Name" : "dlti", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READWRITE" } , 
 	{ "Name" : "bli", "interface" : "memory", "bitwidth" : 32 ,"direction" : "READWRITE" } ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dlt sc_in sc_lv 32 signal 0 } 
	{ dlti_address0 sc_out sc_lv 3 signal 1 } 
	{ dlti_ce0 sc_out sc_logic 1 signal 1 } 
	{ dlti_we0 sc_out sc_logic 1 signal 1 } 
	{ dlti_d0 sc_out sc_lv 32 signal 1 } 
	{ dlti_q0 sc_in sc_lv 32 signal 1 } 
	{ dlti_address1 sc_out sc_lv 3 signal 1 } 
	{ dlti_ce1 sc_out sc_logic 1 signal 1 } 
	{ dlti_we1 sc_out sc_logic 1 signal 1 } 
	{ dlti_d1 sc_out sc_lv 32 signal 1 } 
	{ dlti_q1 sc_in sc_lv 32 signal 1 } 
	{ bli_address0 sc_out sc_lv 3 signal 2 } 
	{ bli_ce0 sc_out sc_logic 1 signal 2 } 
	{ bli_we0 sc_out sc_logic 1 signal 2 } 
	{ bli_d0 sc_out sc_lv 32 signal 2 } 
	{ bli_q0 sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dlt", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dlt", "role": "default" }} , 
 	{ "name": "dlti_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dlti", "role": "address0" }} , 
 	{ "name": "dlti_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dlti", "role": "ce0" }} , 
 	{ "name": "dlti_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dlti", "role": "we0" }} , 
 	{ "name": "dlti_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dlti", "role": "d0" }} , 
 	{ "name": "dlti_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dlti", "role": "q0" }} , 
 	{ "name": "dlti_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dlti", "role": "address1" }} , 
 	{ "name": "dlti_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dlti", "role": "ce1" }} , 
 	{ "name": "dlti_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dlti", "role": "we1" }} , 
 	{ "name": "dlti_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dlti", "role": "d1" }} , 
 	{ "name": "dlti_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dlti", "role": "q1" }} , 
 	{ "name": "bli_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bli", "role": "address0" }} , 
 	{ "name": "bli_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bli", "role": "ce0" }} , 
 	{ "name": "bli_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bli", "role": "we0" }} , 
 	{ "name": "bli_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bli", "role": "d0" }} , 
 	{ "name": "bli_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bli", "role": "q0" }}  ]}
set Spec2ImplPortList { 
	dlt { ap_none {  { dlt in_data 0 32 } } }
	dlti { ap_memory {  { dlti_address0 mem_address 1 3 }  { dlti_ce0 mem_ce 1 1 }  { dlti_we0 mem_we 1 1 }  { dlti_d0 mem_din 1 32 }  { dlti_q0 mem_dout 0 32 }  { dlti_address1 mem_address 1 3 }  { dlti_ce1 mem_ce 1 1 }  { dlti_we1 mem_we 1 1 }  { dlti_d1 mem_din 1 32 }  { dlti_q1 mem_dout 0 32 } } }
	bli { ap_memory {  { bli_address0 mem_address 1 3 }  { bli_ce0 mem_ce 1 1 }  { bli_we0 mem_we 1 1 }  { bli_d0 mem_din 1 32 }  { bli_q0 mem_dout 0 32 } } }
}
