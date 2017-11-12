
package hls_encode

import Chisel._
//import chisel3._
//import chisel3.util._
//import chisel3.experimental._
import freechips.rocketchip.config.{Parameters, Field}
import freechips.rocketchip.tile._
import freechips.rocketchip.util._


class encode() extends BlackBox() {
	val io = new Bundle {
		val ap_clk = Clock(INPUT)
		val ap_rst = Bool(INPUT)
		val ap_start = Bool(INPUT)
		val xin1 = Bits(INPUT, width = 32)
		val xin2 = Bits(INPUT, width = 32)
		val ap_done = Bool(OUTPUT)
		val ap_idle = Bool(OUTPUT)
		val ap_ready = Bool(OUTPUT)
		val ap_return = Bits(OUTPUT, width = 32)
	}
}
