base_dir=$(abspath ..)
sim_dir=$(abspath .)

PROJECT ?= example
MODEL ?= TestHarness
CONFIG ?= DefaultExampleConfig
CFG_PROJECT ?= $(PROJECT)
TB ?= TestDriver

simv = simv-$(PROJECT)-$(CONFIG)
simv_debug = simv-$(PROJECT)-$(CONFIG)-debug

default: $(simv)

debug: $(simv_debug)

include $(base_dir)/Makefrag

rocketchip_vsrc_dir = $(ROCKETCHIP_DIR)/src/main/resources/vsrc

sim_vsrcs = \
	$(build_dir)/$(PROJECT).$(MODEL).$(CONFIG).v \
	$(base_dir)/icenet/vsrc/SimNetwork.v \
	$(rocketchip_vsrc_dir)/TestDriver.v \
	$(rocketchip_vsrc_dir)/AsyncResetReg.v \
	$(rocketchip_vsrc_dir)/plusarg_reader.v \
	$(base_dir)/testchipip/vsrc/SimSerial.v \
	$(base_dir)/testchipip/vsrc/SimBlockDevice.v \

sim_csrcs = \
	$(base_dir)/icenet/csrc/SimNetwork.cc \
	$(base_dir)/testchipip/csrc/SimSerial.cc \
	$(base_dir)/testchipip/csrc/SimBlockDevice.cc \
	$(base_dir)/testchipip/csrc/blkdev.cc \

VCS = vcs -full64

VCS_OPTS = -notice -line +lint=all,noVCDE,noONGS,noUI -error=PCWM-L -timescale=1ns/10ps -quiet \
	+rad +v2k +vcs+lic+wait \
	+vc+list -CC "-I$(VCS_HOME)/include" \
	-CC "-I$(RISCV)/include -I$(base_dir)/testchipip/csrc -I$(base_dir)/icenet/csrc" \
	-CC "-std=c++11" \
	-CC "-Wl,-rpath,$(RISCV)/lib -Wl,-rpath,$(base_dir)/icenet/build" \
	$(RISCV)/lib/libfesvr.so $(base_dir)/icenet/build/libicenet.so \
	-sverilog \
	+incdir+$(generated_dir) \
	+define+CLOCK_PERIOD=1.0 $(sim_vsrcs) $(sim_csrcs) \
	+define+PRINTF_COND=$(TB).printf_cond \
	+define+STOP_COND=!$(TB).reset \
	+define+RANDOMIZE_MEM_INIT \
	+define+RANDOMIZE_REG_INIT \
	+define+RANDOMIZE_GARBAGE_ASSIGN \
	+define+RANDOMIZE_INVALID_ASSIGN \
	+libext+.v \

verilog: $(sim_vsrcs)

$(simv): $(sim_vsrcs) $(sim_csrcs)
	rm -rf csrc && $(VCS) $(VCS_OPTS) -o $@ \
	-debug_pp

$(simv_debug) : $(sim_vsrcs) $(sim_csrcs)
	rm -rf csrc && $(VCS) $(VCS_OPTS) -o $@ \
	+define+DEBUG -debug_pp

clean:
	rm -rf generated-src csrc simv-* ucli.key vc_hdrs.h

.PHONY: clean
