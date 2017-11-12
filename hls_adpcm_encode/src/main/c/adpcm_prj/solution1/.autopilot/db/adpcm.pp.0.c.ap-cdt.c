#pragma line 1 "adpcm.c"
#pragma line 1 "adpcm.c" 1
#pragma line 1 "<built-in>" 1
#pragma line 1 "<built-in>" 3
#pragma line 149 "<built-in>" 3
#pragma line 1 "<command line>" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/ecad/tools/xilinx/Vivado_HLS/2015.2/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
/* autopilot_ssdm_op.h*/
/*
#-  (c) Copyright 2011-2015 Xilinx, Inc. All rights reserved.
#-
#-  This file contains confidential and proprietary information
#-  of Xilinx, Inc. and is protected under U.S. and
#-  international copyright and other intellectual property
#-  laws.
#-
#-  DISCLAIMER
#-  This disclaimer is not a license and does not grant any
#-  rights to the materials distributed herewith. Except as
#-  otherwise provided in a valid license issued to you by
#-  Xilinx, and to the maximum extent permitted by applicable
#-  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#-  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
#-  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#-  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#-  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#-  (2) Xilinx shall not be liable (whether in contract or tort,
#-  including negligence, or under any other theory of
#-  liability) for any loss or damage of any kind or nature
#-  related to, arising under or in connection with these
#-  materials, including for any direct, or any indirect,
#-  special, incidental, or consequential loss or damage
#-  (including loss of data, profits, goodwill, or any type of
#-  loss or damage suffered as a result of any action brought
#-  by a third party) even if such damage or loss was
#-  reasonably foreseeable or Xilinx had been advised of the
#-  possibility of the same.
#-
#-  CRITICAL APPLICATIONS
#-  Xilinx products are not designed or intended to be fail-
#-  safe, or for use in any application requiring fail-safe
#-  performance, such as life-support or safety devices or
#-  systems, Class III medical devices, nuclear facilities,
#-  applications related to the deployment of airbags, or any
#-  other applications that could lead to death, personal
#-  injury, or severe property or environmental damage
#-  (individually and collectively, "Critical
#-  Applications"). Customer assumes the sole risk and
#-  liability of any use of Xilinx products in Critical
#-  Applications, subject only to applicable laws and
#-  regulations governing limitations on product liability.
#-
#-  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#-  PART OF THIS FILE AT ALL TIMES. 
#- ************************************************************************
#pragma empty_line
 *
 * $Id$
 */
#pragma line 280 "/ecad/tools/xilinx/Vivado_HLS/2015.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
/*#define AP_SPEC_ATTR __attribute__ ((pure))*/
#pragma empty_line
#pragma empty_line
#pragma empty_line
    /****** SSDM Intrinsics: OPERATIONS ***/
    // Interface operations
    //typedef unsigned int __attribute__ ((bitwidth(1))) _uint1_;
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    //_uint1_ _ssdm_op_IfNbRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfNbWrite() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanWrite() SSDM_OP_ATTR;
#pragma empty_line
    // Stream Intrinsics
    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    //_uint1_  _ssdm_StreamNbRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamNbWrite() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanWrite() SSDM_OP_ATTR;
#pragma empty_line
    // Misc
    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_Return() __attribute__ ((nothrow));
#pragma empty_line
    /* SSDM Intrinsics: SPECIFICATIONS */
    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecReset() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));
#pragma empty_line
    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));
#pragma empty_line
    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecExt() __attribute__ ((nothrow));
    /*void* _ssdm_op_SpecProcess() SSDM_SPEC_ATTR;
    void* _ssdm_op_SpecEdge() SSDM_SPEC_ATTR; */
#pragma empty_line
    /* Presynthesis directive functions */
    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecStream() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecDependence() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
/*#define _ssdm_op_WaitUntil(X) while (!(X)) _ssdm_op_Wait(1);
#define _ssdm_op_Delayed(X) X */
#pragma line 6 "<command line>" 2
#pragma line 1 "<built-in>" 2
#pragma line 1 "adpcm.c" 2
/*
+--------------------------------------------------------------------------+
| CHStone : a suite of benchmark programs for C-based High-Level Synthesis |
| ======================================================================== |
|                                                                          |
| * Collected and Modified : Y. Hara, H. Tomiyama, S. Honda,               |
|                            H. Takada and K. Ishii                        |
|                            Nagoya University, Japan                      |
|                                                                          |
| * Remark :                                                               |
|    1. This source code is modified to unify the formats of the benchmark |
|       programs in CHStone.                                               |
|    2. Test vectors are added for CHStone.                                |
|    3. If "main_result" is 0 at the end of the program, the program is    |
|       correctly executed.                                                |
|    4. Please follow the copyright of each benchmark program.             |
+--------------------------------------------------------------------------+
*/
/*************************************************************************/
/*                                                                       */
/*   SNU-RT Benchmark Suite for Worst Case Timing Analysis               */
/*   =====================================================               */
/*                              Collected and Modified by S.-S. Lim      */
/*                                           sslim@archi.snu.ac.kr       */
/*                                         Real-Time Research Group      */
/*                                        Seoul National University      */
/*                                                                       */
/*                                                                       */
/*        < Features > - restrictions for our experimental environment   */
/*                                                                       */
/*          1. Completely structured.                                    */
/*               - There are no unconditional jumps.                     */
/*               - There are no exit from loop bodies.                   */
/*                 (There are no 'break' or 'return' in loop bodies)     */
/*          2. No 'switch' statements.                                   */
/*          3. No 'do..while' statements.                                */
/*          4. Expressions are restricted.                               */
/*               - There are no multiple expressions joined by 'or',     */
/*                'and' operations.                                      */
/*          5. No library calls.                                         */
/*               - All the functions needed are implemented in the       */
/*                 source file.                                          */
/*                                                                       */
/*                                                                       */
/*************************************************************************/
/*                                                                       */
/*  FILE: adpcm.c                                                        */
/*  SOURCE : C Algorithms for Real-Time DSP by P. M. Embree              */
/*                                                                       */
/*  DESCRIPTION :                                                        */
/*                                                                       */
/*     CCITT G.722 ADPCM (Adaptive Differential Pulse Code Modulation)   */
/*     algorithm.                                                        */
/*     16khz sample rate data is stored in the array test_data[SIZE].    */
/*     Results are stored in the array compressed[SIZE] and result[SIZE].*/
/*     Execution time is determined by the constant SIZE (default value  */
/*     is 2000).                                                         */
/*                                                                       */
/*  REMARK :                                                             */
/*                                                                       */
/*  EXECUTION TIME :                                                     */
/*                                                                       */
/*                                                                       */
/*************************************************************************/
//#include <stdio.h>
#pragma empty_line
int encode (int, int);
void decode (int);
int filtez (int *bpl, int *dlt);
void upzero (int dlt, int *dlti, int *bli);
int filtep (int rlt1, int al1, int rlt2, int al2);
int quantl (int el, int detl);
int logscl (int il, int nbl);
int scalel (int nbl, int shift_constant);
int uppol2 (int al1, int al2, int plt, int plt1, int plt2);
int uppol1 (int al1, int apl2, int plt, int plt1);
int logsch (int ih, int nbh);
void reset ();
#pragma empty_line
/* G722 C code */
#pragma empty_line
/* variables for transimit quadrature mirror filter here */
int tqmf[24];
#pragma empty_line
/* QMF filter coefficients:
scaled by a factor of 4 compared to G722 CCITT recomendation */
const int h[24] = {
  12, -44, -44, 212, 48, -624, 128, 1448,
  -840, -3220, 3804, 15504, 15504, 3804, -3220, -840,
  1448, 128, -624, 48, 212, -44, -44, 12
};
#pragma empty_line
int xl, xh;
#pragma empty_line
/* variables for receive quadrature mirror filter here */
int accumc[11], accumd[11];
#pragma empty_line
/* outputs of decode() */
int xout1, xout2;
#pragma empty_line
int xs, xd;
#pragma empty_line
/* variables for encoder (hi and lo) here */
#pragma empty_line
int il, szl, spl, sl, el;
#pragma empty_line
const int qq4_code4_table[16] = {
  0, -20456, -12896, -8968, -6288, -4240, -2584, -1200,
  20456, 12896, 8968, 6288, 4240, 2584, 1200, 0
};
#pragma empty_line
#pragma empty_line
const int qq6_code6_table[64] = {
  -136, -136, -136, -136, -24808, -21904, -19008, -16704,
  -14984, -13512, -12280, -11192, -10232, -9360, -8576, -7856,
  -7192, -6576, -6000, -5456, -4944, -4464, -4008, -3576,
  -3168, -2776, -2400, -2032, -1688, -1360, -1040, -728,
  24808, 21904, 19008, 16704, 14984, 13512, 12280, 11192,
  10232, 9360, 8576, 7856, 7192, 6576, 6000, 5456,
  4944, 4464, 4008, 3576, 3168, 2776, 2400, 2032,
  1688, 1360, 1040, 728, 432, 136, -432, -136
};
#pragma empty_line
int delay_bpl[6];
#pragma empty_line
int delay_dltx[6];
#pragma empty_line
const int wl_code_table[16] = {
  -60, 3042, 1198, 538, 334, 172, 58, -30,
  3042, 1198, 538, 334, 172, 58, -30, -60
};
#pragma empty_line
const int ilb_table[32] = {
  2048, 2093, 2139, 2186, 2233, 2282, 2332, 2383,
  2435, 2489, 2543, 2599, 2656, 2714, 2774, 2834,
  2896, 2960, 3025, 3091, 3158, 3228, 3298, 3371,
  3444, 3520, 3597, 3676, 3756, 3838, 3922, 4008
};
#pragma empty_line
int nbl; /* delay line */
int al1, al2;
int plt, plt1, plt2;
int dlt;
int rlt, rlt1, rlt2;
#pragma empty_line
/* decision levels - pre-multiplied by 8, 0 to indicate end */
const int decis_levl[30] = {
  280, 576, 880, 1200, 1520, 1864, 2208, 2584,
  2960, 3376, 3784, 4240, 4696, 5200, 5712, 6288,
  6864, 7520, 8184, 8968, 9752, 10712, 11664, 12896,
  14120, 15840, 17560, 20456, 23352, 32767
};
#pragma empty_line
int detl;
#pragma empty_line
/* quantization table 31 long to make quantl look-up easier,
last entry is for mil=30 case when wd is max */
const int quant26bt_pos[31] = {
  61, 60, 59, 58, 57, 56, 55, 54,
  53, 52, 51, 50, 49, 48, 47, 46,
  45, 44, 43, 42, 41, 40, 39, 38,
  37, 36, 35, 34, 33, 32, 32
};
#pragma empty_line
/* quantization table 31 long to make quantl look-up easier,
last entry is for mil=30 case when wd is max */
const int quant26bt_neg[31] = {
  63, 62, 31, 30, 29, 28, 27, 26,
  25, 24, 23, 22, 21, 20, 19, 18,
  17, 16, 15, 14, 13, 12, 11, 10,
  9, 8, 7, 6, 5, 4, 4
};
#pragma empty_line
#pragma empty_line
int deth;
int sh; /* this comes from adaptive predictor */
int eh;
#pragma empty_line
const int qq2_code2_table[4] = {
  -7408, -1616, 7408, 1616
};
#pragma empty_line
const int wh_code_table[4] = {
  798, -214, 798, -214
};
#pragma empty_line
#pragma empty_line
int dh, ih;
int nbh, szh;
int sph, ph, yh, rh;
#pragma empty_line
int delay_dhx[6];
#pragma empty_line
int delay_bph[6];
#pragma empty_line
int ah1, ah2;
int ph1, ph2;
int rh1, rh2;
#pragma empty_line
/* variables for decoder here */
int ilr, rl;
int dec_deth, dec_detl, dec_dlt;
#pragma empty_line
int dec_del_bpl[6];
#pragma empty_line
int dec_del_dltx[6];
#pragma empty_line
int dec_plt, dec_plt1, dec_plt2;
int dec_szl, dec_spl, dec_sl;
int dec_rlt1, dec_rlt2, dec_rlt;
int dec_al1, dec_al2;
int dl;
int dec_nbl, dec_dh, dec_nbh;
#pragma empty_line
/* variables used in filtez */
int dec_del_bph[6];
#pragma empty_line
int dec_del_dhx[6];
#pragma empty_line
int dec_szh;
/* variables used in filtep */
int dec_rh1, dec_rh2;
int dec_ah1, dec_ah2;
int dec_ph, dec_sph;
#pragma empty_line
int dec_sh;
#pragma empty_line
int dec_ph1, dec_ph2;
#pragma empty_line
/* G722 encode function two ints in, one 8 bit output */
#pragma empty_line
/* put input samples in xin1 = first value, xin2 = second value */
/* returns il and ih stored together */
#pragma empty_line
int
abs (int n)
{
  int m;
#pragma empty_line
  if (n >= 0)
    m = n;
  else
    m = -n;
  return m;
}
#pragma empty_line
int
encode (int xin1, int xin2)
{
  int i;
  const int *h_ptr;
  int *tqmf_ptr, *tqmf_ptr1;
  long int xa, xb;
  int decis;
#pragma empty_line
/* transmit quadrature mirror filters implemented here */
  h_ptr = h;
  tqmf_ptr = tqmf;
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa += (long) (*tqmf_ptr++) * (*h_ptr++);
  xb += (long) (*tqmf_ptr) * (*h_ptr++);
#pragma empty_line
/* update delay line tqmf */
  tqmf_ptr1 = tqmf_ptr - 2;
  for (i = 0; i < 22; i++)
    *tqmf_ptr-- = *tqmf_ptr1--;
  *tqmf_ptr-- = xin1;
  *tqmf_ptr = xin2;
#pragma empty_line
/* scale outputs */
  xl = (xa + xb) >> 15;
  xh = (xa - xb) >> 15;
#pragma empty_line
/* end of quadrature mirror filter code */
#pragma empty_line
/* starting with lower sub band encoder */
#pragma empty_line
/* filtez - compute predictor output section - zero section */
  szl = filtez (delay_bpl, delay_dltx);
#pragma empty_line
/* filtep - compute predictor output signal (pole section) */
  spl = filtep (rlt1, al1, rlt2, al2);
#pragma empty_line
/* compute the predictor output value in the lower sub_band encoder */
  sl = szl + spl;
  el = xl - sl;
#pragma empty_line
/* quantl: quantize the difference signal */
  il = quantl (el, detl);
#pragma empty_line
/* computes quantized difference signal */
/* for invqbl, truncate by 2 lsbs, so mode = 3 */
  dlt = ((long) detl * qq4_code4_table[il >> 2]) >> 15;
#pragma empty_line
/* logscl: updates logarithmic quant. scale factor in low sub band */
  nbl = logscl (il, nbl);
#pragma empty_line
/* scalel: compute the quantizer scale factor in the lower sub band */
/* calling parameters nbl and 8 (constant such that scalel can be scaleh) */
  detl = scalel (nbl, 8);
#pragma empty_line
/* parrec - simple addition to compute recontructed signal for adaptive pred */
  plt = dlt + szl;
#pragma empty_line
/* upzero: update zero section predictor coefficients (sixth order)*/
/* calling parameters: dlt, dlt1, dlt2, ..., dlt6 from dlt */
/*  bpli (linear_buffer in which all six values are delayed */
/* return params:      updated bpli, delayed dltx */
  upzero (dlt, delay_dltx, delay_bpl);
#pragma empty_line
/* uppol2- update second predictor coefficient apl2 and delay it as al2 */
/* calling parameters: al1, al2, plt, plt1, plt2 */
  al2 = uppol2 (al1, al2, plt, plt1, plt2);
#pragma empty_line
/* uppol1 :update first predictor coefficient apl1 and delay it as al1 */
/* calling parameters: al1, apl2, plt, plt1 */
  al1 = uppol1 (al1, al2, plt, plt1);
#pragma empty_line
/* recons : compute recontructed signal for adaptive predictor */
  rlt = sl + dlt;
#pragma empty_line
/* done with lower sub_band encoder; now implement delays for next time*/
  rlt2 = rlt1;
  rlt1 = rlt;
  plt2 = plt1;
  plt1 = plt;
#pragma empty_line
/* high band encode */
#pragma empty_line
  szh = filtez (delay_bph, delay_dhx);
#pragma empty_line
  sph = filtep (rh1, ah1, rh2, ah2);
#pragma empty_line
/* predic: sh = sph + szh */
  sh = sph + szh;
/* subtra: eh = xh - sh */
  eh = xh - sh;
#pragma empty_line
/* quanth - quantization of difference signal for higher sub-band */
/* quanth: in-place for speed params: eh, deth (has init. value) */
  if (eh >= 0)
    {
      ih = 3; /* 2,3 are pos codes */
    }
  else
    {
      ih = 1; /* 0,1 are neg codes */
    }
  decis = (564L * (long) deth) >> 12L;
  if (abs (eh) > decis)
    ih--; /* mih = 2 case */
#pragma empty_line
/* compute the quantized difference signal, higher sub-band*/
  dh = ((long) deth * qq2_code2_table[ih]) >> 15L;
#pragma empty_line
/* logsch: update logarithmic quantizer scale factor in hi sub-band*/
  nbh = logsch (ih, nbh);
#pragma empty_line
/* note : scalel and scaleh use same code, different parameters */
  deth = scalel (nbh, 10);
#pragma empty_line
/* parrec - add pole predictor output to quantized diff. signal */
  ph = dh + szh;
#pragma empty_line
/* upzero: update zero section predictor coefficients (sixth order) */
/* calling parameters: dh, dhi, bphi */
/* return params: updated bphi, delayed dhx */
  upzero (dh, delay_dhx, delay_bph);
#pragma empty_line
/* uppol2: update second predictor coef aph2 and delay as ah2 */
/* calling params: ah1, ah2, ph, ph1, ph2 */
  ah2 = uppol2 (ah1, ah2, ph, ph1, ph2);
#pragma empty_line
/* uppol1:  update first predictor coef. aph2 and delay it as ah1 */
  ah1 = uppol1 (ah1, ah2, ph, ph1);
#pragma empty_line
/* recons for higher sub-band */
  yh = sh + dh;
#pragma empty_line
/* done with higher sub-band encoder, now Delay for next time */
  rh2 = rh1;
  rh1 = yh;
  ph2 = ph1;
  ph1 = ph;
#pragma empty_line
/* multiplex ih and il to get signals together */
  return (il | (ih << 6));
}
#pragma empty_line
/* decode function, result in xout1 and xout2 */
#pragma empty_line
void
decode (int input)
{
  int i;
  long int xa1, xa2; /* qmf accumulators */
  const int *h_ptr;
  int *ac_ptr, *ac_ptr1, *ad_ptr, *ad_ptr1;
#pragma empty_line
/* split transmitted word from input into ilr and ih */
  ilr = input & 0x3f;
  ih = input >> 6;
#pragma empty_line
/* LOWER SUB_BAND DECODER */
#pragma empty_line
/* filtez: compute predictor output for zero section */
  dec_szl = filtez (dec_del_bpl, dec_del_dltx);
#pragma empty_line
/* filtep: compute predictor output signal for pole section */
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);
#pragma empty_line
  dec_sl = dec_spl + dec_szl;
#pragma empty_line
/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;
#pragma empty_line
/* compute quantized difference signal for decoder output */
  dl = ((long) dec_detl * qq6_code6_table[il]) >> 15;
#pragma empty_line
  rl = dl + dec_sl;
#pragma empty_line
/* logscl: quantizer scale factor adaptation in the lower sub-band */
  dec_nbl = logscl (ilr, dec_nbl);
#pragma empty_line
/* scalel: computes quantizer scale factor in the lower sub band */
  dec_detl = scalel (dec_nbl, 8);
#pragma empty_line
/* parrec - add pole predictor output to quantized diff. signal */
/* for partially reconstructed signal */
  dec_plt = dec_dlt + dec_szl;
#pragma empty_line
/* upzero: update zero section predictor coefficients */
  upzero (dec_dlt, dec_del_dltx, dec_del_bpl);
#pragma empty_line
/* uppol2: update second predictor coefficient apl2 and delay it as al2 */
  dec_al2 = uppol2 (dec_al1, dec_al2, dec_plt, dec_plt1, dec_plt2);
#pragma empty_line
/* uppol1: update first predictor coef. (pole setion) */
  dec_al1 = uppol1 (dec_al1, dec_al2, dec_plt, dec_plt1);
#pragma empty_line
/* recons : compute recontructed signal for adaptive predictor */
  dec_rlt = dec_sl + dec_dlt;
#pragma empty_line
/* done with lower sub band decoder, implement delays for next time */
  dec_rlt2 = dec_rlt1;
  dec_rlt1 = dec_rlt;
  dec_plt2 = dec_plt1;
  dec_plt1 = dec_plt;
#pragma empty_line
/* HIGH SUB-BAND DECODER */
#pragma empty_line
/* filtez: compute predictor output for zero section */
  dec_szh = filtez (dec_del_bph, dec_del_dhx);
#pragma empty_line
/* filtep: compute predictor output signal for pole section */
  dec_sph = filtep (dec_rh1, dec_ah1, dec_rh2, dec_ah2);
#pragma empty_line
/* predic:compute the predictor output value in the higher sub_band decoder */
  dec_sh = dec_sph + dec_szh;
#pragma empty_line
/* in-place compute the quantized difference signal */
  dec_dh = ((long) dec_deth * qq2_code2_table[ih]) >> 15L;
#pragma empty_line
/* logsch: update logarithmic quantizer scale factor in hi sub band */
  dec_nbh = logsch (ih, dec_nbh);
#pragma empty_line
/* scalel: compute the quantizer scale factor in the higher sub band */
  dec_deth = scalel (dec_nbh, 10);
#pragma empty_line
/* parrec: compute partially recontructed signal */
  dec_ph = dec_dh + dec_szh;
#pragma empty_line
/* upzero: update zero section predictor coefficients */
  upzero (dec_dh, dec_del_dhx, dec_del_bph);
#pragma empty_line
/* uppol2: update second predictor coefficient aph2 and delay it as ah2 */
  dec_ah2 = uppol2 (dec_ah1, dec_ah2, dec_ph, dec_ph1, dec_ph2);
#pragma empty_line
/* uppol1: update first predictor coef. (pole setion) */
  dec_ah1 = uppol1 (dec_ah1, dec_ah2, dec_ph, dec_ph1);
#pragma empty_line
/* recons : compute recontructed signal for adaptive predictor */
  rh = dec_sh + dec_dh;
#pragma empty_line
/* done with high band decode, implementing delays for next time here */
  dec_rh2 = dec_rh1;
  dec_rh1 = rh;
  dec_ph2 = dec_ph1;
  dec_ph1 = dec_ph;
#pragma empty_line
/* end of higher sub_band decoder */
#pragma empty_line
/* end with receive quadrature mirror filters */
  xd = rl - rh;
  xs = rl + rh;
#pragma empty_line
/* receive quadrature mirror filters implemented here */
  h_ptr = h;
  ac_ptr = accumc;
  ad_ptr = accumd;
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa1 += (long) (*ac_ptr) * (*h_ptr++);
  xa2 += (long) (*ad_ptr) * (*h_ptr++);
#pragma empty_line
/* scale by 2^14 */
  xout1 = xa1 >> 14;
  xout2 = xa2 >> 14;
#pragma empty_line
/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
    {
      *ac_ptr-- = *ac_ptr1--;
      *ad_ptr-- = *ad_ptr1--;
    }
  *ac_ptr = xd;
  *ad_ptr = xs;
}
#pragma empty_line
/* clear all storage locations */
#pragma empty_line
void
reset ()
{
  int i;
#pragma empty_line
  detl = dec_detl = 32; /* reset to min scale factor */
  deth = dec_deth = 8;
  nbl = al1 = al2 = plt1 = plt2 = rlt1 = rlt2 = 0;
  nbh = ah1 = ah2 = ph1 = ph2 = rh1 = rh2 = 0;
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;
#pragma empty_line
  for (i = 0; i < 6; i++)
    {
      delay_dltx[i] = 0;
      delay_dhx[i] = 0;
      dec_del_dltx[i] = 0;
      dec_del_dhx[i] = 0;
    }
#pragma empty_line
  for (i = 0; i < 6; i++)
    {
      delay_bpl[i] = 0;
      delay_bph[i] = 0;
      dec_del_bpl[i] = 0;
      dec_del_bph[i] = 0;
    }
#pragma empty_line
  for (i = 0; i < 24; i++)
    tqmf[i] = 0; // i<23
#pragma empty_line
  for (i = 0; i < 11; i++)
    {
      accumc[i] = 0;
      accumd[i] = 0;
    }
}
#pragma empty_line
/* filtez - compute predictor output signal (zero section) */
/* input: bpl1-6 and dlt1-6, output: szl */
#pragma empty_line
int
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
#pragma empty_line
  return ((int) (zl >> 14)); /* x2 here */
}
#pragma empty_line
/* filtep - compute predictor output signal (pole section) */
/* input rlt1-2 and al1-2, output spl */
#pragma empty_line
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
  return ((int) (pl >> 15));
}
#pragma empty_line
/* quantl - quantize the difference signal in the lower sub-band */
int
quantl (int el, int detl)
{
  int ril, mil;
  long int wd, decis;
#pragma empty_line
/* abs of difference signal */
  wd = abs (el);
/* determine mil based on decision levels and detl gain */
  for (mil = 0; mil < 30; mil++)
    {
      decis = (decis_levl[mil] * (long) detl) >> 15L;
      if (wd <= decis)
 break;
    }
/* if mil=30 then wd is less than all decision levels */
  if (el >= 0)
    ril = quant26bt_pos[mil];
  else
    ril = quant26bt_neg[mil];
  return (ril);
}
#pragma empty_line
/* logscl - update log quantizer scale factor in lower sub-band */
/* note that nbl is passed and returned */
#pragma empty_line
int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L; /* leak factor 127/128 */
  nbl = (int) wd + wl_code_table[il >> 2];
  if (nbl < 0)
    nbl = 0;
  if (nbl > 18432)
    nbl = 18432;
  return (nbl);
}
#pragma empty_line
/* scalel: compute quantizer scale factor in lower or upper sub-band*/
#pragma empty_line
int
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
  return (wd3 << 3);
}
#pragma empty_line
/* upzero - inputs: dlt, dlti[0-5], bli[0-5], outputs: updated bli[0-5] */
/* also implements delay of bli and update of dlti from dlt */
#pragma empty_line
void
upzero (int dlt, int *dlti, int *bli)
{
  int i, wd2, wd3;
/*if dlt is zero, then no sum into bli */
  if (dlt == 0)
    {
      for (i = 0; i < 6; i++)
 {
   bli[i] = (int) ((255L * bli[i]) >> 8L); /* leak factor of 255/256 */
 }
    }
  else
    {
      for (i = 0; i < 6; i++)
 {
   if ((long) dlt * dlti[i] >= 0)
     wd2 = 128;
   else
     wd2 = -128;
   wd3 = (int) ((255L * bli[i]) >> 8L); /* leak factor of 255/256 */
   bli[i] = wd2 + wd3;
 }
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
  dlti[4] = dlti[3];
  dlti[3] = dlti[2];
  dlti[2] = dlti[1];
  dlti[1] = dlti[0];
  dlti[0] = dlt;
}
#pragma empty_line
/* uppol2 - update second predictor coefficient (pole section) */
/* inputs: al1, al2, plt, plt1, plt2. outputs: apl2 */
#pragma empty_line
int
uppol2 (int al1, int al2, int plt, int plt1, int plt2)
{
  long int wd2, wd4;
  int apl2;
  wd2 = 4L * (long) al1;
  if ((long) plt * plt1 >= 0L)
    wd2 = -wd2; /* check same sign */
  wd2 = wd2 >> 7; /* gain of 1/128 */
  if ((long) plt * plt2 >= 0L)
    {
      wd4 = wd2 + 128; /* same sign case */
    }
  else
    {
      wd4 = wd2 - 128;
    }
  apl2 = wd4 + (127L * (long) al2 >> 7L); /* leak factor of 127/128 */
#pragma empty_line
/* apl2 is limited to +-.75 */
  if (apl2 > 12288)
    apl2 = 12288;
  if (apl2 < -12288)
    apl2 = -12288;
  return (apl2);
}
#pragma empty_line
/* uppol1 - update first predictor coefficient (pole section) */
/* inputs: al1, apl2, plt, plt1. outputs: apl1 */
#pragma empty_line
int
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L; /* leak factor of 255/256 */
  if ((long) plt * plt1 >= 0L)
    {
      apl1 = (int) wd2 + 192; /* same sign case */
    }
  else
    {
      apl1 = (int) wd2 - 192;
    }
/* note: wd3= .9375-.75 is always positive */
  wd3 = 15360 - apl2; /* limit value */
  if (apl1 > wd3)
    apl1 = wd3;
  if (apl1 < -wd3)
    apl1 = -wd3;
  return (apl1);
}
#pragma empty_line
/* logsch - update log quantizer scale factor in higher sub-band */
/* note that nbh is passed and returned */
#pragma empty_line
int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L; /* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
  if (nbh < 0)
    nbh = 0;
  if (nbh > 22528)
    nbh = 22528;
  return (nbh);
}
#pragma empty_line
/*
+--------------------------------------------------------------------------+
| * Test Vectors (added for CHStone)                                       |
|     test_data : input data                                               |
|     test_compressed : expected output data for "encode"                  |
|     test_result : expected output data for "decode"                      |
+--------------------------------------------------------------------------+
*/
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
const int test_data[100] = {
  0x44, 0x44, 0x44, 0x44, 0x44,
  0x44, 0x44, 0x44, 0x44, 0x44,
  0x44, 0x44, 0x44, 0x44, 0x44,
  0x44, 0x44, 0x43, 0x43, 0x43,
  0x43, 0x43, 0x43, 0x43, 0x42,
  0x42, 0x42, 0x42, 0x42, 0x42,
  0x41, 0x41, 0x41, 0x41, 0x41,
  0x40, 0x40, 0x40, 0x40, 0x40,
  0x40, 0x40, 0x40, 0x3f, 0x3f,
  0x3f, 0x3f, 0x3f, 0x3e, 0x3e,
  0x3e, 0x3e, 0x3e, 0x3e, 0x3d,
  0x3d, 0x3d, 0x3d, 0x3d, 0x3d,
  0x3c, 0x3c, 0x3c, 0x3c, 0x3c,
  0x3c, 0x3c, 0x3c, 0x3c, 0x3b,
  0x3b, 0x3b, 0x3b, 0x3b, 0x3b,
  0x3b, 0x3b, 0x3b, 0x3b, 0x3b,
  0x3b, 0x3b, 0x3b, 0x3b, 0x3b,
  0x3b, 0x3b, 0x3b, 0x3b, 0x3b,
  0x3b, 0x3b, 0x3c, 0x3c, 0x3c,
  0x3c, 0x3c, 0x3c, 0x3c, 0x3c
};
int compressed[100], result[100];
const int test_compressed[100] = {
  0xfd, 0xde, 0x77, 0xba, 0xf2,
  0x90, 0x20, 0xa0, 0xec, 0xed,
  0xef, 0xf1, 0xf3, 0xf4, 0xf5,
  0xf5, 0xf5, 0xf5, 0xf6, 0xf6,
  0xf6, 0xf7, 0xf8, 0xf7, 0xf8,
  0xf7, 0xf9, 0xf8, 0xf7, 0xf9,
  0xf8, 0xf8, 0xf6, 0xf8, 0xf8,
  0xf7, 0xf9, 0xf9, 0xf9, 0xf8,
  0xf7, 0xfa, 0xf8, 0xf8, 0xf7,
  0xfb, 0xfa, 0xf9, 0xf8, 0xf8
};
const int test_result[100] = {
  0, 0xffffffff, 0xffffffff, 0, 0,
  0xffffffff, 0, 0, 0xffffffff, 0xffffffff,
  0, 0, 0x1, 0x1, 0,
  0xfffffffe, 0xffffffff, 0xfffffffe, 0, 0xfffffffc,
  0x1, 0x1, 0x1, 0xfffffffb, 0x2,
  0x2, 0x3, 0xb, 0x14, 0x14,
  0x16, 0x18, 0x20, 0x21, 0x26,
  0x27, 0x2e, 0x2f, 0x33, 0x32,
  0x35, 0x33, 0x36, 0x34, 0x37,
  0x34, 0x37, 0x35, 0x38, 0x36,
  0x39, 0x38, 0x3b, 0x3a, 0x3f,
  0x3f, 0x40, 0x3a, 0x3d, 0x3e,
  0x41, 0x3c, 0x3e, 0x3f, 0x42,
  0x3e, 0x3b, 0x37, 0x3b, 0x3e,
  0x41, 0x3b, 0x3b, 0x3a, 0x3b,
  0x36, 0x39, 0x3b, 0x3f, 0x3c,
  0x3b, 0x37, 0x3b, 0x3d, 0x41,
  0x3d, 0x3e, 0x3c, 0x3e, 0x3b,
  0x3a, 0x37, 0x3b, 0x3e, 0x41,
  0x3c, 0x3b, 0x39, 0x3a, 0x36
};
#pragma empty_line
void
adpcm_main ()
{
  int i, j;
#pragma empty_line
/* reset, initialize required memory */
  reset ();
#pragma empty_line
  j = 10;
#pragma empty_line
  for (i = 0; i < 100; i += 2)
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
    }
  for (i = 0; i < 100; i += 2)
    {
      decode (compressed[i / 2]);
      result[i] = xout1;
      result[i + 1] = xout2;
    }
}
#pragma empty_line
int
main ()
{
  int i;
  int main_result;
#pragma empty_line
      main_result = 0;
      adpcm_main ();
      for (i = 0; i < 100 / 2; i++)
 {
   if (compressed[i] != test_compressed[i])
     {
       main_result += 1;
     }
 }
      for (i = 0; i < 100; i++)
 {
   if (result[i] != test_result[i])
     {
       main_result += 1;
     }
 }
      //printf ("%d\n", main_result); :
      return main_result;
    }
