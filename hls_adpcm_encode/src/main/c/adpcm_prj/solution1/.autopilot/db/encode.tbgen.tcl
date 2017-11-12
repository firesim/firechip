set C_TypeInfoList {{ 
"encode" : [[], {"return": [[], {"scalar": "int"}] }, [{"ExternC" : 0}], [ {"xin1": [[], {"scalar": "int"}] }, {"xin2": [[], {"scalar": "int"}] }],["0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38"],""],
 "0": [ "tqmf", [[], {"array": [ {"scalar": "int"}, [24]]}],""],
 "1": [ "xl", [[], {"scalar": "int"}],""],
 "2": [ "xh", [[], {"scalar": "int"}],""],
 "3": [ "delay_bpl", [[], {"array": [ {"scalar": "int"}, [6]]}],""],
 "4": [ "delay_dltx", [[], {"array": [ {"scalar": "int"}, [6]]}],""],
 "5": [ "szl", [[], {"scalar": "int"}],""],
 "6": [ "rlt1", [[], {"scalar": "int"}],""],
 "7": [ "al1", [[], {"scalar": "int"}],""],
 "8": [ "rlt2", [[], {"scalar": "int"}],""],
 "9": [ "al2", [[], {"scalar": "int"}],""],
 "10": [ "spl", [[], {"scalar": "int"}],""],
 "11": [ "sl", [[], {"scalar": "int"}],""],
 "12": [ "el", [[], {"scalar": "int"}],""],
 "13": [ "detl", [[], {"scalar": "int"}],""],
 "14": [ "il", [[], {"scalar": "int"}],""],
 "15": [ "dlt", [[], {"scalar": "int"}],""],
 "16": [ "nbl", [[], {"scalar": "int"}],""],
 "17": [ "plt", [[], {"scalar": "int"}],""],
 "18": [ "plt1", [[], {"scalar": "int"}],""],
 "19": [ "plt2", [[], {"scalar": "int"}],""],
 "20": [ "rlt", [[], {"scalar": "int"}],""],
 "21": [ "delay_bph", [[], {"array": [ {"scalar": "int"}, [6]]}],""],
 "22": [ "delay_dhx", [[], {"array": [ {"scalar": "int"}, [6]]}],""],
 "23": [ "szh", [[], {"scalar": "int"}],""],
 "24": [ "rh1", [[], {"scalar": "int"}],""],
 "25": [ "ah1", [[], {"scalar": "int"}],""],
 "26": [ "rh2", [[], {"scalar": "int"}],""],
 "27": [ "ah2", [[], {"scalar": "int"}],""],
 "28": [ "sph", [[], {"scalar": "int"}],""],
 "29": [ "sh", [[], {"scalar": "int"}],""],
 "30": [ "eh", [[], {"scalar": "int"}],""],
 "31": [ "ih", [[], {"scalar": "int"}],""],
 "32": [ "deth", [[], {"scalar": "int"}],""],
 "33": [ "dh", [[], {"scalar": "int"}],""],
 "34": [ "nbh", [[], {"scalar": "int"}],""],
 "35": [ "ph", [[], {"scalar": "int"}],""],
 "36": [ "ph1", [[], {"scalar": "int"}],""],
 "37": [ "ph2", [[], {"scalar": "int"}],""],
 "38": [ "yh", [[], {"scalar": "int"}],""]
}}
set moduleName encode
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {encode}
set C_modelType { int 32 }
set C_modelArgList { 
	{ xin1 int 32 regular  }
	{ xin2 int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "xin1", "interface" : "wire", "bitwidth" : 32 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "xin1","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "xin2", "interface" : "wire", "bitwidth" : 32 ,"direction" : "READONLY" ,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "xin2","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 9
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ xin1 sc_in sc_lv 32 signal 0 } 
	{ xin2 sc_in sc_lv 32 signal 1 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "xin1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xin1", "role": "default" }} , 
 	{ "name": "xin2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xin2", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}
set Spec2ImplPortList { 
	xin1 { ap_none {  { xin1 in_data 0 32 } } }
	xin2 { ap_none {  { xin2 in_data 0 32 } } }
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
