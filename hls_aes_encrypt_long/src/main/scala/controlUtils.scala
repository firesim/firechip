package controlUtils

import Chisel._

//This is based on the existing chisel arbiters but has a different implementation
class PriorityArbiterIO[T <: Data](gen: T, n: Int, priorityBits: Int) extends Bundle{
  val in  = Vec(n,  Decoupled(gen) ).flip
  val out = Decoupled(gen)
  val chosen = UInt(OUTPUT, log2Up(n))
  //Priorities of the inputs (0 is max priority)
  val priority = Vec(n, UInt(INPUT, width = priorityBits)).flip
  //val priority = Vec.fill(n)(UInt(INPUT, width = priorityBits))
  //Priority of the outputed value
  val priorityOut = UInt(OUTPUT, width = priorityBits)
  override def cloneType: this.type = new PriorityArbiterIO(gen, n, priorityBits).asInstanceOf[this.type]
}

class PriorityArbiter[T <: Data](gen: T, n: Int, priorityBits: Int) extends Module{
  val io = IO(new PriorityArbiterIO(gen, n, priorityBits))

  //val indexedPriority = io.priority.zipWithIndex;

  //val indexedPriorityValid = indexedPriority.zip(io.in.map(_.valid))

  if(n == 1){
    //No arbitration required!
    io.out.valid := io.in(0).valid
    io.out.bits := io.in(0).bits
    io.chosen := UInt(0)
    io.priorityOut := io.priority(0)
    io.in(0).ready := io.out.ready
  }
  else{

    //val minPriorityValue = indexedPriorityValid.slice(1, n).foldLeft(indexedPriorityValid(0))((a, b) => Mux((a._2 === Bool(false) && b._2 === Bool(true) || (b._2 === Bool(true) && (b._1)._1 < (a._1)._1)), b, a)) //the max priority (smaller priority values are more important)
    
    //The slice is becuase we favor the left element in this simple arbiter
    //We scan from left to right (from the first element to the last) and check 
    //if the next element has a smaller priority value.  If it does, it becomes 
    //the element that is checked against for the remainder of the list.  The slice 
    //is because an initial value has to be given for fold and it makes little sense 
    //to compare the first element with itself.  The (a._1)._1 is accessing the 1st 
    //element of the zipped tuple (prority, index).  The first part of the boolean 
    //function also ensures that if in(0) is not valid but in(y) is valid, that in(y) 
    //is selected even if it has a higher priority value than in(0).  This in effect 
    //allows us to avoid filtering the list to only include valid inputs as a seperate
    //step.
    
    //If no element is valid, in(0) is selected and is connected to the output.
    //Since its valid signal is low, this should have no effect and the priorityOut
    //value should be ignored.
    
    //val chosenPriority = (minPriorityValue._1)._1
    //val chosenInd = UInt((minPriorityValue._1)._2)
    
    //Well ... I was having a bunch of type errors trying to do this functioanlly (chisel/scala type system), so let's do it iterativly

    //The use of var here is based on the chisel implementation of the basic arbiter
    //Normally, we would use a val but, in this case, it appears we can use a var as we are basically
    //proceduarally constructing a tree of muxes.  The initial node is 0 but, on each itteration, 
    //it is set to the muxof the current node and the selected one.  The final value is then connected
    //to the output and contains the whole tree of muxes
    var chosenInd = UInt(0)
    for(i <- 1 until n){
      val chooseThis = (io.in(chosenInd).valid === Bool(false) && io.in(i).valid === Bool(true)) || (io.in(i).valid === Bool(true) && io.priority(i) < io.priority(chosenInd))
      chosenInd = Mux(chooseThis, UInt(i), chosenInd)
    }
    
    //Set IO lines
    for(i <- 0 to n-1 by 1){
      //set the ready lines going to the input ports so that the chosen one
      //gets the value of io.out.ready and the rest get a value of Bool(false)
      io.in(i).ready := (chosenInd === UInt(i)) && io.out.ready
    }

    io.out.valid := io.in(chosenInd).valid
    io.out.bits := io.in(chosenInd).bits
    io.chosen := chosenInd
    io.priorityOut := io.priority(chosenInd)
  }
}

class InitCounter(val n: Int, val initVal: Int) {
  /** current value of the counter */
  val value = if (n == 1) UInt(0) else Reg(init=UInt(initVal, log2Up(n)))
  /** increment the counter
    * @return if the counter is at the max value */
  def inc(): Bool = {
    if (n == 1) Bool(true)
    else {
      val wrap = value === UInt(n-1)
      value := Mux(Bool(!isPow2(n)) && wrap, UInt(0), value + UInt(1))
      wrap
    }
  }
}

object InitCounter
{
  def apply(n: Int, initVal: Int): InitCounter = new InitCounter(n, initVal)
  /** Get a counter which takes an input Bool of when to increment
    * @return a UInt which is the value of the counter and a Bool indicating when the counter resets
    */
  def apply(cond: Bool, n: Int, initVal: Int): (UInt, Bool) = {
    val c = new InitCounter(n, initVal)
    var wrap: Bool = null
    when (cond) { wrap = c.inc() }
    (c.value, cond && wrap)
  }
}

//Really want a way to initialize memory but this will do for now
/*class RegisterQueue[T <: Data](gen: T, val entries: Int,  initVals: Seq[T],
                              pipe: Boolean = false,
                              flow: Boolean = false,
                            _reset: Option[Bool] = None) 
                            extends Module(_reset=_reset)*/

class RegisterQueue[T <: Data](gen: T, val entries: Int,  initVals: Seq[T], pipe: Boolean = false, flow: Boolean = false) extends Module{
  //override val ram = Vec.tabulate(entries)((i) => (if(i<initVals.length) Reg(init=initVals(i)) else Reg(gen)))
  

  /** The I/O for this queue */
  val io = IO(new QueueIO(gen, entries))

  
  //val ending = Vec.fill(entries-initVals.length)(gen)
  val ending = Vec(entries-initVals.length, gen)
  val fullInitVals = Vec(initVals ++ ending)

  val ram = Reg(init=fullInitVals)
  //val ram = Mem(entries, gen)
  //var registers = new ArraySeq(entries)
  //for(i <- 0 until entries){
    //if(i < initVals.length){
      //registers(i) = Reg(init=initVals(i))
    //}
    //else{
      //registers(i) = Reg(gen)
    //}
  //}

  //override val ram = Vec(registers)

  //if(initVals.length < entries)
  //{
    //enq_ptr.value := UInt(initVals.length)
  //}
  //else
  //{
    //maybe_full := Bool(true)
  //}

  val enq_ptr = InitCounter(entries, if(initVals.length < entries) initVals.length else 0)
  val deq_ptr = Counter(entries)
  val maybe_full = Reg(init=(if(initVals.length < entries) Bool(false) else Bool(true)))

  val ptr_match = enq_ptr.value === deq_ptr.value
  val empty = ptr_match && !maybe_full
  val full = ptr_match && maybe_full
  val maybe_flow = Bool(flow) && empty
  val do_flow = maybe_flow && io.deq.ready

  val do_enq = io.enq.ready && io.enq.valid && !do_flow
  val do_deq = io.deq.ready && io.deq.valid && !do_flow
  when (do_enq) {
    ram(enq_ptr.value) := io.enq.bits
    enq_ptr.inc()
  }
  when (do_deq) {
    deq_ptr.inc()
  }
  when (do_enq =/= do_deq) {
    maybe_full := do_enq
  }

  io.deq.valid := !empty || Bool(flow) && io.enq.valid
  io.enq.ready := !full || Bool(pipe) && io.deq.ready
  io.deq.bits := Mux(maybe_flow, io.enq.bits, ram(deq_ptr.value))

  val ptr_diff = enq_ptr.value - deq_ptr.value
  if (isPow2(entries)) {
    io.count := Cat(maybe_full && ptr_match, ptr_diff)
  } else {
    io.count := Mux(ptr_match,
                    Mux(maybe_full,
                      UInt(entries), UInt(0)),
                    Mux(deq_ptr.value > enq_ptr.value,
                      UInt(entries) + ptr_diff, ptr_diff))
  }
}

class ValidDemuxIO(fanout:Int) extends Bundle{
  val validIn = Bool(INPUT)
  val validSelect = UInt(INPUT, log2Up(fanout))
  val validOut = Vec(fanout, Bool(OUTPUT))
  //val validOut = Vec.fill(fanout)(Bool(OUTPUT))

  override def cloneType: this.type = new ValidDemuxIO(fanout).asInstanceOf[this.type]
}

class ValidDemux(fanout:Int) extends Module{
  val io = IO(new ValidDemuxIO(fanout))

  for(i <- 0 until fanout){
    io.validOut(i) := io.validIn && (UInt(i) === io.validSelect)
  }
}

/*
class RegisterQueueTestWrapper(val entries:Int, initVals: Seq[Int]) extends Module{
  val io = IO(new QueueIO(UInt(width=32), entries))
  
  val uintInit = initVals.map(UInt(_))
  val c = Module(new RegisterQueue(UInt(width=32), entries, uintInit))
  io.enq.valid <> c.io.enq.valid
  io.enq.ready <> c.io.enq.ready
  io.enq.bits <> c.io.enq.bits

  io.deq.valid <> c.io.deq.valid
  io.deq.ready <> c.io.deq.ready
  io.deq.bits  <> c.io.deq.bits

  io.count <> c.io.count

}

class RegisterQueueTests(c: RegisterQueueTestWrapper) extends Tester(c){
  poke(c.io.deq.ready, 1)

  expect(c.io.deq.valid, 1)
  expect(c.io.deq.bits, 2)
  expect(c.io.count, 4)

  step(1)
  expect(c.io.deq.valid, 1)
  expect(c.io.deq.bits, 4)
  expect(c.io.count, 3)
  
  step(1)
  expect(c.io.deq.valid, 1)
  expect(c.io.deq.bits, 6)
  expect(c.io.count, 2)

  step(1)
  expect(c.io.deq.valid, 1)
  expect(c.io.deq.bits, 8)
  expect(c.io.count, 1)
  
  step(1)
  expect(c.io.deq.valid, 0)
  expect(c.io.count, 0)

}

class PriorityArbiterTests(c: PriorityArbiter[UInt]) extends Tester(c) {
  //Test when no inputs are valid and output is not ready
  poke(c.io.in(0).valid, 0)
  poke(c.io.in(1).valid, 0)
  poke(c.io.in(2).valid, 0)
  poke(c.io.in(3).valid, 0)

  poke(c.io.in(0).bits, 10)
  poke(c.io.in(1).bits, 11)
  poke(c.io.in(2).bits, 12)
  poke(c.io.in(3).bits, 13)

  poke(c.io.priority(0), 20)
  poke(c.io.priority(1), 21)
  poke(c.io.priority(2), 22)
  poke(c.io.priority(3), 23)

  poke(c.io.out.ready, 0)

  step(1)
  expect(c.io.in(0).ready, 0)
  expect(c.io.in(1).ready, 0)
  expect(c.io.in(2).ready, 0)
  expect(c.io.in(3).ready, 0)

  expect(c.io.out.bits, 10)

  expect(c.io.priorityOut, 20)

  expect(c.io.out.valid, 0)

  step(1)
  //Test when no inputs are valid and output is ready
  poke(c.io.out.ready, 1)

  step(1)
  expect(c.io.in(0).ready, 1)
  expect(c.io.in(1).ready, 0)
  expect(c.io.in(2).ready, 0)
  expect(c.io.in(3).ready, 0)

  expect(c.io.out.bits, 10)

  expect(c.io.priorityOut, 20)

  expect(c.io.out.valid, 0)

  step(1)

  //Test when one input is valid and output is not ready
  poke(c.io.in(0).valid, 0)
  poke(c.io.in(1).valid, 0)
  poke(c.io.in(2).valid, 1)
  poke(c.io.in(3).valid, 0)

  poke(c.io.in(0).bits, 10)
  poke(c.io.in(1).bits, 11)
  poke(c.io.in(2).bits, 12)
  poke(c.io.in(3).bits, 13)

  poke(c.io.priority(0), 20)
  poke(c.io.priority(1), 21)
  poke(c.io.priority(2), 22)
  poke(c.io.priority(3), 23)

  poke(c.io.out.ready, 0)

  step(1)
  expect(c.io.in(0).ready, 0)
  expect(c.io.in(1).ready, 0)
  expect(c.io.in(2).ready, 0)
  expect(c.io.in(3).ready, 0)

  expect(c.io.out.bits, 12)

  expect(c.io.priorityOut, 22)

  expect(c.io.out.valid, 1)

  step(1)

  //Test when one input is valid and output is ready
  poke(c.io.out.ready, 1)

  step(1)
  expect(c.io.in(0).ready, 0)
  expect(c.io.in(1).ready, 0)
  expect(c.io.in(2).ready, 1)
  expect(c.io.in(3).ready, 0)

  expect(c.io.out.bits, 12)

  expect(c.io.priorityOut, 22)

  expect(c.io.out.valid, 1)

  step(1)

  //Test when multiple inputs are valid and one has the lowest priority value, and output is not ready
  poke(c.io.in(0).valid, 1)
  poke(c.io.in(1).valid, 1)
  poke(c.io.in(2).valid, 1)
  poke(c.io.in(3).valid, 1)

  poke(c.io.in(0).bits, 10)
  poke(c.io.in(1).bits, 11)
  poke(c.io.in(2).bits, 12)
  poke(c.io.in(3).bits, 13)

  poke(c.io.priority(0), 20)
  poke(c.io.priority(1), 10)
  poke(c.io.priority(2), 20)
  poke(c.io.priority(3), 20)

  poke(c.io.out.ready, 0)

  step(1)
  expect(c.io.in(0).ready, 0)
  expect(c.io.in(1).ready, 0)
  expect(c.io.in(2).ready, 0)
  expect(c.io.in(3).ready, 0)

  expect(c.io.out.bits, 11)

  expect(c.io.priorityOut, 10)

  expect(c.io.out.valid, 1)

  step(1)
  
  //Test when multiple inputs are valid and one has the lowest priority value, and output is ready
  poke(c.io.out.ready, 1)

  step(1)

  expect(c.io.in(0).ready, 0)
  expect(c.io.in(1).ready, 1)
  expect(c.io.in(2).ready, 0)
  expect(c.io.in(3).ready, 0)

  expect(c.io.out.bits, 11)

  expect(c.io.priorityOut, 10)

  expect(c.io.out.valid, 1)

  step(1)

  //Test when multiple inputs are valid and multiple have the lowest priority value, and output is not ready
  poke(c.io.in(0).valid, 1)
  poke(c.io.in(1).valid, 1)
  poke(c.io.in(2).valid, 1)
  poke(c.io.in(3).valid, 1)

  poke(c.io.in(0).bits, 10)
  poke(c.io.in(1).bits, 11)
  poke(c.io.in(2).bits, 12)
  poke(c.io.in(3).bits, 13)

  poke(c.io.priority(0), 30)
  poke(c.io.priority(1), 30)
  poke(c.io.priority(2), 20)
  poke(c.io.priority(3), 20)

  poke(c.io.out.ready, 0)

  step(1)
  expect(c.io.in(0).ready, 0)
  expect(c.io.in(1).ready, 0)
  expect(c.io.in(2).ready, 0)
  expect(c.io.in(3).ready, 0)

  expect(c.io.out.bits, 12)

  expect(c.io.priorityOut, 20)

  expect(c.io.out.valid, 1)

  step(1)
  
  //Test when multiple inputs are valid and multiple has the lowest priority value, and output is ready
  poke(c.io.out.ready, 1)

  step(1)

  expect(c.io.in(0).ready, 0)
  expect(c.io.in(1).ready, 0)
  expect(c.io.in(2).ready, 1)
  expect(c.io.in(3).ready, 0)

  expect(c.io.out.bits, 12)

  expect(c.io.priorityOut, 20)

  expect(c.io.out.valid, 1)

  step(1)

  //0 is valid lowest priority value, and output is not ready
  poke(c.io.in(0).valid, 1)
  poke(c.io.in(1).valid, 1)
  poke(c.io.in(2).valid, 1)
  poke(c.io.in(3).valid, 1)

  poke(c.io.in(0).bits, 10)
  poke(c.io.in(1).bits, 11)
  poke(c.io.in(2).bits, 12)
  poke(c.io.in(3).bits, 13)

  poke(c.io.priority(0), 10)
  poke(c.io.priority(1), 20)
  poke(c.io.priority(2), 30)
  poke(c.io.priority(3), 40)

  poke(c.io.out.ready, 0)

  step(1)
  expect(c.io.in(0).ready, 0)
  expect(c.io.in(1).ready, 0)
  expect(c.io.in(2).ready, 0)
  expect(c.io.in(3).ready, 0)

  expect(c.io.out.bits, 10)

  expect(c.io.priorityOut, 10)

  expect(c.io.out.valid, 1)

  step(1)
  
  //0 is valid lowest priority value, and output is ready
  //Test when multiple inputs are valid and multiple has the lowest priority value, and output is ready
  poke(c.io.out.ready, 1)

  step(1)

  expect(c.io.in(0).ready, 1)
  expect(c.io.in(1).ready, 0)
  expect(c.io.in(2).ready, 0)
  expect(c.io.in(3).ready, 0)

  expect(c.io.out.bits, 10)

  expect(c.io.priorityOut, 10)

  expect(c.io.out.valid, 1)

}

object PriorityArbiterMain {
  def main(args: Array[String]): Unit = {
    chiselMainTest(args, () => Module(new PriorityArbiter(UInt(width = 32), 4, 32))){c => new PriorityArbiterTests(c)}
    chiselMainTest(args, () => Module(new RegisterQueueTestWrapper(4, List(2, 4, 6, 8)))){
      c => new RegisterQueueTests(c)
    }
  }
}*/
