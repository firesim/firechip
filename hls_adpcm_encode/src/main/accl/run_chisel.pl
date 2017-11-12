#!/usr/bin/perl
use warnings;
use strict;
use Cwd;
use File::Copy;

my $dir = getcwd;
my $file_name = $ARGV[0];
my $func_name = $ARGV[1];
my $accel_dir_name = "hls_$file_name"."_$func_name"; 
my $rocket_dir = "/scratch/qijing.huang/firechip/";

my $build_sbt = '
organization := "edu.berkeley.cs"

version := "1.0"

name := "hls_test_c"';

$build_sbt=~ s/test_c/$func_name/g;
my $build_sbt_path= "$rocket_dir/$accel_dir_name/"."build.sbt";
open BUILD, ">$build_sbt_path";
print BUILD $build_sbt;
close BUILD;

#my $verilog_file = "$dir/$file_name"."_prj/solution1/syn/verilog/$func_name".".v";
my $verilog_file = "$dir/../verilog/$func_name".".v";
my $line = undef;
my @verilog_input = ();
my @verilog_input_size = ();
my @verilog_output = ();
my @verilog_output_size = ();

print "Parsing ".$verilog_file."\n";
# parse the verilog file to get the info we need
if(!open VERILOG, "$verilog_file"){
	print $!;
} else {
	while(<VERILOG>){
		$line = $_;
		if($line =~ m/\s*input\s+(.*)/){
			my $input = $1;
			print "input:$input\n";
			if($input =~ m/\s*\[(.*):(.*)\]\s*(.*)\s*;/){	
				my $end = $1;
				my $start = $2;
				my $input_name = $3;
				#print "here!"."$input_name\n";
				push (@verilog_input, $input_name);
				my $size = $end - $start + 1;
				push(@verilog_input_size, $size);
			}elsif ($input =~ m/\s*(.*)\s*;/){
				my $input_name = $1;
				#print "here!"."$input_name\n";
				push (@verilog_input, $input_name);
				push(@verilog_input_size, 1);
			}

		}elsif($line =~ m/\s*output(.*)/){
			my $output = $1;
			print "output:$output\n";
			if($output =~ m/\s*\[(.*):(.*)\]\s*(.*)\s*;/){	
				my $end = $1;
				my $start = $2;
				my $output_name = $3;
				#print "here!"."$output_name\n";
				push(@verilog_output, $output_name);
				my $size = $end - $start + 1;
				push(@verilog_output_size, $size);
			}elsif ($output =~ m/\s*(.*)\s*;/){
				my $output_name = $1;
				#print "here!"."$output_name\n";
				push (@verilog_output, $output_name);
				push(@verilog_output_size, 1);
			}
		}
	}
}

#creat scala folder
my $scala_dir = "$dir/../scala";
mkdir $scala_dir unless (-d $scala_dir);
print "Generating BlackBox file ...\n";

my $blackbox1 = '
package hls_test_c

import Chisel._
//import chisel3._
//import chisel3.util._
//import chisel3.experimental._
import freechips.rocketchip.config.{Parameters, Field}
import freechips.rocketchip.tile._
import freechips.rocketchip.util._


class test_c() extends BlackBox() {
';
$blackbox1 =~ s/test_c/$func_name/g;

# should be under scala folder
open BB, ">$scala_dir/$func_name"."_blackbox.scala";
print BB $blackbox1;

print BB "\tval io = new Bundle {\n";
my $i = undef;
my $bb_body = "";

# now if the input name does not start with ap, we assume it is an arg
my $ap_return = 0;
my $ap_clk = 0;
my $ap_rst = 0;
my @verilog_input_args = ();
for( $i = 0; $i < @verilog_input; $i = $i + 1 ){
	my $input_name = $verilog_input[$i]; 
	my $input_size = $verilog_input_size[$i];

	if ($input_name =~ m/ap_clk(.*)/){
		$ap_clk = 1;
	}


	if ($input_name =~ m/ap_rst(.*)/){
		$ap_rst = 1;
	}

	if(!($input_name =~ m/ap_(.*)/)){
		push (@verilog_input_args, $input_name);
	}

	print BB "\t\tval $input_name = ";
  if ($input_name =~ m/ap_clk(.*)/){
		print BB "Clock\(INPUT\)\n";
  }else{
    if ($input_size == 1){
      print BB "Bool\(INPUT\)\n";
    }else{
      print BB "Bits\(INPUT, width = $input_size\)\n";
    }
  }
	if($input_name ne "ap_clk" && $input_name ne "ap_rst"){
		$bb_body = $bb_body."\tio.".$input_name.".setName(\"".$input_name."\")\n";
	}
}

if(@verilog_input_args > 2){
	die "Only accept function with no more than 2 arguments!\n";
}

for( $i = 0; $i < @verilog_output; $i = $i + 1 ){

	my $output_name = $verilog_output[$i]; 
	my $output_size = $verilog_output_size[$i];

	if ($output_name =~ m/ap_return(.*)/){
		$ap_return = 1;
	}

	print BB "\t\tval $output_name = ";
	if ($output_size == 1){
		print BB "Bool(OUTPUT)\n";
	}else{
		print BB "Bits(OUTPUT, width = $output_size)\n";
	}

	$bb_body = $bb_body."\tio.".$output_name.".setName(\"".$output_name."\")\n";
}

if ($ap_clk eq 1){
	$bb_body = $bb_body."addClock(Driver\.implicitClock)\n".'renameClock("clk", "ap_clk")'."\n";
}

if ($ap_rst eq 1){
	$bb_body = $bb_body.'renameReset("ap_rst")'."\n";
}

print BB "\t}\n";
#print BB "$bb_body\n";
#print BB "moduleName = "."\"$func_name\"\n";
print BB "}\n";


print "Generating Control file ...\n";

my $control1 = '
package hls_test_c

import Chisel._
//import chisel3._
//import chisel3.util._
import freechips.rocketchip.config.{Parameters, Field}
import freechips.rocketchip.tile._
import freechips.rocketchip.config._
import freechips.rocketchip.coreplex._
import freechips.rocketchip.diplomacy._
import freechips.rocketchip.rocket._
import freechips.rocketchip.tilelink._
import freechips.rocketchip.util.InOrderArbiter
import freechips.rocketchip.system._

class HLStest_cControl(implicit p: Parameters) extends LazyRoCC {
  override lazy val module = new HLStest_cControlModule(this)
}


class HLStest_cControlModule(outer: HLStest_cControl) extends LazyRoCCModule(outer) {

';

$control1 =~ s/test_c/$func_name/g;

open CT, ">$scala_dir/$func_name"."_accel.scala";
print CT $control1;

#TODO modify accelerator arg!
my $control2 = '
val result = Reg(init=Bits(0, width=64))
val respValid = Reg(init=Bool(false))
val rdy = Reg(init=Bool(true))
val busy = Reg(init=Bool(false))
val bufferedCmd = Reg(init=Wire( new RoCCCommand()(p)))

val cmd = Queue(io.cmd)
val funct = bufferedCmd.inst.funct
val rs1 = bufferedCmd.rs1
val rs2 = bufferedCmd.rs2
val rdTag = bufferedCmd.inst.rd
val doAdd = funct === UInt(0)

val idle :: working :: Nil = Enum(UInt(),2)
val state = Reg(init=idle)

//Initialize the buffer? 
when(reset.toBool){
  bufferedCmd.inst.funct := 0.asUInt(7.W)
  bufferedCmd.inst.rs1 := 0.asUInt(5.W)
  bufferedCmd.inst.rs2 := 0.asUInt(5.W)
  bufferedCmd.inst.rd := 0.asUInt(5.W)
  bufferedCmd.inst.opcode := 0.asUInt(5.W)
  bufferedCmd.rs1 := 0.asUInt(64.W)
  bufferedCmd.rs2 := 0.asUInt(64.W)
}

// Assign Outputs to Appropriate registers
io.resp.valid := respValid && bufferedCmd.inst.xd

//need to set rd to the value in the request. Otherwise bad things happen
//in this case, processor stalls
io.resp.bits.rd := rdTag
io.resp.bits.data := result
io.busy := busy
cmd.ready := rdy

//===== Begin Accelerator =====
val accel = Module(new test_c())
accel.io.ap_rst := reset
accel.io.ap_clk := clock

//Acclerator Registers (we buffer inputs to accelerator)
val ap_start = Reg(init=Bool(false))

//Assign Inputs to Accelerator
accel.io.ap_start := ap_start
';
#accel.io.test_c_rs1 := rs1 //ACCEL IO NAME CAN CHANGE (NAMED IN C)
#accel.io.test_c_rs2 := rs2 //ACCEL IO NAME CAN CHANGE (NAMED IN C)
#my $rs1 = $verilog_input_args[0];
#my $rs2 = $verilog_input_args[1];

for( $i = 0; $i < @verilog_input_args; $i = $i + 1 ){
	my $tmp_arg = $verilog_input_args[$i];
	my $number = $i + 1;
	$control2 = $control2."accel.io.$tmp_arg := rs$number\n";
}

if ($ap_return eq 1){
	$control2 = $control2."val ap_return = accel.io.ap_return\n";
}else{
	$control2 = $control2."val ap_return = UInt(4)\n";
}


$control2 = $control2.'//Accelerator Outputs
val ap_done = accel.io.ap_done
val ap_idle = accel.io.ap_idle
val ap_ready = accel.io.ap_ready

//===== End Accelerator =====

//***** Begin Controller State Machine Logic *****
switch(state){
is (idle){
//Waiting for command

when(cmd.fire()){
//We have a valid, unserviced command. This code takes ready low so
//we should not accedently cause an infinite loop

bufferedCmd := cmd.bits //Accelerator takes from bufferedCmd directly
busy := Bool(true)
rdy := Bool(false)
ap_start := Bool(true)
state := working
}
when(respValid && io.resp.ready){
//The processor has read the response.  There is no more data for it
//Drive resp.valid low to avoid stalling processor
respValid := Bool(false)
}
}
is (working){
//Waiting for accelerator to finish

//All of the conditionals below can occure simultaniously
//and should be kept as seperart when statements
when(ap_done){
result := ap_return
respValid := Bool(true)
}
when(ap_ready){
ap_start := Bool(false)
}
when(ap_done && ap_ready){
rdy := Bool(true) // ready to accept new commands
busy := Bool(false) // operation complete, no longer busy
state := idle
}
when(respValid && io.resp.ready){
//The processor has read the response.  There is no more data for it
//Drive resp.valid low to avoid stalling processor
respValid := Bool(false)
}
}
}

// ***** End Controller State Machine Logic *****

// *** Tie off these lines ***
io.interrupt := Bool(false)
// Set this true to trigger an interrupt on the processor (please refer to supervisor documentation)

// MEMORY REQUEST INTERFACE
// We will not be doing any memory ops in this accelerator
io.mem.req.valid := Bool(false)
io.mem.req.bits.addr := Bits(0)
io.mem.req.bits.tag := Bits(0)
io.mem.req.bits.cmd := M_XRD // perform a load (M_XWR for stores)
io.mem.req.bits.typ := MT_D // D = 8 bytes, W = 4, H = 2, B = 1
io.mem.req.bits.data := Bits(0) // we are not performing any stores...
io.mem.invalidate_lr := Bool(false)

//io.imem.acquire.valid := Bool(false)
//io.imem.grant.ready := Bool(false)
//io.autl.acquire.valid := Bool(false)
//io.autl.grant.ready := Bool(false)
//io.iptw.req.valid := Bool(false)
//io.dptw.req.valid := Bool(false)
//io.pptw.req.valid := Bool(false)
}
';
# The sequence of arg 1 and 2 depends on the sequence they show up in the verilog file
# TODO think about a better way to add this
#my $rs1 = $verilog_input_args[0];
#my $rs2 = $verilog_input_args[1];
#$control2 =~ s/test_c_rs1/$rs1/; 
#$control2 =~ s/test_c_rs2/$rs2/; 

# TODO no clock and reset signal
$control2 =~ s/test_c/$func_name/g;

print CT $control2;


print "Generating Config file ...\n";
my $config_path = "$scala_dir/$func_name"."_config.scala";
open CONFIG, ">$config_path";

my $config = 'package hls_test_c

import chisel3._
import freechips.rocketchip.config.{Parameters, Config}
import freechips.rocketchip.diplomacy.LazyModule
import freechips.rocketchip.tile._
import testchipip._
import icenet._
import freechips.rocketchip.coreplex.RocketTilesKey

class HLStest_cExample extends Config((site, here, up) => {
   case RocketTilesKey => up(RocketTilesKey, site) map { r =>
    r.copy(rocc =
      Seq(
        RoCCParams(
          opcodes = OpcodeSet.custom0,
          generator = (p: Parameters) => {
            val hls= LazyModule(new HLStest_cControl()(p))
            hls
          })
       ))
    }
})


class config_name extends Config(new HLStest_cExample ++ new DefaultExampleConfig)
';

$config =~ s/test_c/$func_name/g; 
my $config_name = "HLStest_cConfig";
$config_name =~ s/test_c/$func_name/g; 
$config_name =~ s/_//g; 
$config =~ s/config_name/$config_name/g; 

print CONFIG $config;

print "Generate Default Configs file ...\n";
my $default_configs_path = "$scala_dir/default_configs.scala";
open DEFAULT_CONFIG, ">$default_configs_path";

my $default_configs  ='package hls_test_c
import chisel3._
import freechips.rocketchip.config.{Parameters, Config}
import freechips.rocketchip.coreplex.{WithRoccExample, WithNMemoryChannels, WithNBigCores}
import freechips.rocketchip.diplomacy.LazyModule
import freechips.rocketchip.tile._
import testchipip._
import icenet._

class WithExampleTop extends Config((site, here, up) => {
  case BuildTop => (clock: Clock, reset: Bool, p: Parameters) =>
    Module(LazyModule(new ExampleTop()(p)).module)
})

//class WithPWM extends Config((site, here, up) => {
//  case BuildTop => (clock: Clock, reset: Bool, p: Parameters) =>
//    Module(LazyModule(new ExampleTopWithPWM()(p)).module)
//})

class WithBlockDeviceModel extends Config((site, here, up) => {
  case BuildTop => (clock: Clock, reset: Bool, p: Parameters) => {
    val top = Module(LazyModule(new ExampleTopWithBlockDevice()(p)).module)
    top.connectBlockDeviceModel()
    top
  }
})

class WithSimBlockDevice extends Config((site, here, up) => {
  case BuildTop => (clock: Clock, reset: Bool, p: Parameters) => {
    val top = Module(LazyModule(new ExampleTopWithBlockDevice()(p)).module)
    top.connectSimBlockDevice(clock, reset)
    top
  }
})

class WithLoopbackNIC extends Config((site, here, up) => {
  case NICKey => NICConfig()
  case BuildTop => (clock: Clock, reset: Bool, p: Parameters) => {
    val top = Module(LazyModule(new ExampleTopWithIceNIC()(p)).module)
    top.connectNicLoopback()
    top
  }
})

class WithSimNetwork extends Config((site, here, up) => {
  case NICKey => NICConfig(inBufPackets = 10)
  case BuildTop => (clock: Clock, reset: Bool, p: Parameters) => {
    val top = Module(LazyModule(new ExampleTopWithIceNIC()(p)).module)
    top.connectSimNetwork(clock, reset)
    top
  }
})

class BaseExampleConfig extends Config(
  new freechips.rocketchip.system.DefaultConfig)

class DefaultExampleConfig extends Config(
  new WithExampleTop ++ new BaseExampleConfig)

class RoccExampleConfig extends Config(
  new WithRoccExample ++ new DefaultExampleConfig)

//class PWMConfig extends Config(new WithPWM ++ new BaseExampleConfig)

class SimBlockDeviceConfig extends Config(
  new WithBlockDevice ++ new WithSimBlockDevice ++ new BaseExampleConfig)

class BlockDeviceModelConfig extends Config(
  new WithBlockDevice ++ new WithBlockDeviceModel ++ new BaseExampleConfig)

class LoopbackNICConfig extends Config(
  new WithLoopbackNIC ++ new BaseExampleConfig)

class SimNetworkConfig extends Config(
  new WithSimNetwork ++ new BaseExampleConfig)

class WithTwoTrackers extends WithNBlockDeviceTrackers(2)
class WithFourTrackers extends WithNBlockDeviceTrackers(4)

class WithTwoMemChannels extends WithNMemoryChannels(2)
class WithFourMemChannels extends WithNMemoryChannels(4)

class DualCoreConfig extends Config(
  // Core gets tacked onto existing list
  new WithNBigCores(1) ++ new DefaultExampleConfig)
';

$default_configs =~ s/test_c/$func_name/g; 
print DEFAULT_CONFIG $default_configs;

print "Generate Default Top file ...\n";
my $default_top_path = "$scala_dir/default_top.scala";
open DEFAULT_TOP, ">$default_top_path";

my $default_top  ='package hls_test_c
import chisel3._
import freechips.rocketchip.coreplex._
import freechips.rocketchip.config.Parameters
import freechips.rocketchip.devices.tilelink._
import testchipip._
import icenet._

class ExampleTop(implicit p: Parameters) extends RocketCoreplex
    with HasMasterAXI4MemPort
    with HasPeripheryBootROM
    with HasSystemErrorSlave
    with HasNoDebug
    with HasPeripherySerial {
  override lazy val module = new ExampleTopModule(this)
}

class ExampleTopModule[+L <: ExampleTop](l: L) extends RocketCoreplexModule(l)
    with HasRTCModuleImp
    with HasMasterAXI4MemPortModuleImp
    with HasPeripheryBootROMModuleImp
    with HasNoDebugModuleImp
    with HasPeripherySerialModuleImp

class ExampleTopWithBlockDevice(implicit p: Parameters) extends ExampleTop
    with HasPeripheryBlockDevice {
  override lazy val module = new ExampleTopWithBlockDeviceModule(this)
}

class ExampleTopWithBlockDeviceModule(l: ExampleTopWithBlockDevice)
  extends ExampleTopModule(l)
  with HasPeripheryBlockDeviceModuleImp

class ExampleTopWithIceNIC(implicit p: Parameters) extends ExampleTop
    with HasPeripheryIceNIC {
  override lazy val module = new ExampleTopWithIceNICModule(this)
}

class ExampleTopWithIceNICModule(outer: ExampleTopWithIceNIC)
  extends ExampleTopModule(outer)
  with HasPeripheryIceNICModuleImp
';

$default_top =~ s/test_c/$func_name/g; 
print DEFAULT_TOP $default_top;

print "Generating Test Harness file ...\n";
my $test_path = "$scala_dir/$func_name"."_test.scala";
open TEST, ">$test_path";
my $test_harness = 'package hls_test_c
import chisel3._
import freechips.rocketchip.diplomacy.LazyModule
import freechips.rocketchip.config.{Field, Parameters}
import testchipip.GeneratorApp

case object BuildTop extends Field[(Clock, Bool, Parameters) => ExampleTopModule[ExampleTop]]

class TestHarness(implicit val p: Parameters) extends Module {
  val io = IO(new Bundle {
    val success = Output(Bool())
  })

  val dut = p(BuildTop)(clock, reset.toBool, p)
  dut.connectSimAXIMem()
  io.success := dut.connectSimSerial()
}

object Generator extends GeneratorApp {
  generateFirrtl
}
';
$test_harness =~ s/test_c/$func_name/g; 
print TEST $test_harness;


