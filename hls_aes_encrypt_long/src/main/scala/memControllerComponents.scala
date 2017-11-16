package memControl

import Chisel._
import Chisel.ImplicitConversions._
import freechips.rocketchip.tile._
import freechips.rocketchip.config._
import freechips.rocketchip.coreplex._
import freechips.rocketchip.diplomacy._
import freechips.rocketchip.rocket._
import freechips.rocketchip.tilelink._
//import freechips.rocketchip.util.InOrderArbiter
import freechips.rocketchip.util._
import freechips.rocketchip.system._

import vivadoHLS._
import controlUtils._

class RequestParserIO(dataWidth: Int, addrWidth: Int) extends Bundle{
  val reqIn = new ApBusReq(dataWidth, addrWidth).flip
  val reqOut = new ApBusReq(dataWidth, addrWidth)
  val offsetAddr = UInt(INPUT, width=addrWidth)
  val loadOffset = Bool(INPUT)
  override def cloneType: this.type = new RequestParserIO(dataWidth, addrWidth).asInstanceOf[this.type]
}
class RequestParser(dataWidth: Int, addrWidth: Int) extends Module{
  val io = IO(new RequestParserIO(dataWidth, addrWidth))
  
  val offsetReg = Reg(init = UInt(0, width=addrWidth))

  val multAmt = UInt(dataWidth/8)

  when(io.loadOffset){
    offsetReg := io.offsetAddr
  }

  io.reqOut.din     := io.reqIn.din
  io.reqOut.dataout := io.reqIn.dataout
  io.reqOut.size    := io.reqIn.size

  io.reqOut.address := (io.reqIn.address*multAmt) + offsetReg 
}

class TimestampedRequestIO(dataWidth:Int, addrWidth:Int, counterSize: Int) extends Bundle{
  val req = new ApBusReq(dataWidth, addrWidth)
  val timestamp = UInt(INPUT, log2Up(counterSize))
  override def cloneType: this.type = new TimestampedRequestIO(dataWidth, addrWidth, counterSize).asInstanceOf[this.type]
}

class ApBusReqType (dataWidth:Int, addrWidth:Int) extends Bundle{
  //Req specific lines
  //Specifies a write request
  val din     = Bool() //req_din in verilog

  //Lines used for req
  val address     = UInt(width = addrWidth)
  val dataout     = UInt(width = dataWidth)
  val size        = UInt(width = addrWidth)

  override def cloneType: this.type = new ApBusReqType(dataWidth, addrWidth).asInstanceOf[this.type]
}

class TimestampedRequestIOType(dataWidth:Int, addrWidth:Int, counterSize: Int) extends Bundle{
  val req = new ApBusReqType(dataWidth, addrWidth)
  val timestamp = UInt(width = log2Up(counterSize))

  override def cloneType: this.type = new TimestampedRequestIOType(dataWidth, addrWidth, counterSize).asInstanceOf[this.type]
}





class RequestIngestIO(dataWidth: Seq[Int], addrWidth: Seq[Int], counterSize: Int, inputBufferLen: Int) extends Bundle{
  //val reqsIn  = Vec.tabulate(dataWidth.length)((i) => Wire(new ApBusReq(dataWidth(i), addrWidth(i)).flip))
  val reqsIn = HeterogeneousBag(dataWidth.zip(addrWidth).map {
    case (dw, aw) => new ApBusReq(dw, aw)
  }).flip
 
  val reqsFullN = Vec(dataWidth.length, Bool(OUTPUT))
  val reqsWrite = Vec(dataWidth.length, Bool(INPUT)).flip
  //val offsetAddrs = Vec.tabulate(dataWidth.length)((i) => UInt(INPUT, width=addrWidth(i)))
  val offsetAddrs = HeterogeneousBag(addrWidth.map(aw => UInt(INPUT, width = aw)))
  val loadOffsets = Vec(dataWidth.length, Bool(INPUT)).flip

  val newRequests = UInt(OUTPUT, width = log2Up(dataWidth.length)+1) //The number of new requests recieved in this cycle (used to track number of outstanding requests)

  //The widths are the maximums of all of the input widths
  val reqOut = Decoupled(new ApBusReq(dataWidth.max, addrWidth.max))
  val selectedBus = UInt(OUTPUT, log2Up(dataWidth.length))
  override def cloneType: this.type = new RequestIngestIO(dataWidth, addrWidth, counterSize, inputBufferLen).asInstanceOf[this.type]
}

class RequestIngest(dataWidth: Seq[Int], addrWidth: Seq[Int], inputBufferLen: Int) extends Module{
  val busCount = dataWidth.length
  //We only need enough counter values to account for the worst case scenario when memory is stalled and each buffer is filled one at a time
  //Adding an extra 1 is probably overly conservative as the extra one may be reassigned but is not at the front of the queue.  If it was, then a queue is not 
  //Taking the base 2 log and rasing 2 to that power ensures that the overflow semantics are what is expected.  This is important for the priority difference
  val counterSize = BigInt(2).pow(log2Up(inputBufferLen*busCount)).toInt
  
  val io = IO(new RequestIngestIO(dataWidth, addrWidth, counterSize, inputBufferLen))

  val counter = Counter(counterSize)

  val prevTimestamp = Reg(init = UInt(0, width=log2Up(counterSize)))

  val parsers = Vec.tabulate(busCount)((i) => Module(new RequestParser(dataWidth(i), addrWidth(i))).io)

  //val queues = Vec.tabulate(busCount)((i) => Module(new Queue(new TimestampedRequestIOType(dataWidth(i), addrWidth(i), log2Up(counterSize)), inputBufferLen)))
  val queues = Vec.tabulate(busCount)((i) => Module(new Queue(new TimestampedRequestIOType(dataWidth(i), addrWidth(i), log2Up(counterSize)), inputBufferLen)).io)
  /*val queues = HeterogeneousBag(dataWidth.zip(addrWidth).map{ 
      case (dw, aw) => Module(new Queue(new TimestampedRequestIOType(dw, aw, log2Up(counterSize)), inputBufferLen))
  })*/ 
  //Vec.tabulate(busCount)((i) => Module(new Queue(new TimestampedRequestIO(dataWidth(i), addrWidth(i), log2Up(counterSize)), inputBufferLen)).io)

  val arbiter = Module(new PriorityArbiter(new ApBusReq(dataWidth.max, addrWidth.max), busCount, log2Up(counterSize)))

  val incrCounter = io.reqsWrite.reduce(_||_)

  //+1 is because we need to be able to represent 0 and BusCount not BusCount-1
  val requestsUInt = io.reqsWrite.map((x) => Mux(x, UInt(1, width=busCount), UInt(0, width=busCount+1)))
  io.newRequests := requestsUInt.reduce(_+_)

  //Increment counter when any request comes in
  when(incrCounter){
    counter.inc()
  }

  for(i <- 0 until busCount){
    parsers(i).offsetAddr        := io.offsetAddrs(i)
    parsers(i).loadOffset        := io.loadOffsets(i)
    parsers(i).reqIn             := io.reqsIn(i)
    //parsers(i).reqIn           <> io.reqsIn(i)
    queues(i).enq.bits.req       := parsers(i).reqOut
    queues(i).enq.bits.timestamp := counter.value //put in the timestamp! 
    io.reqsFullN(i)              := queues(i).enq.ready
    queues(i).enq.valid          := io.reqsWrite(i)
    queues(i).deq.ready          := arbiter.io.in(i).ready
    arbiter.io.in(i).valid       := queues(i).deq.valid
    arbiter.io.in(i).bits        := queues(i).deq.bits.req
    //Priority is oldest first.  It is defined as the difference from the last serviced timestamp
    //arbiter.io.priority(i)       <> queues(i).deq.bits.timestamp - prevTimestamp //This works even with overlfow so long as counterSize is a power of 2
    val time_diff = queues(i).deq.bits.timestamp - prevTimestamp 
    arbiter.io.priority(i) := time_diff
  }

  when(arbiter.io.out.valid && io.reqOut.ready){
    prevTimestamp := prevTimestamp + arbiter.io.priorityOut
  }

  //io.reqOut := arbiter.io.out
  io.reqOut.valid := arbiter.io.out.valid
  arbiter.io.out.ready := io.reqOut.ready
  io.reqOut.bits := arbiter.io.out.bits
  io.selectedBus := arbiter.io.chosen 
}

class RequestIssuerIO(dataWidth: Int, addrWidth:Int, maxReqWidth:Int, numBus:Int, roccAddrWidth:Int, roccDataWidth:Int, roccTagWidth:Int, roccCmdWidth:Int, roccTypWidth:Int) extends Bundle{
  //Incoming request from arbiter
  val reqIn = Decoupled(new ApBusReq(dataWidth, addrWidth)).flip
  //The bus that the request came from
  val reqBus = UInt(INPUT, width=log2Up(numBus))

  //Lines for table address check and for updating the table
  val accessWidth = UInt(OUTPUT, width=maxReqWidth)
  val accessRead = Bool(INPUT)
  val conflict = Bool(INPUT)
  val tagQueueIO = Decoupled(UInt(OUTPUT, width=roccTagWidth)).flip
  val busNum = UInt(OUTPUT, width=log2Up(numBus))
  
  //RoCC Lines
  val roCCReqAddr  = UInt(OUTPUT, width = roccAddrWidth) // coreMaxAddrBits)
  val roCCReqTag   = UInt(OUTPUT, width = roccTagWidth) //coreDCacheReqTagBits)
  val roCCReqCmd   = UInt(OUTPUT, width = roccCmdWidth) //M_SZ)
  val roCCReqTyp   = UInt(OUTPUT, width = roccTypWidth) //MT_SZ)
  val roCCReqData  = UInt(OUTPUT, width = roccDataWidth) //coreDataBits)
  val roCCReqValid = Bool(OUTPUT)
  val roCCReqRdy   = Bool(INPUT)

  val reqWidth     = UInt(OUTPUT, width = maxReqWidth) //Pass to table to specify width of request

  val reqSent      = Bool(OUTPUT)

  override def cloneType: this.type = new RequestIssuerIO(dataWidth, addrWidth, maxReqWidth, numBus, roccAddrWidth, roccDataWidth, roccTagWidth, roccCmdWidth, roccTypWidth).asInstanceOf[this.type]
}

//maxReqBytes = 8 (64 bit) in our case
class RequestIssuer(dataWidth: Int, addrWidth:Int, maxReqBytes:Int, roccAddrWidth:Int, roccDataWidth:Int, roccTagWidth:Int, roccCmdWidth:Int, roccTypWidth:Int, busDataWidths:Seq[Int]) extends Module{
  val maxReqWidth = log2Up(maxReqBytes)
  val numBus = busDataWidths.length
  val io = IO(new RequestIssuerIO(dataWidth, addrWidth, maxReqWidth, numBus, roccAddrWidth, roccDataWidth, roccTagWidth, roccCmdWidth, roccTypWidth))

  val busByteWidth = Vec(busDataWidths.map((x) => UInt(x)/UInt(8)))
  //val busMemSpec = busByteWidth.map((x) => when(x===UInt(8)){MT_D}.elsewhen(x===UInt(4)){MT_W}.elsewhen(x===UInt(2)){MT_H}.otherwise{MT_B})

  val currentByteWidth = busByteWidth(io.reqBus)


  io.busNum       := io.reqBus
  io.roCCReqAddr  := io.reqIn.bits.address
  io.roCCReqData  := io.reqIn.bits.dataout
  io.roCCReqTag   := io.tagQueueIO.bits
  io.roCCReqCmd   := Mux(io.reqIn.bits.din, M_XWR, M_XRD) //Set the transaction type (Write / Read)
  io.roCCReqTyp   := Mux(currentByteWidth===UInt(8), MT_D, Mux(currentByteWidth===UInt(4), MT_W, Mux(currentByteWidth===UInt(2), MT_H, MT_B))) //Set transaction width
  io.reqWidth     := currentByteWidth

  io.accessWidth  := currentByteWidth

  io.roCCReqValid := io.reqIn.valid && !io.conflict && io.tagQueueIO.valid

  val memTransactSent = io.reqIn.valid && io.roCCReqRdy && !io.conflict && io.tagQueueIO.valid

  io.reqIn.ready  := memTransactSent
  io.tagQueueIO.ready := memTransactSent //We used a tag when we issued a request
  io.reqSent := memTransactSent
}

class RoutingTableIO(tagWidth:Int, numBus:Int, addrWidth: Int, maxReqWidth: Int) extends Bundle{
  val reqValid = Bool(INPUT)
  val reqTag   = UInt(INPUT, width = tagWidth)
  val reqWrite = Bool(INPUT) //If the transaction is a write
  val reqAddr  = UInt(INPUT, width = addrWidth)
  val reqBus   = UInt(INPUT, log2Up(numBus))
  val reqWidth = UInt(INPUT, width = maxReqWidth)

  val checkAddr = UInt(INPUT, width = addrWidth)
  val checkWidth = UInt(INPUT, width = maxReqWidth)
  val checkRead = Bool(INPUT)
  val conflict = Bool(OUTPUT)

  val respTag  = UInt(INPUT, width = tagWidth)
  val respVaid = Bool(INPUT)
  val respBus =  UInt(OUTPUT, width = log2Up(numBus))
  override def cloneType: this.type = new RoutingTableIO(tagWidth, numBus, addrWidth, maxReqWidth).asInstanceOf[this.type]
}

//maxReqBytes = 8 (64 bit) in our case
class RoutingTable(tagWidth:Int, numTags:Int, numBus:Int, addrWidth: Int, maxReqBytes: Int) extends Module{
  val maxReqWidth = log2Up(maxReqBytes)
  //val numTags = BigInt(2).pow(tagWidth).toInt

  val io = IO(new RoutingTableIO(tagWidth, numBus, addrWidth, maxReqWidth))

  val v = Reg(Vec.fill(numTags)(Bool(false))) //valid (outstanding memory request)
  val write = Reg(Vec.fill(numTags)(Bool(false))) //outstanding request is a write
  val addr = Reg(Vec.fill(numTags)(UInt(0, width=addrWidth)))
  val width = Reg(Vec.fill(numTags)(UInt(0, width=maxReqWidth)))
  val bus = Reg(Vec.fill(numTags)(UInt(0, width=log2Up(numBus))))

  //write Req into table 
  when(io.reqValid){
    v(io.reqTag) := Bool(true)       //Set table entry as valid
    write(io.reqTag) := io.reqWrite  //Set write flag
    addr(io.reqTag)  := io.reqAddr   //Set addr
    width(io.reqTag) := io.reqWidth  //Set transaction width (in bytes)
    bus(io.reqTag)   := io.reqBus    //Set the requesting bus
  }

  //clear returned transaction.  The tag queue prevents accedently claring a tag that has not yet returned
  when(io.respVaid){
    v(io.respTag) := Bool(false) //This entry is no longer valid
  }

  //Return the bus that requsted the returning transaction
  io.respBus := bus(io.respTag)

  //Reads can execute if there is no outstanding write to the address (v==false || write==false)
  //    Reads stall when v==true and write==true
    
  //Writes can only occure if there are no outstanding ops (v==false)
  //    Writes stall when v==true

  val addrsConflicting = Vec.tabulate(numTags)((i) => !((io.checkAddr + io.checkWidth <= addr(i)) || (addr(i) + width(i) <= io.checkAddr)))

  //There is a conflict if: the address is conflicting, the entry is valid, and if(reading, there is an outstanding write)
  val conflicting = Vec.tabulate(numTags)((i) => addrsConflicting(i) && v(i) && Mux(io.checkRead, write(i), Bool(true)))

  io.conflict := conflicting.reduce(_||_)
}

class MemControllerIO(dataWidth:Seq[Int], addrWidth:Seq[Int], roccAddrWidth:Int, roccDataWidth:Int, roccTagWidth:Int, roccCmdWidth:Int, roccTypWidth:Int) extends Bundle{
  //----ap_bus requests----
  val reqsIn = HeterogeneousBag(dataWidth.zip(addrWidth).map {
    case (dw, aw) => new ApBusReq(dw, aw)
  }).flip
  //Decoupled signals for requests
  val reqsFullN = Vec(dataWidth.length, Bool(OUTPUT))
  val reqsWrite = Vec(dataWidth.length, Bool(INPUT)).flip
//Offset address lines
  //val offsetAddrs = Vec.tabulate(dataWidth.length)((i) => UInt(INPUT, width=addrWidth(i)))
  val offsetAddrs = HeterogeneousBag(addrWidth.map(aw => UInt(INPUT, width = aw)))
  val loadOffsets = Vec(dataWidth.length, Bool(INPUT)).flip

  //----status line----
  val memBusy = Bool(OUTPUT)

  //----ap_bus response----
  //val rspOut  = Vec.tabulate(dataWidth.length)((i) => new ApBusRsp(dataWidth(i)).flip)
  val rspOut = HeterogeneousBag(dataWidth.map(dw => new ApBusRsp(dw))).flip
  val rsp_empty_n = Vec(dataWidth.length, Bool(OUTPUT)) //This is the same as valid
  val rsp_read    = Vec(dataWidth.length, Bool(INPUT)).flip  //This is the same as ready

  //----RoCC Mem Req----
  val roCCReqAddr  = UInt(OUTPUT, width = roccAddrWidth) // coreMaxAddrBits)
  val roCCReqTag   = UInt(OUTPUT, width = roccTagWidth) //coreDCacheReqTagBits)
  val roCCReqCmd   = UInt(OUTPUT, width = roccCmdWidth) //M_SZ)
  val roCCReqTyp   = UInt(OUTPUT, width = roccTypWidth) //MT_SZ)
  val roCCReqData  = UInt(OUTPUT, width = roccDataWidth) //
  val roCCReqValid = Bool(OUTPUT)
  val roCCReqRdy   = Bool(INPUT)

  //val roCCRespAddr  = UInt(INPUT, width = roccAddrWidth) // coreMaxAddrBits)
  val roCCRspTag   = UInt(INPUT, width = roccTagWidth) //coreDCacheReqTagBits)
  val roCCRspCmd   = UInt(INPUT, width = roccCmdWidth) //M_SZ)
  val roCCRspData  = UInt(INPUT, width = roccDataWidth) //MT_SZ)
  //val roCCRespTyp   = UInt(INPUT, width = roccTypWidth) //MT_SZ)
  val roCCRspValid = Bool(INPUT)
  override def cloneType: this.type = new MemControllerIO(dataWidth, addrWidth, roccAddrWidth, roccDataWidth, roccTagWidth, roccCmdWidth, roccTypWidth).asInstanceOf[this.type]
}

class MemController(dataWidth:Seq[Int], addrWidth:Seq[Int], reqBufferLen:Int, rspBufferLen:Int, maxReqBytes:Int, roccAddrWidth:Int, roccDataWidth:Int, roccTagWidth:Int, roccCmdWidth:Int, roccTypWidth:Int, numTags:Int, tagOffset:Int ) extends Module{
  val io = IO(new MemControllerIO(dataWidth, addrWidth, roccAddrWidth, roccDataWidth, roccTagWidth, roccCmdWidth, roccTypWidth))

  val numBus = dataWidth.length
  val reqIngest = Module(new RequestIngest(dataWidth, addrWidth, reqBufferLen))
  val reqIssuer = Module(new RequestIssuer(dataWidth.max, addrWidth.max, maxReqBytes, roccAddrWidth, roccDataWidth, roccTagWidth, roccCmdWidth, roccTypWidth, dataWidth))
  val scoreboard = Module(new RoutingTable(roccTagWidth, numTags, numBus, addrWidth.max, maxReqBytes))
  
  //Tags may have an offset if this is not the only accelerator in the system
  val tags = (tagOffset until (tagOffset+numTags))
  val tagUInts = tags.map((x) => UInt(x, width=roccTagWidth).asUInt)
  val tagQueue = Module(new RegisterQueue(gen=UInt(width=roccTagWidth),  entries=numTags,  initVals=tagUInts, flow=true))
  val rspQueues = Vec.tabulate(numBus)((i) => Module(new Queue(UInt(width=dataWidth(i)), rspBufferLen)).io)
  val validDemux = Module(new ValidDemux(numBus))

  val currentRequestNum = Reg(init=UInt(0, width=(reqBufferLen*numBus+1+numTags)))

  //Logic for number of outstanding requests
  currentRequestNum := currentRequestNum + reqIngest.io.newRequests - Mux(io.roCCRspValid, UInt(1), UInt(0))
  io.memBusy := currentRequestNum =/= UInt(0)

  //==== Ingest Logic ====
  //Hook up ap_bus request lines to ingest logic
  //reqIngest.io.reqsIn      <> io.reqsIn
  reqIngest.io.reqsIn  := io.reqsIn
  io.reqsFullN              := reqIngest.io.reqsFullN
  reqIngest.io.reqsWrite    <> io.reqsWrite
  //reqIngest.io.offsetAddrs  := io.offsetAddrs
  io.offsetAddrs  := reqIngest.io.offsetAddrs
  reqIngest.io.loadOffsets  <> io.loadOffsets

  //val newRequests

  //val reqOut  
  //val selectedBus 

  //====Req Issuer ====
  //Incoming request from arbiter
  //reqIssuer.io.reqIn <> reqIngest.io.reqOut
  reqIssuer.io.reqIn.bits   := reqIngest.io.reqOut.bits
  reqIssuer.io.reqIn.valid  := reqIngest.io.reqOut.valid
  reqIngest.io.reqOut.ready := reqIssuer.io.reqIn.ready
  //The bus that the request came from
  reqIssuer.io.reqBus := reqIngest.io.selectedBus

  //Lines for table address check and for updating the table
  //val accessWidth 
  //val containsAddr 
  //reqIssuer.io.tagQueue <> tagQueue.io.deq
  reqIssuer.io.tagQueueIO.bits  := tagQueue.io.deq.bits
  reqIssuer.io.tagQueueIO.valid := tagQueue.io.deq.valid
  tagQueue.io.deq.ready       := reqIssuer.io.tagQueueIO.ready
  //val busNum  
  //val reqWidth   //Pass to table to specify width of request 
  
  //RoCC Lines
  io.roCCReqAddr          := reqIssuer.io.roCCReqAddr  
  io.roCCReqTag           := reqIssuer.io.roCCReqTag   
  io.roCCReqCmd           := reqIssuer.io.roCCReqCmd
  io.roCCReqTyp           := reqIssuer.io.roCCReqTyp
  io.roCCReqValid         := reqIssuer.io.roCCReqValid
  reqIssuer.io.roCCReqRdy := io.roCCReqRdy
  io.roCCReqData          := reqIssuer.io.roCCReqData

  //====Scoreboard====
  scoreboard.io.reqValid :=  reqIssuer.io.reqSent //Do not commit into the table unles there is a fire
  scoreboard.io.reqTag   :=  reqIssuer.io.roCCReqTag
  scoreboard.io.reqWrite := (reqIssuer.io.roCCReqCmd === M_XWR)  //If the transaction is a write
  scoreboard.io.reqAddr  :=  reqIssuer.io.roCCReqAddr 
  scoreboard.io.reqBus   :=  reqIssuer.io.busNum
  scoreboard.io.reqWidth :=  reqIssuer.io.reqWidth

  scoreboard.io.checkAddr   := reqIssuer.io.roCCReqAddr 
  scoreboard.io.checkWidth  := reqIssuer.io.accessWidth
  scoreboard.io.checkRead   := reqIssuer.io.accessRead
  reqIssuer.io.conflict     := scoreboard.io.conflict

  scoreboard.io.respTag  := io.roCCRspTag
  scoreboard.io.respVaid := io.roCCRspValid
  //val scoreboard.io.respBus 

  //====TagQueue====
  tagQueue.io.enq.bits  := io.roCCRspTag
  tagQueue.io.enq.valid := io.roCCRspValid

  //====Demux=====
  validDemux.io.validIn     := io.roCCRspValid && io.roCCRspCmd===M_XRD //Only return to the bus if this is a response to a read request
  validDemux.io.validSelect := scoreboard.io.respBus
  //val validOut = Vec.fill(fanout)(Bool(OUTPUT))

  //====RespQueues====
  for(i <- 0 until numBus){
    rspQueues(i).enq.bits  := io.roCCRspData((dataWidth(i)-1),0) //Pass the data to all output queues (slicing to approprite width), only give one the valid signal
    rspQueues(i).enq.valid := validDemux.io.validOut(i)
    io.rspOut(i).datain    := rspQueues(i).deq.bits
    io.rsp_empty_n(i)      := rspQueues(i).deq.valid
    rspQueues(i).deq.ready := io.rsp_read(i)
  }
}
