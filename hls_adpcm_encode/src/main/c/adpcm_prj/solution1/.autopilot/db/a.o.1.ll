; ModuleID = '/scratch/qijing.huang/firechip/hls_adpcm_encode/src/main/c/adpcm_prj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@h = constant [24 x i32] [i32 12, i32 -44, i32 -44, i32 212, i32 48, i32 -624, i32 128, i32 1448, i32 -840, i32 -3220, i32 3804, i32 15504, i32 15504, i32 3804, i32 -3220, i32 -840, i32 1448, i32 128, i32 -624, i32 48, i32 212, i32 -44, i32 -44, i32 12], align 16 ; [#uses=2 type=[24 x i32]*]
@qq4_code4_table = constant [16 x i32] [i32 0, i32 -20456, i32 -12896, i32 -8968, i32 -6288, i32 -4240, i32 -2584, i32 -1200, i32 20456, i32 12896, i32 8968, i32 6288, i32 4240, i32 2584, i32 1200, i32 0], align 16 ; [#uses=1 type=[16 x i32]*]
@qq6_code6_table = constant [64 x i32] [i32 -136, i32 -136, i32 -136, i32 -136, i32 -24808, i32 -21904, i32 -19008, i32 -16704, i32 -14984, i32 -13512, i32 -12280, i32 -11192, i32 -10232, i32 -9360, i32 -8576, i32 -7856, i32 -7192, i32 -6576, i32 -6000, i32 -5456, i32 -4944, i32 -4464, i32 -4008, i32 -3576, i32 -3168, i32 -2776, i32 -2400, i32 -2032, i32 -1688, i32 -1360, i32 -1040, i32 -728, i32 24808, i32 21904, i32 19008, i32 16704, i32 14984, i32 13512, i32 12280, i32 11192, i32 10232, i32 9360, i32 8576, i32 7856, i32 7192, i32 6576, i32 6000, i32 5456, i32 4944, i32 4464, i32 4008, i32 3576, i32 3168, i32 2776, i32 2400, i32 2032, i32 1688, i32 1360, i32 1040, i32 728, i32 432, i32 136, i32 -432, i32 -136], align 16 ; [#uses=0 type=[64 x i32]*]
@wl_code_table = constant [16 x i32] [i32 -60, i32 3042, i32 1198, i32 538, i32 334, i32 172, i32 58, i32 -30, i32 3042, i32 1198, i32 538, i32 334, i32 172, i32 58, i32 -30, i32 -60], align 16 ; [#uses=1 type=[16 x i32]*]
@ilb_table = constant [32 x i32] [i32 2048, i32 2093, i32 2139, i32 2186, i32 2233, i32 2282, i32 2332, i32 2383, i32 2435, i32 2489, i32 2543, i32 2599, i32 2656, i32 2714, i32 2774, i32 2834, i32 2896, i32 2960, i32 3025, i32 3091, i32 3158, i32 3228, i32 3298, i32 3371, i32 3444, i32 3520, i32 3597, i32 3676, i32 3756, i32 3838, i32 3922, i32 4008], align 16 ; [#uses=1 type=[32 x i32]*]
@decis_levl = constant [30 x i32] [i32 280, i32 576, i32 880, i32 1200, i32 1520, i32 1864, i32 2208, i32 2584, i32 2960, i32 3376, i32 3784, i32 4240, i32 4696, i32 5200, i32 5712, i32 6288, i32 6864, i32 7520, i32 8184, i32 8968, i32 9752, i32 10712, i32 11664, i32 12896, i32 14120, i32 15840, i32 17560, i32 20456, i32 23352, i32 32767], align 16 ; [#uses=1 type=[30 x i32]*]
@quant26bt_pos = constant [31 x i32] [i32 61, i32 60, i32 59, i32 58, i32 57, i32 56, i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48, i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40, i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32, i32 32], align 16 ; [#uses=1 type=[31 x i32]*]
@quant26bt_neg = constant [31 x i32] [i32 63, i32 62, i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 4], align 16 ; [#uses=1 type=[31 x i32]*]
@qq2_code2_table = constant [4 x i32] [i32 -7408, i32 -1616, i32 7408, i32 1616], align 16 ; [#uses=1 type=[4 x i32]*]
@wh_code_table = constant [4 x i32] [i32 798, i32 -214, i32 798, i32 -214], align 16 ; [#uses=1 type=[4 x i32]*]
@tqmf = common global [24 x i32] zeroinitializer, align 16 ; [#uses=8 type=[24 x i32]*]
@xl = common global i32 0, align 4                ; [#uses=2 type=i32*]
@xh = common global i32 0, align 4                ; [#uses=2 type=i32*]
@delay_bpl = common global [6 x i32] zeroinitializer, align 16 ; [#uses=1 type=[6 x i32]*]
@delay_dltx = common global [6 x i32] zeroinitializer, align 16 ; [#uses=1 type=[6 x i32]*]
@szl = common global i32 0, align 4               ; [#uses=3 type=i32*]
@rlt1 = common global i32 0, align 4              ; [#uses=3 type=i32*]
@al1 = common global i32 0, align 4               ; [#uses=4 type=i32*]
@rlt2 = common global i32 0, align 4              ; [#uses=2 type=i32*]
@al2 = common global i32 0, align 4               ; [#uses=3 type=i32*]
@spl = common global i32 0, align 4               ; [#uses=1 type=i32*]
@sl = common global i32 0, align 4                ; [#uses=2 type=i32*]
@el = common global i32 0, align 4                ; [#uses=1 type=i32*]
@detl = common global i32 0, align 4              ; [#uses=3 type=i32*]
@il = common global i32 0, align 4                ; [#uses=2 type=i32*]
@dlt = common global i32 0, align 4               ; [#uses=3 type=i32*]
@nbl = common global i32 0, align 4               ; [#uses=2 type=i32*]
@plt = common global i32 0, align 4               ; [#uses=4 type=i32*]
@plt1 = common global i32 0, align 4              ; [#uses=4 type=i32*]
@plt2 = common global i32 0, align 4              ; [#uses=2 type=i32*]
@rlt = common global i32 0, align 4               ; [#uses=1 type=i32*]
@delay_bph = common global [6 x i32] zeroinitializer, align 16 ; [#uses=1 type=[6 x i32]*]
@delay_dhx = common global [6 x i32] zeroinitializer, align 16 ; [#uses=1 type=[6 x i32]*]
@szh = common global i32 0, align 4               ; [#uses=3 type=i32*]
@rh1 = common global i32 0, align 4               ; [#uses=3 type=i32*]
@ah1 = common global i32 0, align 4               ; [#uses=4 type=i32*]
@rh2 = common global i32 0, align 4               ; [#uses=2 type=i32*]
@ah2 = common global i32 0, align 4               ; [#uses=3 type=i32*]
@sph = common global i32 0, align 4               ; [#uses=1 type=i32*]
@sh = common global i32 0, align 4                ; [#uses=2 type=i32*]
@eh = common global i32 0, align 4                ; [#uses=1 type=i32*]
@ih = common global i32 0, align 4                ; [#uses=5 type=i32*]
@deth = common global i32 0, align 4              ; [#uses=3 type=i32*]
@dh = common global i32 0, align 4                ; [#uses=3 type=i32*]
@nbh = common global i32 0, align 4               ; [#uses=2 type=i32*]
@ph = common global i32 0, align 4                ; [#uses=4 type=i32*]
@ph1 = common global i32 0, align 4               ; [#uses=4 type=i32*]
@ph2 = common global i32 0, align 4               ; [#uses=2 type=i32*]
@yh = common global i32 0, align 4                ; [#uses=1 type=i32*]
@ilr = common global i32 0, align 4               ; [#uses=0 type=i32*]
@dec_del_bpl = common global [6 x i32] zeroinitializer, align 16 ; [#uses=0 type=[6 x i32]*]
@dec_del_dltx = common global [6 x i32] zeroinitializer, align 16 ; [#uses=0 type=[6 x i32]*]
@dec_szl = common global i32 0, align 4           ; [#uses=0 type=i32*]
@dec_rlt1 = common global i32 0, align 4          ; [#uses=0 type=i32*]
@dec_al1 = common global i32 0, align 4           ; [#uses=0 type=i32*]
@dec_rlt2 = common global i32 0, align 4          ; [#uses=0 type=i32*]
@dec_al2 = common global i32 0, align 4           ; [#uses=0 type=i32*]
@dec_spl = common global i32 0, align 4           ; [#uses=0 type=i32*]
@dec_sl = common global i32 0, align 4            ; [#uses=0 type=i32*]
@dec_detl = common global i32 0, align 4          ; [#uses=0 type=i32*]
@dec_dlt = common global i32 0, align 4           ; [#uses=0 type=i32*]
@dl = common global i32 0, align 4                ; [#uses=0 type=i32*]
@rl = common global i32 0, align 4                ; [#uses=0 type=i32*]
@dec_nbl = common global i32 0, align 4           ; [#uses=0 type=i32*]
@dec_plt = common global i32 0, align 4           ; [#uses=0 type=i32*]
@dec_plt1 = common global i32 0, align 4          ; [#uses=0 type=i32*]
@dec_plt2 = common global i32 0, align 4          ; [#uses=0 type=i32*]
@dec_rlt = common global i32 0, align 4           ; [#uses=0 type=i32*]
@dec_del_bph = common global [6 x i32] zeroinitializer, align 16 ; [#uses=0 type=[6 x i32]*]
@dec_del_dhx = common global [6 x i32] zeroinitializer, align 16 ; [#uses=0 type=[6 x i32]*]
@dec_szh = common global i32 0, align 4           ; [#uses=0 type=i32*]
@dec_rh1 = common global i32 0, align 4           ; [#uses=0 type=i32*]
@dec_ah1 = common global i32 0, align 4           ; [#uses=0 type=i32*]
@dec_rh2 = common global i32 0, align 4           ; [#uses=0 type=i32*]
@dec_ah2 = common global i32 0, align 4           ; [#uses=0 type=i32*]
@dec_sph = common global i32 0, align 4           ; [#uses=0 type=i32*]
@dec_sh = common global i32 0, align 4            ; [#uses=0 type=i32*]
@dec_deth = common global i32 0, align 4          ; [#uses=0 type=i32*]
@dec_dh = common global i32 0, align 4            ; [#uses=0 type=i32*]
@dec_nbh = common global i32 0, align 4           ; [#uses=0 type=i32*]
@dec_ph = common global i32 0, align 4            ; [#uses=0 type=i32*]
@dec_ph1 = common global i32 0, align 4           ; [#uses=0 type=i32*]
@dec_ph2 = common global i32 0, align 4           ; [#uses=0 type=i32*]
@rh = common global i32 0, align 4                ; [#uses=0 type=i32*]
@xd = common global i32 0, align 4                ; [#uses=0 type=i32*]
@xs = common global i32 0, align 4                ; [#uses=0 type=i32*]
@accumc = common global [11 x i32] zeroinitializer, align 16 ; [#uses=0 type=[11 x i32]*]
@accumd = common global [11 x i32] zeroinitializer, align 16 ; [#uses=0 type=[11 x i32]*]
@xout1 = common global i32 0, align 4             ; [#uses=0 type=i32*]
@xout2 = common global i32 0, align 4             ; [#uses=0 type=i32*]
@test_data = constant [100 x i32] [i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 67, i32 67, i32 67, i32 67, i32 67, i32 67, i32 67, i32 66, i32 66, i32 66, i32 66, i32 66, i32 66, i32 65, i32 65, i32 65, i32 65, i32 65, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 63, i32 63, i32 63, i32 63, i32 63, i32 62, i32 62, i32 62, i32 62, i32 62, i32 62, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60], align 16 ; [#uses=0 type=[100 x i32]*]
@test_compressed = constant [100 x i32] [i32 253, i32 222, i32 119, i32 186, i32 242, i32 144, i32 32, i32 160, i32 236, i32 237, i32 239, i32 241, i32 243, i32 244, i32 245, i32 245, i32 245, i32 245, i32 246, i32 246, i32 246, i32 247, i32 248, i32 247, i32 248, i32 247, i32 249, i32 248, i32 247, i32 249, i32 248, i32 248, i32 246, i32 248, i32 248, i32 247, i32 249, i32 249, i32 249, i32 248, i32 247, i32 250, i32 248, i32 248, i32 247, i32 251, i32 250, i32 249, i32 248, i32 248, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16 ; [#uses=0 type=[100 x i32]*]
@test_result = constant [100 x i32] [i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 -2, i32 -1, i32 -2, i32 0, i32 -4, i32 1, i32 1, i32 1, i32 -5, i32 2, i32 2, i32 3, i32 11, i32 20, i32 20, i32 22, i32 24, i32 32, i32 33, i32 38, i32 39, i32 46, i32 47, i32 51, i32 50, i32 53, i32 51, i32 54, i32 52, i32 55, i32 52, i32 55, i32 53, i32 56, i32 54, i32 57, i32 56, i32 59, i32 58, i32 63, i32 63, i32 64, i32 58, i32 61, i32 62, i32 65, i32 60, i32 62, i32 63, i32 66, i32 62, i32 59, i32 55, i32 59, i32 62, i32 65, i32 59, i32 59, i32 58, i32 59, i32 54, i32 57, i32 59, i32 63, i32 60, i32 59, i32 55, i32 59, i32 61, i32 65, i32 61, i32 62, i32 60, i32 62, i32 59, i32 58, i32 55, i32 59, i32 62, i32 65, i32 60, i32 59, i32 57, i32 58, i32 54], align 16 ; [#uses=0 type=[100 x i32]*]
@compressed = common global [100 x i32] zeroinitializer, align 16 ; [#uses=0 type=[100 x i32]*]
@result = common global [100 x i32] zeroinitializer, align 16 ; [#uses=0 type=[100 x i32]*]
@encode.str = internal unnamed_addr constant [7 x i8] c"encode\00" ; [#uses=1 type=[7 x i8]*]

; [#uses=2]
define internal fastcc i32 @abs(i32 %n) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !173), !dbg !174 ; [debug line = 236:10] [debug variable = n]
  %tmp = icmp sgt i32 %n, -1, !dbg !175           ; [#uses=1 type=i1] [debug line = 240:3]
  %m = sub nsw i32 0, %n, !dbg !177               ; [#uses=1 type=i32] [debug line = 243:5]
  call void @llvm.dbg.value(metadata !{i32 %m}, i64 0, metadata !178), !dbg !177 ; [debug line = 243:5] [debug variable = m]
  %n.assign = select i1 %tmp, i32 %n, i32 %m, !dbg !175 ; [#uses=1 type=i32] [debug line = 240:3]
  call void @llvm.dbg.value(metadata !{i32 %n.assign}, i64 0, metadata !173), !dbg !175 ; [debug line = 240:3] [debug variable = n]
  ret i32 %n.assign, !dbg !179                    ; [debug line = 244:3]
}

; [#uses=0]
define i32 @encode(i32 %xin1, i32 %xin2) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !180
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @encode.str) nounwind
  call void @llvm.dbg.value(metadata !{i32 %xin1}, i64 0, metadata !186), !dbg !187 ; [debug line = 248:13] [debug variable = xin1]
  call void @llvm.dbg.value(metadata !{i32 %xin2}, i64 0, metadata !188), !dbg !189 ; [debug line = 248:23] [debug variable = xin2]
  %tqmf.load = load i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 0), align 16, !dbg !190 ; [#uses=2 type=i32] [debug line = 259:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tqmf.load) nounwind
  %tmp = sext i32 %tqmf.load to i64, !dbg !190    ; [#uses=1 type=i64] [debug line = 259:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 12) nounwind
  %xa = mul nsw i64 %tmp, 12, !dbg !190           ; [#uses=1 type=i64] [debug line = 259:3]
  call void @llvm.dbg.value(metadata !{i64 %xa}, i64 0, metadata !192), !dbg !190 ; [debug line = 259:3] [debug variable = xa]
  %tqmf.load.1 = load i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 1), align 4, !dbg !194 ; [#uses=2 type=i32] [debug line = 260:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tqmf.load.1) nounwind
  %tmp.3 = sext i32 %tqmf.load.1 to i64, !dbg !194 ; [#uses=1 type=i64] [debug line = 260:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 -44) nounwind
  %xb = mul nsw i64 %tmp.3, -44, !dbg !194        ; [#uses=1 type=i64] [debug line = 260:3]
  call void @llvm.dbg.value(metadata !{i64 %xb}, i64 0, metadata !195), !dbg !194 ; [debug line = 260:3] [debug variable = xb]
  br label %1, !dbg !196                          ; [debug line = 262:8]

; <label>:1                                       ; preds = %2, %0
  %tqmf_ptr.0.rec = phi i64 [ 2, %0 ], [ %phitmp, %2 ] ; [#uses=4 type=i64]
  %i = phi i32 [ 0, %0 ], [ %i.2, %2 ]            ; [#uses=2 type=i32]
  %xa1 = phi i64 [ %xa, %0 ], [ %xa.3, %2 ]       ; [#uses=2 type=i64]
  %xb1 = phi i64 [ %xb, %0 ], [ %xb.3, %2 ]       ; [#uses=2 type=i64]
  %h.addr = getelementptr [24 x i32]* @h, i64 0, i64 %tqmf_ptr.0.rec ; [#uses=1 type=i32*]
  %tqmf.addr = getelementptr [24 x i32]* @tqmf, i64 0, i64 %tqmf_ptr.0.rec ; [#uses=1 type=i32*]
  %exitcond2 = icmp eq i32 %i, 10, !dbg !196      ; [#uses=1 type=i1] [debug line = 262:8]
  br i1 %exitcond2, label %3, label %2, !dbg !196 ; [debug line = 262:8]

; <label>:2                                       ; preds = %1
  %tqmf_ptr.0.sum1 = or i64 %tqmf_ptr.0.rec, 1, !dbg !198 ; [#uses=2 type=i64] [debug line = 264:7]
  %tqmf_ptr = getelementptr [24 x i32]* @tqmf, i64 0, i64 %tqmf_ptr.0.sum1, !dbg !198 ; [#uses=1 type=i32*] [debug line = 264:7]
  call void @llvm.dbg.value(metadata !{i32* %tqmf_ptr}, i64 0, metadata !200), !dbg !198 ; [debug line = 264:7] [debug variable = tqmf_ptr]
  %tqmf.load.4 = load i32* %tqmf.addr, align 8, !dbg !198 ; [#uses=1 type=i32] [debug line = 264:7]
  %tmp.11 = sext i32 %tqmf.load.4 to i64, !dbg !198 ; [#uses=1 type=i64] [debug line = 264:7]
  %h_ptr = getelementptr [24 x i32]* @h, i64 0, i64 %tqmf_ptr.0.sum1, !dbg !198 ; [#uses=1 type=i32*] [debug line = 264:7]
  call void @llvm.dbg.value(metadata !{i32* %h_ptr}, i64 0, metadata !201), !dbg !198 ; [debug line = 264:7] [debug variable = h_ptr]
  %h.load = load i32* %h.addr, align 8, !dbg !198 ; [#uses=1 type=i32] [debug line = 264:7]
  %tmp.12 = sext i32 %h.load to i64, !dbg !198    ; [#uses=1 type=i64] [debug line = 264:7]
  %tmp.13 = mul nsw i64 %tmp.12, %tmp.11, !dbg !198 ; [#uses=1 type=i64] [debug line = 264:7]
  %xa.3 = add nsw i64 %tmp.13, %xa1, !dbg !198    ; [#uses=1 type=i64] [debug line = 264:7]
  call void @llvm.dbg.value(metadata !{i64 %xa.3}, i64 0, metadata !192), !dbg !198 ; [debug line = 264:7] [debug variable = xa]
  %tqmf_ptr.load = load i32* %tqmf_ptr, align 4, !dbg !203 ; [#uses=2 type=i32] [debug line = 265:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tqmf_ptr.load) nounwind
  %tmp.15 = sext i32 %tqmf_ptr.load to i64, !dbg !203 ; [#uses=1 type=i64] [debug line = 265:7]
  %h_ptr.load = load i32* %h_ptr, align 4, !dbg !203 ; [#uses=2 type=i32] [debug line = 265:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %h_ptr.load) nounwind
  %tmp.16 = sext i32 %h_ptr.load to i64, !dbg !203 ; [#uses=1 type=i64] [debug line = 265:7]
  %tmp.17 = mul nsw i64 %tmp.16, %tmp.15, !dbg !203 ; [#uses=1 type=i64] [debug line = 265:7]
  %xb.3 = add nsw i64 %tmp.17, %xb1, !dbg !203    ; [#uses=1 type=i64] [debug line = 265:7]
  call void @llvm.dbg.value(metadata !{i64 %xb.3}, i64 0, metadata !195), !dbg !203 ; [debug line = 265:7] [debug variable = xb]
  %i.2 = add nsw i32 %i, 1, !dbg !204             ; [#uses=1 type=i32] [debug line = 262:23]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !205), !dbg !204 ; [debug line = 262:23] [debug variable = i]
  %phitmp = add i64 %tqmf_ptr.0.rec, 2, !dbg !204 ; [#uses=1 type=i64] [debug line = 262:23]
  br label %1, !dbg !204                          ; [debug line = 262:23]

; <label>:3                                       ; preds = %1
  %xb.0.lcssa = phi i64 [ %xb1, %1 ]              ; [#uses=1 type=i64]
  %xa.0.lcssa = phi i64 [ %xa1, %1 ]              ; [#uses=1 type=i64]
  %tqmf.load.2 = load i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 22), align 8, !dbg !206 ; [#uses=1 type=i32] [debug line = 268:3]
  %tmp.5 = sext i32 %tqmf.load.2 to i64, !dbg !206 ; [#uses=1 type=i64] [debug line = 268:3]
  %tmp.6 = mul nsw i64 %tmp.5, -44, !dbg !206     ; [#uses=1 type=i64] [debug line = 268:3]
  %xa.2 = add nsw i64 %tmp.6, %xa.0.lcssa, !dbg !206 ; [#uses=2 type=i64] [debug line = 268:3]
  call void @llvm.dbg.value(metadata !{i64 %xa.2}, i64 0, metadata !192), !dbg !206 ; [debug line = 268:3] [debug variable = xa]
  %tqmf.load.3 = load i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 23), align 4, !dbg !207 ; [#uses=2 type=i32] [debug line = 269:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tqmf.load.3) nounwind
  %tmp.8 = sext i32 %tqmf.load.3 to i64, !dbg !207 ; [#uses=1 type=i64] [debug line = 269:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 12) nounwind
  %tmp.9 = mul nsw i64 %tmp.8, 12, !dbg !207      ; [#uses=1 type=i64] [debug line = 269:3]
  %xb.2 = add nsw i64 %tmp.9, %xb.0.lcssa, !dbg !207 ; [#uses=2 type=i64] [debug line = 269:3]
  call void @llvm.dbg.value(metadata !{i64 %xb.2}, i64 0, metadata !195), !dbg !207 ; [debug line = 269:3] [debug variable = xb]
  br label %4, !dbg !208                          ; [debug line = 273:8]

; <label>:4                                       ; preds = %5, %3
  %tqmf_ptr.0.pn.rec = phi i64 [ 0, %3 ], [ %tqmf_ptr1.0.rec, %5 ] ; [#uses=3 type=i64]
  %i.1 = phi i32 [ 0, %3 ], [ %i.3, %5 ]          ; [#uses=2 type=i32]
  %.sum = add i64 %tqmf_ptr.0.pn.rec, 23          ; [#uses=1 type=i64]
  %tqmf.addr.2 = getelementptr [24 x i32]* @tqmf, i64 0, i64 %.sum ; [#uses=1 type=i32*]
  %tqmf_ptr1.0.rec = add i64 %tqmf_ptr.0.pn.rec, -1, !dbg !210 ; [#uses=1 type=i64] [debug line = 272:3]
  %tqmf_ptr.0.sum = add i64 %tqmf_ptr.0.pn.rec, 21, !dbg !210 ; [#uses=1 type=i64] [debug line = 272:3]
  %tqmf_ptr1 = getelementptr [24 x i32]* @tqmf, i64 0, i64 %tqmf_ptr.0.sum, !dbg !210 ; [#uses=1 type=i32*] [debug line = 272:3]
  call void @llvm.dbg.value(metadata !{i32* %tqmf_ptr1}, i64 0, metadata !211), !dbg !210 ; [debug line = 272:3] [debug variable = tqmf_ptr1]
  %exitcond = icmp eq i32 %i.1, 22, !dbg !208     ; [#uses=1 type=i1] [debug line = 273:8]
  br i1 %exitcond, label %6, label %5, !dbg !208  ; [debug line = 273:8]

; <label>:5                                       ; preds = %4
  %tqmf_ptr1.load = load i32* %tqmf_ptr1, align 4, !dbg !212 ; [#uses=1 type=i32] [debug line = 274:5]
  store i32 %tqmf_ptr1.load, i32* %tqmf.addr.2, align 4, !dbg !212 ; [debug line = 274:5]
  %i.3 = add nsw i32 %i.1, 1, !dbg !213           ; [#uses=1 type=i32] [debug line = 273:23]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !205), !dbg !213 ; [debug line = 273:23] [debug variable = i]
  br label %4, !dbg !213                          ; [debug line = 273:23]

; <label>:6                                       ; preds = %4
  store i32 %xin1, i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 1), align 4, !dbg !214 ; [debug line = 275:3]
  store i32 %xin2, i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 0), align 16, !dbg !215 ; [debug line = 276:3]
  %tmp.20 = add nsw i64 %xb.2, %xa.2, !dbg !216   ; [#uses=1 type=i64] [debug line = 279:3]
  %tmp.21 = lshr i64 %tmp.20, 15, !dbg !216       ; [#uses=1 type=i64] [debug line = 279:3]
  %tmp.22 = trunc i64 %tmp.21 to i32, !dbg !216   ; [#uses=1 type=i32] [debug line = 279:3]
  store i32 %tmp.22, i32* @xl, align 4, !dbg !216 ; [debug line = 279:3]
  %tmp.23 = sub nsw i64 %xa.2, %xb.2, !dbg !217   ; [#uses=1 type=i64] [debug line = 280:3]
  %tmp.24 = lshr i64 %tmp.23, 15, !dbg !217       ; [#uses=1 type=i64] [debug line = 280:3]
  %tmp.25 = trunc i64 %tmp.24 to i32, !dbg !217   ; [#uses=1 type=i32] [debug line = 280:3]
  store i32 %tmp.25, i32* @xh, align 4, !dbg !217 ; [debug line = 280:3]
  %tmp.26 = call fastcc i32 @filtez(i32* getelementptr inbounds ([6 x i32]* @delay_bpl, i64 0, i64 0), i32* getelementptr inbounds ([6 x i32]* @delay_dltx, i64 0, i64 0)), !dbg !218 ; [#uses=1 type=i32] [debug line = 287:9]
  store i32 %tmp.26, i32* @szl, align 4, !dbg !218 ; [debug line = 287:9]
  %rlt1.load = load i32* @rlt1, align 4, !dbg !219 ; [#uses=1 type=i32] [debug line = 290:9]
  %al1.load = load i32* @al1, align 4, !dbg !219  ; [#uses=1 type=i32] [debug line = 290:9]
  %rlt2.load = load i32* @rlt2, align 4, !dbg !219 ; [#uses=1 type=i32] [debug line = 290:9]
  %al2.load = load i32* @al2, align 4, !dbg !219  ; [#uses=1 type=i32] [debug line = 290:9]
  %tmp.27 = call fastcc i32 @filtep(i32 %rlt1.load, i32 %al1.load, i32 %rlt2.load, i32 %al2.load), !dbg !219 ; [#uses=2 type=i32] [debug line = 290:9]
  store i32 %tmp.27, i32* @spl, align 4, !dbg !219 ; [debug line = 290:9]
  %szl.load = load i32* @szl, align 4, !dbg !220  ; [#uses=1 type=i32] [debug line = 293:3]
  %tmp.28 = add nsw i32 %szl.load, %tmp.27, !dbg !220 ; [#uses=2 type=i32] [debug line = 293:3]
  store i32 %tmp.28, i32* @sl, align 4, !dbg !220 ; [debug line = 293:3]
  %xl.load = load i32* @xl, align 4, !dbg !221    ; [#uses=1 type=i32] [debug line = 294:3]
  %tmp.29 = sub nsw i32 %xl.load, %tmp.28, !dbg !221 ; [#uses=2 type=i32] [debug line = 294:3]
  store i32 %tmp.29, i32* @el, align 4, !dbg !221 ; [debug line = 294:3]
  %detl.load = load i32* @detl, align 4, !dbg !222 ; [#uses=1 type=i32] [debug line = 297:8]
  %tmp.30 = call fastcc i32 @quantl(i32 %tmp.29, i32 %detl.load), !dbg !222 ; [#uses=3 type=i32] [debug line = 297:8]
  store i32 %tmp.30, i32* @il, align 4, !dbg !222 ; [debug line = 297:8]
  %detl.load.1 = load i32* @detl, align 4, !dbg !223 ; [#uses=1 type=i32] [debug line = 301:3]
  %tmp.31 = sext i32 %detl.load.1 to i64, !dbg !223 ; [#uses=1 type=i64] [debug line = 301:3]
  %tmp.32 = ashr i32 %tmp.30, 2, !dbg !223        ; [#uses=1 type=i32] [debug line = 301:3]
  %tmp.33 = sext i32 %tmp.32 to i64, !dbg !223    ; [#uses=1 type=i64] [debug line = 301:3]
  %qq4_code4_table.addr = getelementptr inbounds [16 x i32]* @qq4_code4_table, i64 0, i64 %tmp.33, !dbg !223 ; [#uses=1 type=i32*] [debug line = 301:3]
  %qq4_code4_table.load = load i32* %qq4_code4_table.addr, align 4, !dbg !223 ; [#uses=2 type=i32] [debug line = 301:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %qq4_code4_table.load) nounwind
  %tmp.34 = sext i32 %qq4_code4_table.load to i64, !dbg !223 ; [#uses=1 type=i64] [debug line = 301:3]
  %tmp.35 = mul nsw i64 %tmp.34, %tmp.31, !dbg !223 ; [#uses=1 type=i64] [debug line = 301:3]
  %tmp.36 = lshr i64 %tmp.35, 15, !dbg !223       ; [#uses=1 type=i64] [debug line = 301:3]
  %tmp.37 = trunc i64 %tmp.36 to i32, !dbg !223   ; [#uses=1 type=i32] [debug line = 301:3]
  store i32 %tmp.37, i32* @dlt, align 4, !dbg !223 ; [debug line = 301:3]
  %nbl.load = load i32* @nbl, align 4, !dbg !224  ; [#uses=1 type=i32] [debug line = 304:9]
  %tmp.38 = call fastcc i32 @logscl(i32 %tmp.30, i32 %nbl.load), !dbg !224 ; [#uses=2 type=i32] [debug line = 304:9]
  store i32 %tmp.38, i32* @nbl, align 4, !dbg !224 ; [debug line = 304:9]
  %tmp.39 = call fastcc i32 @scalel(i32 %tmp.38, i32 8), !dbg !225 ; [#uses=1 type=i32] [debug line = 308:10]
  store i32 %tmp.39, i32* @detl, align 4, !dbg !225 ; [debug line = 308:10]
  %dlt.load = load i32* @dlt, align 4, !dbg !226  ; [#uses=2 type=i32] [debug line = 311:3]
  %szl.load.1 = load i32* @szl, align 4, !dbg !226 ; [#uses=1 type=i32] [debug line = 311:3]
  %tmp.40 = add nsw i32 %szl.load.1, %dlt.load, !dbg !226 ; [#uses=1 type=i32] [debug line = 311:3]
  store i32 %tmp.40, i32* @plt, align 4, !dbg !226 ; [debug line = 311:3]
  call fastcc void @upzero(i32 %dlt.load, i32* getelementptr inbounds ([6 x i32]* @delay_dltx, i64 0, i64 0), i32* getelementptr inbounds ([6 x i32]* @delay_bpl, i64 0, i64 0)), !dbg !227 ; [debug line = 317:3]
  %al1.load.1 = load i32* @al1, align 4, !dbg !228 ; [#uses=1 type=i32] [debug line = 321:9]
  %al2.load.1 = load i32* @al2, align 4, !dbg !228 ; [#uses=1 type=i32] [debug line = 321:9]
  %plt.load = load i32* @plt, align 4, !dbg !228  ; [#uses=1 type=i32] [debug line = 321:9]
  %plt1.load = load i32* @plt1, align 4, !dbg !228 ; [#uses=1 type=i32] [debug line = 321:9]
  %plt2.load = load i32* @plt2, align 4, !dbg !228 ; [#uses=1 type=i32] [debug line = 321:9]
  %tmp.41 = call fastcc i32 @uppol2(i32 %al1.load.1, i32 %al2.load.1, i32 %plt.load, i32 %plt1.load, i32 %plt2.load), !dbg !228 ; [#uses=2 type=i32] [debug line = 321:9]
  store i32 %tmp.41, i32* @al2, align 4, !dbg !228 ; [debug line = 321:9]
  %al1.load.2 = load i32* @al1, align 4, !dbg !229 ; [#uses=1 type=i32] [debug line = 325:9]
  %plt.load.1 = load i32* @plt, align 4, !dbg !229 ; [#uses=1 type=i32] [debug line = 325:9]
  %plt1.load.1 = load i32* @plt1, align 4, !dbg !229 ; [#uses=1 type=i32] [debug line = 325:9]
  %tmp.42 = call fastcc i32 @uppol1(i32 %al1.load.2, i32 %tmp.41, i32 %plt.load.1, i32 %plt1.load.1), !dbg !229 ; [#uses=1 type=i32] [debug line = 325:9]
  store i32 %tmp.42, i32* @al1, align 4, !dbg !229 ; [debug line = 325:9]
  %sl.load = load i32* @sl, align 4, !dbg !230    ; [#uses=1 type=i32] [debug line = 328:3]
  %dlt.load.1 = load i32* @dlt, align 4, !dbg !230 ; [#uses=1 type=i32] [debug line = 328:3]
  %tmp.43 = add nsw i32 %dlt.load.1, %sl.load, !dbg !230 ; [#uses=2 type=i32] [debug line = 328:3]
  store i32 %tmp.43, i32* @rlt, align 4, !dbg !230 ; [debug line = 328:3]
  %rlt1.load.1 = load i32* @rlt1, align 4, !dbg !231 ; [#uses=1 type=i32] [debug line = 331:3]
  store i32 %rlt1.load.1, i32* @rlt2, align 4, !dbg !231 ; [debug line = 331:3]
  store i32 %tmp.43, i32* @rlt1, align 4, !dbg !232 ; [debug line = 332:3]
  %plt1.load.2 = load i32* @plt1, align 4, !dbg !233 ; [#uses=1 type=i32] [debug line = 333:3]
  store i32 %plt1.load.2, i32* @plt2, align 4, !dbg !233 ; [debug line = 333:3]
  %plt.load.2 = load i32* @plt, align 4, !dbg !234 ; [#uses=1 type=i32] [debug line = 334:3]
  store i32 %plt.load.2, i32* @plt1, align 4, !dbg !234 ; [debug line = 334:3]
  %tmp.44 = call fastcc i32 @filtez(i32* getelementptr inbounds ([6 x i32]* @delay_bph, i64 0, i64 0), i32* getelementptr inbounds ([6 x i32]* @delay_dhx, i64 0, i64 0)), !dbg !235 ; [#uses=1 type=i32] [debug line = 338:9]
  store i32 %tmp.44, i32* @szh, align 4, !dbg !235 ; [debug line = 338:9]
  %rh1.load = load i32* @rh1, align 4, !dbg !236  ; [#uses=1 type=i32] [debug line = 340:9]
  %ah1.load = load i32* @ah1, align 4, !dbg !236  ; [#uses=1 type=i32] [debug line = 340:9]
  %rh2.load = load i32* @rh2, align 4, !dbg !236  ; [#uses=1 type=i32] [debug line = 340:9]
  %ah2.load = load i32* @ah2, align 4, !dbg !236  ; [#uses=1 type=i32] [debug line = 340:9]
  %tmp.45 = call fastcc i32 @filtep(i32 %rh1.load, i32 %ah1.load, i32 %rh2.load, i32 %ah2.load), !dbg !236 ; [#uses=2 type=i32] [debug line = 340:9]
  store i32 %tmp.45, i32* @sph, align 4, !dbg !236 ; [debug line = 340:9]
  %szh.load = load i32* @szh, align 4, !dbg !237  ; [#uses=1 type=i32] [debug line = 343:3]
  %tmp.46 = add nsw i32 %szh.load, %tmp.45, !dbg !237 ; [#uses=2 type=i32] [debug line = 343:3]
  store i32 %tmp.46, i32* @sh, align 4, !dbg !237 ; [debug line = 343:3]
  %xh.load = load i32* @xh, align 4, !dbg !238    ; [#uses=1 type=i32] [debug line = 345:3]
  %tmp.47 = sub nsw i32 %xh.load, %tmp.46, !dbg !238 ; [#uses=3 type=i32] [debug line = 345:3]
  store i32 %tmp.47, i32* @eh, align 4, !dbg !238 ; [debug line = 345:3]
  %tmp.48 = ashr i32 %tmp.47, 31, !dbg !239       ; [#uses=1 type=i32] [debug line = 349:3]
  %tmp.49 = and i32 %tmp.48, -2, !dbg !239        ; [#uses=1 type=i32] [debug line = 349:3]
  %tmp.50 = add i32 %tmp.49, 3, !dbg !239         ; [#uses=1 type=i32] [debug line = 349:3]
  store i32 %tmp.50, i32* @ih, align 4, !dbg !240 ; [debug line = 351:7]
  %deth.load = load i32* @deth, align 4, !dbg !242 ; [#uses=1 type=i32] [debug line = 357:3]
  %tmp.51 = sext i32 %deth.load to i64, !dbg !242 ; [#uses=1 type=i64] [debug line = 357:3]
  %tmp.52 = mul nsw i64 %tmp.51, 564, !dbg !242   ; [#uses=1 type=i64] [debug line = 357:3]
  %tmp.53 = lshr i64 %tmp.52, 12, !dbg !242       ; [#uses=1 type=i64] [debug line = 357:3]
  %decis = trunc i64 %tmp.53 to i32, !dbg !242    ; [#uses=1 type=i32] [debug line = 357:3]
  call void @llvm.dbg.value(metadata !{i32 %decis}, i64 0, metadata !243), !dbg !242 ; [debug line = 357:3] [debug variable = decis]
  %tmp.54 = call fastcc i32 @abs(i32 %tmp.47), !dbg !244 ; [#uses=1 type=i32] [debug line = 358:7]
  %tmp.55 = icmp sgt i32 %tmp.54, %decis, !dbg !244 ; [#uses=1 type=i1] [debug line = 358:7]
  br i1 %tmp.55, label %7, label %._crit_edge, !dbg !244 ; [debug line = 358:7]

; <label>:7                                       ; preds = %6
  %ih.load = load i32* @ih, align 4, !dbg !245    ; [#uses=1 type=i32] [debug line = 359:5]
  %tmp.57 = add nsw i32 %ih.load, -1, !dbg !245   ; [#uses=1 type=i32] [debug line = 359:5]
  store i32 %tmp.57, i32* @ih, align 4, !dbg !245 ; [debug line = 359:5]
  br label %._crit_edge, !dbg !245                ; [debug line = 359:5]

._crit_edge:                                      ; preds = %7, %6
  %deth.load.1 = load i32* @deth, align 4, !dbg !246 ; [#uses=1 type=i32] [debug line = 362:3]
  %tmp.58 = sext i32 %deth.load.1 to i64, !dbg !246 ; [#uses=1 type=i64] [debug line = 362:3]
  %ih.load.1 = load i32* @ih, align 4, !dbg !246  ; [#uses=2 type=i32] [debug line = 362:3]
  %tmp.59 = sext i32 %ih.load.1 to i64, !dbg !246 ; [#uses=1 type=i64] [debug line = 362:3]
  %qq2_code2_table.addr = getelementptr inbounds [4 x i32]* @qq2_code2_table, i64 0, i64 %tmp.59, !dbg !246 ; [#uses=1 type=i32*] [debug line = 362:3]
  %qq2_code2_table.load = load i32* %qq2_code2_table.addr, align 4, !dbg !246 ; [#uses=2 type=i32] [debug line = 362:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %qq2_code2_table.load) nounwind
  %tmp.60 = sext i32 %qq2_code2_table.load to i64, !dbg !246 ; [#uses=1 type=i64] [debug line = 362:3]
  %tmp.61 = mul nsw i64 %tmp.60, %tmp.58, !dbg !246 ; [#uses=1 type=i64] [debug line = 362:3]
  %tmp.62 = lshr i64 %tmp.61, 15, !dbg !246       ; [#uses=1 type=i64] [debug line = 362:3]
  %tmp.63 = trunc i64 %tmp.62 to i32, !dbg !246   ; [#uses=1 type=i32] [debug line = 362:3]
  store i32 %tmp.63, i32* @dh, align 4, !dbg !246 ; [debug line = 362:3]
  %nbh.load = load i32* @nbh, align 4, !dbg !247  ; [#uses=1 type=i32] [debug line = 365:9]
  %tmp.64 = call fastcc i32 @logsch(i32 %ih.load.1, i32 %nbh.load), !dbg !247 ; [#uses=2 type=i32] [debug line = 365:9]
  store i32 %tmp.64, i32* @nbh, align 4, !dbg !247 ; [debug line = 365:9]
  %tmp.65 = call fastcc i32 @scalel(i32 %tmp.64, i32 10), !dbg !248 ; [#uses=1 type=i32] [debug line = 368:10]
  store i32 %tmp.65, i32* @deth, align 4, !dbg !248 ; [debug line = 368:10]
  %dh.load = load i32* @dh, align 4, !dbg !249    ; [#uses=2 type=i32] [debug line = 371:3]
  %szh.load.1 = load i32* @szh, align 4, !dbg !249 ; [#uses=1 type=i32] [debug line = 371:3]
  %tmp.66 = add nsw i32 %szh.load.1, %dh.load, !dbg !249 ; [#uses=1 type=i32] [debug line = 371:3]
  store i32 %tmp.66, i32* @ph, align 4, !dbg !249 ; [debug line = 371:3]
  call fastcc void @upzero(i32 %dh.load, i32* getelementptr inbounds ([6 x i32]* @delay_dhx, i64 0, i64 0), i32* getelementptr inbounds ([6 x i32]* @delay_bph, i64 0, i64 0)), !dbg !250 ; [debug line = 376:3]
  %ah1.load.1 = load i32* @ah1, align 4, !dbg !251 ; [#uses=1 type=i32] [debug line = 380:9]
  %ah2.load.1 = load i32* @ah2, align 4, !dbg !251 ; [#uses=1 type=i32] [debug line = 380:9]
  %ph.load = load i32* @ph, align 4, !dbg !251    ; [#uses=1 type=i32] [debug line = 380:9]
  %ph1.load = load i32* @ph1, align 4, !dbg !251  ; [#uses=1 type=i32] [debug line = 380:9]
  %ph2.load = load i32* @ph2, align 4, !dbg !251  ; [#uses=1 type=i32] [debug line = 380:9]
  %tmp.67 = call fastcc i32 @uppol2(i32 %ah1.load.1, i32 %ah2.load.1, i32 %ph.load, i32 %ph1.load, i32 %ph2.load), !dbg !251 ; [#uses=2 type=i32] [debug line = 380:9]
  store i32 %tmp.67, i32* @ah2, align 4, !dbg !251 ; [debug line = 380:9]
  %ah1.load.2 = load i32* @ah1, align 4, !dbg !252 ; [#uses=1 type=i32] [debug line = 383:9]
  %ph.load.1 = load i32* @ph, align 4, !dbg !252  ; [#uses=1 type=i32] [debug line = 383:9]
  %ph1.load.1 = load i32* @ph1, align 4, !dbg !252 ; [#uses=1 type=i32] [debug line = 383:9]
  %tmp.68 = call fastcc i32 @uppol1(i32 %ah1.load.2, i32 %tmp.67, i32 %ph.load.1, i32 %ph1.load.1), !dbg !252 ; [#uses=1 type=i32] [debug line = 383:9]
  store i32 %tmp.68, i32* @ah1, align 4, !dbg !252 ; [debug line = 383:9]
  %sh.load = load i32* @sh, align 4, !dbg !253    ; [#uses=1 type=i32] [debug line = 386:3]
  %dh.load.1 = load i32* @dh, align 4, !dbg !253  ; [#uses=1 type=i32] [debug line = 386:3]
  %tmp.69 = add nsw i32 %dh.load.1, %sh.load, !dbg !253 ; [#uses=2 type=i32] [debug line = 386:3]
  store i32 %tmp.69, i32* @yh, align 4, !dbg !253 ; [debug line = 386:3]
  %rh1.load.1 = load i32* @rh1, align 4, !dbg !254 ; [#uses=1 type=i32] [debug line = 389:3]
  store i32 %rh1.load.1, i32* @rh2, align 4, !dbg !254 ; [debug line = 389:3]
  store i32 %tmp.69, i32* @rh1, align 4, !dbg !255 ; [debug line = 390:3]
  %ph1.load.2 = load i32* @ph1, align 4, !dbg !256 ; [#uses=1 type=i32] [debug line = 391:3]
  store i32 %ph1.load.2, i32* @ph2, align 4, !dbg !256 ; [debug line = 391:3]
  %ph.load.2 = load i32* @ph, align 4, !dbg !257  ; [#uses=1 type=i32] [debug line = 392:3]
  store i32 %ph.load.2, i32* @ph1, align 4, !dbg !257 ; [debug line = 392:3]
  %il.load = load i32* @il, align 4, !dbg !258    ; [#uses=1 type=i32] [debug line = 395:3]
  %ih.load.2 = load i32* @ih, align 4, !dbg !258  ; [#uses=1 type=i32] [debug line = 395:3]
  %tmp.70 = shl i32 %ih.load.2, 6, !dbg !258      ; [#uses=1 type=i32] [debug line = 395:3]
  %tmp.71 = or i32 %tmp.70, %il.load, !dbg !258   ; [#uses=1 type=i32] [debug line = 395:3]
  ret i32 %tmp.71, !dbg !258                      ; [debug line = 395:3]
}

; [#uses=2]
define internal fastcc i32 @filtez(i32* %bpl, i32* %dlt) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32* %bpl}, i64 0, metadata !259), !dbg !260 ; [debug line = 581:14] [debug variable = bpl]
  call void @llvm.dbg.value(metadata !{i32* %dlt}, i64 0, metadata !261), !dbg !262 ; [debug line = 581:24] [debug variable = dlt]
  %bpl.load = load i32* %bpl, align 4, !dbg !263  ; [#uses=1 type=i32] [debug line = 585:3]
  %tmp = sext i32 %bpl.load to i64, !dbg !263     ; [#uses=1 type=i64] [debug line = 585:3]
  %dlt.load = load i32* %dlt, align 4, !dbg !263  ; [#uses=1 type=i32] [debug line = 585:3]
  %tmp.72 = sext i32 %dlt.load to i64, !dbg !263  ; [#uses=1 type=i64] [debug line = 585:3]
  %zl = mul nsw i64 %tmp.72, %tmp, !dbg !263      ; [#uses=1 type=i64] [debug line = 585:3]
  call void @llvm.dbg.value(metadata !{i64 %zl}, i64 0, metadata !265), !dbg !263 ; [debug line = 585:3] [debug variable = zl]
  br label %1, !dbg !266                          ; [debug line = 586:8]

; <label>:1                                       ; preds = %2, %0
  %zl1 = phi i64 [ %zl, %0 ], [ %zl.2, %2 ]       ; [#uses=2 type=i64]
  %dlt.pn.rec = phi i64 [ 0, %0 ], [ %.01.rec, %2 ] ; [#uses=2 type=i64]
  %.01.rec = add i64 %dlt.pn.rec, 1, !dbg !263    ; [#uses=3 type=i64] [debug line = 585:3]
  %dlt.assign = getelementptr inbounds i32* %dlt, i64 %.01.rec, !dbg !263 ; [#uses=1 type=i32*] [debug line = 585:3]
  call void @llvm.dbg.value(metadata !{i32* %dlt.assign}, i64 0, metadata !261), !dbg !263 ; [debug line = 585:3] [debug variable = dlt]
  %bpl.assign = getelementptr inbounds i32* %bpl, i64 %.01.rec, !dbg !263 ; [#uses=1 type=i32*] [debug line = 585:3]
  call void @llvm.dbg.value(metadata !{i32* %bpl.assign}, i64 0, metadata !259), !dbg !263 ; [debug line = 585:3] [debug variable = bpl]
  %lftr.wideiv4 = trunc i64 %dlt.pn.rec to i32, !dbg !266 ; [#uses=1 type=i32] [debug line = 586:8]
  %exitcond5 = icmp eq i32 %lftr.wideiv4, 5, !dbg !266 ; [#uses=1 type=i1] [debug line = 586:8]
  br i1 %exitcond5, label %3, label %2, !dbg !266 ; [debug line = 586:8]

; <label>:2                                       ; preds = %1
  %bpl.assign.load = load i32* %bpl.assign, align 4, !dbg !268 ; [#uses=1 type=i32] [debug line = 587:5]
  %tmp.76 = sext i32 %bpl.assign.load to i64, !dbg !268 ; [#uses=1 type=i64] [debug line = 587:5]
  %dlt.assign.load = load i32* %dlt.assign, align 4, !dbg !268 ; [#uses=1 type=i32] [debug line = 587:5]
  %tmp.77 = sext i32 %dlt.assign.load to i64, !dbg !268 ; [#uses=1 type=i64] [debug line = 587:5]
  %tmp.78 = mul nsw i64 %tmp.77, %tmp.76, !dbg !268 ; [#uses=1 type=i64] [debug line = 587:5]
  %zl.2 = add nsw i64 %tmp.78, %zl1, !dbg !268    ; [#uses=1 type=i64] [debug line = 587:5]
  call void @llvm.dbg.value(metadata !{i64 %zl.2}, i64 0, metadata !265), !dbg !268 ; [debug line = 587:5] [debug variable = zl]
  br label %1, !dbg !269                          ; [debug line = 586:22]

; <label>:3                                       ; preds = %1
  %zl.0.lcssa = phi i64 [ %zl1, %1 ]              ; [#uses=1 type=i64]
  %tmp.74 = lshr i64 %zl.0.lcssa, 14, !dbg !270   ; [#uses=1 type=i64] [debug line = 589:3]
  %tmp.75 = trunc i64 %tmp.74 to i32, !dbg !270   ; [#uses=1 type=i32] [debug line = 589:3]
  ret i32 %tmp.75, !dbg !270                      ; [debug line = 589:3]
}

; [#uses=2]
define internal fastcc i32 @filtep(i32 %rlt1, i32 %al1, i32 %rlt2, i32 %al2) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %rlt1}, i64 0, metadata !271), !dbg !272 ; [debug line = 596:13] [debug variable = rlt1]
  call void @llvm.dbg.value(metadata !{i32 %al1}, i64 0, metadata !273), !dbg !274 ; [debug line = 596:23] [debug variable = al1]
  call void @llvm.dbg.value(metadata !{i32 %rlt2}, i64 0, metadata !275), !dbg !276 ; [debug line = 596:32] [debug variable = rlt2]
  call void @llvm.dbg.value(metadata !{i32 %al2}, i64 0, metadata !277), !dbg !278 ; [debug line = 596:42] [debug variable = al2]
  %tmp = shl nsw i32 %rlt1, 1, !dbg !279          ; [#uses=1 type=i32] [debug line = 599:3]
  %pl = sext i32 %tmp to i64, !dbg !279           ; [#uses=1 type=i64] [debug line = 599:3]
  call void @llvm.dbg.value(metadata !{i64 %pl}, i64 0, metadata !281), !dbg !279 ; [debug line = 599:3] [debug variable = pl]
  %tmp.80 = sext i32 %al1 to i64, !dbg !282       ; [#uses=1 type=i64] [debug line = 600:3]
  %pl.1 = mul nsw i64 %tmp.80, %pl, !dbg !282     ; [#uses=1 type=i64] [debug line = 600:3]
  call void @llvm.dbg.value(metadata !{i64 %pl.1}, i64 0, metadata !281), !dbg !282 ; [debug line = 600:3] [debug variable = pl]
  %tmp.81 = shl nsw i32 %rlt2, 1, !dbg !283       ; [#uses=1 type=i32] [debug line = 601:3]
  %pl2 = sext i32 %tmp.81 to i64, !dbg !283       ; [#uses=1 type=i64] [debug line = 601:3]
  call void @llvm.dbg.value(metadata !{i64 %pl2}, i64 0, metadata !284), !dbg !283 ; [debug line = 601:3] [debug variable = pl2]
  %tmp.82 = sext i32 %al2 to i64, !dbg !285       ; [#uses=1 type=i64] [debug line = 602:3]
  %tmp.83 = mul nsw i64 %tmp.82, %pl2, !dbg !285  ; [#uses=1 type=i64] [debug line = 602:3]
  %pl.4 = add nsw i64 %tmp.83, %pl.1, !dbg !285   ; [#uses=1 type=i64] [debug line = 602:3]
  call void @llvm.dbg.value(metadata !{i64 %pl.4}, i64 0, metadata !281), !dbg !285 ; [debug line = 602:3] [debug variable = pl]
  %tmp.84 = lshr i64 %pl.4, 15, !dbg !286         ; [#uses=1 type=i64] [debug line = 603:3]
  %tmp.85 = trunc i64 %tmp.84 to i32, !dbg !286   ; [#uses=1 type=i32] [debug line = 603:3]
  ret i32 %tmp.85, !dbg !286                      ; [debug line = 603:3]
}

; [#uses=1]
define internal fastcc i32 @quantl(i32 %el, i32 %detl) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %el}, i64 0, metadata !287), !dbg !288 ; [debug line = 608:13] [debug variable = el]
  call void @llvm.dbg.value(metadata !{i32 %detl}, i64 0, metadata !289), !dbg !290 ; [debug line = 608:21] [debug variable = detl]
  %tmp = call fastcc i32 @abs(i32 %el), !dbg !291 ; [#uses=1 type=i32] [debug line = 614:8]
  %wd = sext i32 %tmp to i64, !dbg !291           ; [#uses=1 type=i64] [debug line = 614:8]
  call void @llvm.dbg.value(metadata !{i64 %wd}, i64 0, metadata !293), !dbg !291 ; [debug line = 614:8] [debug variable = wd]
  %tmp.86 = sext i32 %detl to i64, !dbg !294      ; [#uses=1 type=i64] [debug line = 618:7]
  br label %1, !dbg !297                          ; [debug line = 616:8]

; <label>:1                                       ; preds = %3, %0
  %mil = phi i32 [ 0, %0 ], [ %mil.1, %3 ]        ; [#uses=5 type=i32]
  %tmp.87 = icmp slt i32 %mil, 30, !dbg !297      ; [#uses=1 type=i1] [debug line = 616:8]
  br i1 %tmp.87, label %2, label %.loopexit, !dbg !297 ; [debug line = 616:8]

; <label>:2                                       ; preds = %1
  %tmp.88 = sext i32 %mil to i64, !dbg !294       ; [#uses=1 type=i64] [debug line = 618:7]
  %decis_levl.addr = getelementptr inbounds [30 x i32]* @decis_levl, i64 0, i64 %tmp.88, !dbg !294 ; [#uses=1 type=i32*] [debug line = 618:7]
  %decis_levl.load = load i32* %decis_levl.addr, align 4, !dbg !294 ; [#uses=2 type=i32] [debug line = 618:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %decis_levl.load) nounwind
  %tmp.89 = sext i32 %decis_levl.load to i64, !dbg !294 ; [#uses=1 type=i64] [debug line = 618:7]
  %tmp.90 = mul nsw i64 %tmp.89, %tmp.86, !dbg !294 ; [#uses=1 type=i64] [debug line = 618:7]
  %decis = ashr i64 %tmp.90, 15, !dbg !294        ; [#uses=1 type=i64] [debug line = 618:7]
  call void @llvm.dbg.value(metadata !{i64 %decis}, i64 0, metadata !298), !dbg !294 ; [debug line = 618:7] [debug variable = decis]
  %tmp.91 = icmp sgt i64 %wd, %decis, !dbg !299   ; [#uses=1 type=i1] [debug line = 619:7]
  br i1 %tmp.91, label %3, label %.loopexit, !dbg !299 ; [debug line = 619:7]

; <label>:3                                       ; preds = %2
  %mil.1 = add nsw i32 %mil, 1, !dbg !300         ; [#uses=1 type=i32] [debug line = 616:27]
  call void @llvm.dbg.value(metadata !{i32 %mil.1}, i64 0, metadata !301), !dbg !300 ; [debug line = 616:27] [debug variable = mil]
  br label %1, !dbg !300                          ; [debug line = 616:27]

.loopexit:                                        ; preds = %2, %1
  %mil.0.lcssa = phi i32 [ %mil, %2 ], [ %mil, %1 ] ; [#uses=2 type=i32]
  %tmp.92 = icmp sgt i32 %el, -1, !dbg !302       ; [#uses=1 type=i1] [debug line = 623:3]
  br i1 %tmp.92, label %4, label %5, !dbg !302    ; [debug line = 623:3]

; <label>:4                                       ; preds = %.loopexit
  %tmp.94 = sext i32 %mil.0.lcssa to i64, !dbg !303 ; [#uses=1 type=i64] [debug line = 624:5]
  %quant26bt_pos.addr = getelementptr inbounds [31 x i32]* @quant26bt_pos, i64 0, i64 %tmp.94, !dbg !303 ; [#uses=1 type=i32*] [debug line = 624:5]
  %ril = load i32* %quant26bt_pos.addr, align 4, !dbg !303 ; [#uses=2 type=i32] [debug line = 624:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ril) nounwind
  call void @llvm.dbg.value(metadata !{i32 %ril}, i64 0, metadata !304), !dbg !303 ; [debug line = 624:5] [debug variable = ril]
  br label %6, !dbg !303                          ; [debug line = 624:5]

; <label>:5                                       ; preds = %.loopexit
  %tmp.95 = sext i32 %mil.0.lcssa to i64, !dbg !305 ; [#uses=1 type=i64] [debug line = 626:5]
  %quant26bt_neg.addr = getelementptr inbounds [31 x i32]* @quant26bt_neg, i64 0, i64 %tmp.95, !dbg !305 ; [#uses=1 type=i32*] [debug line = 626:5]
  %ril.1 = load i32* %quant26bt_neg.addr, align 4, !dbg !305 ; [#uses=2 type=i32] [debug line = 626:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ril.1) nounwind
  call void @llvm.dbg.value(metadata !{i32 %ril.1}, i64 0, metadata !304), !dbg !305 ; [debug line = 626:5] [debug variable = ril]
  br label %6

; <label>:6                                       ; preds = %5, %4
  %ril2 = phi i32 [ %ril, %4 ], [ %ril.1, %5 ]    ; [#uses=1 type=i32]
  ret i32 %ril2, !dbg !306                        ; [debug line = 627:3]
}

; [#uses=1]
define internal fastcc i32 @logscl(i32 %il, i32 %nbl) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %il}, i64 0, metadata !307), !dbg !308 ; [debug line = 634:13] [debug variable = il]
  call void @llvm.dbg.value(metadata !{i32 %nbl}, i64 0, metadata !309), !dbg !310 ; [debug line = 634:21] [debug variable = nbl]
  %tmp = sext i32 %nbl to i64, !dbg !311          ; [#uses=1 type=i64] [debug line = 637:3]
  %tmp.96 = mul nsw i64 %tmp, 127, !dbg !311      ; [#uses=1 type=i64] [debug line = 637:3]
  %wd. = lshr i64 %tmp.96, 7, !dbg !311           ; [#uses=1 type=i64] [debug line = 637:3]
  %tmp.97 = trunc i64 %wd. to i32, !dbg !313      ; [#uses=1 type=i32] [debug line = 638:3]
  %tmp.98 = ashr i32 %il, 2, !dbg !313            ; [#uses=1 type=i32] [debug line = 638:3]
  %tmp.99 = sext i32 %tmp.98 to i64, !dbg !313    ; [#uses=1 type=i64] [debug line = 638:3]
  %wl_code_table.addr = getelementptr inbounds [16 x i32]* @wl_code_table, i64 0, i64 %tmp.99, !dbg !313 ; [#uses=1 type=i32*] [debug line = 638:3]
  %wl_code_table.load = load i32* %wl_code_table.addr, align 4, !dbg !313 ; [#uses=2 type=i32] [debug line = 638:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wl_code_table.load) nounwind
  %nbl.assign = add nsw i32 %wl_code_table.load, %tmp.97, !dbg !313 ; [#uses=2 type=i32] [debug line = 638:3]
  call void @llvm.dbg.value(metadata !{i32 %nbl.assign}, i64 0, metadata !309), !dbg !313 ; [debug line = 638:3] [debug variable = nbl]
  %tmp.101 = icmp slt i32 %nbl.assign, 0, !dbg !314 ; [#uses=1 type=i1] [debug line = 639:3]
  %. = select i1 %tmp.101, i32 0, i32 %nbl.assign, !dbg !314 ; [#uses=2 type=i32] [debug line = 639:3]
  %tmp.102 = icmp sgt i32 %., 18432, !dbg !315    ; [#uses=1 type=i1] [debug line = 641:3]
  %.1 = select i1 %tmp.102, i32 18432, i32 %., !dbg !315 ; [#uses=1 type=i32] [debug line = 641:3]
  ret i32 %.1, !dbg !316                          ; [debug line = 643:3]
}

; [#uses=2]
define internal fastcc i32 @scalel(i32 %nbl, i32 %shift_constant) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %nbl}, i64 0, metadata !317), !dbg !318 ; [debug line = 649:13] [debug variable = nbl]
  call void @llvm.dbg.value(metadata !{i32 %shift_constant}, i64 0, metadata !319), !dbg !320 ; [debug line = 649:22] [debug variable = shift_constant]
  %tmp = lshr i32 %nbl, 6, !dbg !321              ; [#uses=1 type=i32] [debug line = 652:3]
  %wd1 = and i32 %tmp, 31, !dbg !321              ; [#uses=1 type=i32] [debug line = 652:3]
  call void @llvm.dbg.value(metadata !{i32 %wd1}, i64 0, metadata !323), !dbg !321 ; [debug line = 652:3] [debug variable = wd1]
  %wd2 = ashr i32 %nbl, 11, !dbg !324             ; [#uses=1 type=i32] [debug line = 653:3]
  call void @llvm.dbg.value(metadata !{i32 %wd2}, i64 0, metadata !325), !dbg !324 ; [debug line = 653:3] [debug variable = wd2]
  %tmp.103 = zext i32 %wd1 to i64, !dbg !326      ; [#uses=1 type=i64] [debug line = 654:3]
  %ilb_table.addr = getelementptr inbounds [32 x i32]* @ilb_table, i64 0, i64 %tmp.103, !dbg !326 ; [#uses=1 type=i32*] [debug line = 654:3]
  %ilb_table.load = load i32* %ilb_table.addr, align 4, !dbg !326 ; [#uses=2 type=i32] [debug line = 654:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %ilb_table.load) nounwind
  %wd2.0.neg = sub i32 0, %wd2                    ; [#uses=1 type=i32]
  %tmp.104 = add i32 %shift_constant, 1, !dbg !326 ; [#uses=1 type=i32] [debug line = 654:3]
  %tmp.105 = add i32 %tmp.104, %wd2.0.neg, !dbg !326 ; [#uses=1 type=i32] [debug line = 654:3]
  %wd3 = ashr i32 %ilb_table.load, %tmp.105, !dbg !326 ; [#uses=1 type=i32] [debug line = 654:3]
  call void @llvm.dbg.value(metadata !{i32 %wd3}, i64 0, metadata !327), !dbg !326 ; [debug line = 654:3] [debug variable = wd3]
  %tmp.106 = shl i32 %wd3, 3, !dbg !328           ; [#uses=1 type=i32] [debug line = 655:3]
  ret i32 %tmp.106, !dbg !328                     ; [debug line = 655:3]
}

; [#uses=2]
define internal fastcc void @upzero(i32 %dlt, i32* %dlti, i32* %bli) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %dlt}, i64 0, metadata !329), !dbg !330 ; [debug line = 662:13] [debug variable = dlt]
  call void @llvm.dbg.value(metadata !{i32* %dlti}, i64 0, metadata !331), !dbg !332 ; [debug line = 662:23] [debug variable = dlti]
  call void @llvm.dbg.value(metadata !{i32* %bli}, i64 0, metadata !333), !dbg !334 ; [debug line = 662:34] [debug variable = bli]
  %tmp = icmp eq i32 %dlt, 0, !dbg !335           ; [#uses=1 type=i1] [debug line = 666:3]
  br i1 %tmp, label %.preheader2.preheader, label %.preheader.preheader, !dbg !335 ; [debug line = 666:3]

.preheader2.preheader:                            ; preds = %0
  br label %.preheader2, !dbg !337                ; [debug line = 668:12]

.preheader.preheader:                             ; preds = %0
  %tmp.107 = sext i32 %dlt to i64, !dbg !340      ; [#uses=1 type=i64] [debug line = 677:4]
  br label %.preheader, !dbg !344                 ; [debug line = 675:12]

.preheader2:                                      ; preds = %1, %.preheader2.preheader
  %i = phi i32 [ %i.4, %1 ], [ 0, %.preheader2.preheader ] ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i, 6, !dbg !337       ; [#uses=1 type=i1] [debug line = 668:12]
  br i1 %exitcond1, label %.loopexit.loopexit8, label %1, !dbg !337 ; [debug line = 668:12]

; <label>:1                                       ; preds = %.preheader2
  %tmp.108 = sext i32 %i to i64, !dbg !345        ; [#uses=1 type=i64] [debug line = 670:4]
  %bli.addr = getelementptr inbounds i32* %bli, i64 %tmp.108, !dbg !345 ; [#uses=2 type=i32*] [debug line = 670:4]
  %bli.load = load i32* %bli.addr, align 4, !dbg !345 ; [#uses=2 type=i32] [debug line = 670:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %bli.load) nounwind
  %tmp.109 = sext i32 %bli.load to i64, !dbg !345 ; [#uses=1 type=i64] [debug line = 670:4]
  %tmp.110 = mul nsw i64 %tmp.109, 255, !dbg !345 ; [#uses=1 type=i64] [debug line = 670:4]
  %tmp.111 = lshr i64 %tmp.110, 8, !dbg !345      ; [#uses=1 type=i64] [debug line = 670:4]
  %tmp.112 = trunc i64 %tmp.111 to i32, !dbg !345 ; [#uses=1 type=i32] [debug line = 670:4]
  store i32 %tmp.112, i32* %bli.addr, align 4, !dbg !345 ; [debug line = 670:4]
  %i.4 = add nsw i32 %i, 1, !dbg !347             ; [#uses=1 type=i32] [debug line = 668:26]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !348), !dbg !347 ; [debug line = 668:26] [debug variable = i]
  br label %.preheader2, !dbg !347                ; [debug line = 668:26]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %i.1 = phi i32 [ %i.5, %2 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i.1, 6, !dbg !344      ; [#uses=1 type=i1] [debug line = 675:12]
  br i1 %exitcond, label %.loopexit.loopexit, label %2, !dbg !344 ; [debug line = 675:12]

; <label>:2                                       ; preds = %.preheader
  %tmp.114 = sext i32 %i.1 to i64, !dbg !340      ; [#uses=2 type=i64] [debug line = 677:4]
  %dlti.addr = getelementptr inbounds i32* %dlti, i64 %tmp.114, !dbg !340 ; [#uses=1 type=i32*] [debug line = 677:4]
  %dlti.load = load i32* %dlti.addr, align 4, !dbg !340 ; [#uses=2 type=i32] [debug line = 677:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %dlti.load) nounwind
  %tmp.115 = sext i32 %dlti.load to i64, !dbg !340 ; [#uses=1 type=i64] [debug line = 677:4]
  %tmp.116 = mul nsw i64 %tmp.115, %tmp.107, !dbg !340 ; [#uses=1 type=i64] [debug line = 677:4]
  %tmp.117 = icmp sgt i64 %tmp.116, -1, !dbg !340 ; [#uses=1 type=i1] [debug line = 677:4]
  %wd2 = select i1 %tmp.117, i32 128, i32 -128, !dbg !340 ; [#uses=1 type=i32] [debug line = 677:4]
  %bli.addr.1 = getelementptr inbounds i32* %bli, i64 %tmp.114, !dbg !349 ; [#uses=2 type=i32*] [debug line = 681:4]
  %bli.load.1 = load i32* %bli.addr.1, align 4, !dbg !349 ; [#uses=2 type=i32] [debug line = 681:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %bli.load.1) nounwind
  %tmp.118 = sext i32 %bli.load.1 to i64, !dbg !349 ; [#uses=1 type=i64] [debug line = 681:4]
  %tmp.119 = mul nsw i64 %tmp.118, 255, !dbg !349 ; [#uses=1 type=i64] [debug line = 681:4]
  %tmp.120 = lshr i64 %tmp.119, 8, !dbg !349      ; [#uses=1 type=i64] [debug line = 681:4]
  %wd3 = trunc i64 %tmp.120 to i32, !dbg !349     ; [#uses=1 type=i32] [debug line = 681:4]
  call void @llvm.dbg.value(metadata !{i32 %wd3}, i64 0, metadata !350), !dbg !349 ; [debug line = 681:4] [debug variable = wd3]
  %tmp.121 = add nsw i32 %wd3, %wd2, !dbg !351    ; [#uses=1 type=i32] [debug line = 682:4]
  store i32 %tmp.121, i32* %bli.addr.1, align 4, !dbg !351 ; [debug line = 682:4]
  %i.5 = add nsw i32 %i.1, 1, !dbg !352           ; [#uses=1 type=i32] [debug line = 675:26]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !348), !dbg !352 ; [debug line = 675:26] [debug variable = i]
  br label %.preheader, !dbg !352                 ; [debug line = 675:26]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit.loopexit8:                              ; preds = %.preheader2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit8, %.loopexit.loopexit
  %dlti.addr.1 = getelementptr inbounds i32* %dlti, i64 4, !dbg !353 ; [#uses=2 type=i32*] [debug line = 686:3]
  %dlti.load.1 = load i32* %dlti.addr.1, align 4, !dbg !353 ; [#uses=2 type=i32] [debug line = 686:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %dlti.load.1) nounwind
  %dlti.addr.2 = getelementptr inbounds i32* %dlti, i64 5, !dbg !353 ; [#uses=1 type=i32*] [debug line = 686:3]
  store i32 %dlti.load.1, i32* %dlti.addr.2, align 4, !dbg !353 ; [debug line = 686:3]
  %dlti.addr.3 = getelementptr inbounds i32* %dlti, i64 3, !dbg !354 ; [#uses=2 type=i32*] [debug line = 687:3]
  %dlti.load.2 = load i32* %dlti.addr.3, align 4, !dbg !354 ; [#uses=2 type=i32] [debug line = 687:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %dlti.load.2) nounwind
  store i32 %dlti.load.2, i32* %dlti.addr.1, align 4, !dbg !354 ; [debug line = 687:3]
  %dlti.addr.4 = getelementptr inbounds i32* %dlti, i64 2, !dbg !355 ; [#uses=2 type=i32*] [debug line = 688:3]
  %dlti.load.3 = load i32* %dlti.addr.4, align 4, !dbg !355 ; [#uses=2 type=i32] [debug line = 688:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %dlti.load.3) nounwind
  store i32 %dlti.load.3, i32* %dlti.addr.3, align 4, !dbg !355 ; [debug line = 688:3]
  %dlti.addr.5 = getelementptr inbounds i32* %dlti, i64 1, !dbg !356 ; [#uses=2 type=i32*] [debug line = 689:3]
  %dlti.load.4 = load i32* %dlti.addr.5, align 4, !dbg !356 ; [#uses=2 type=i32] [debug line = 689:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %dlti.load.4) nounwind
  store i32 %dlti.load.4, i32* %dlti.addr.4, align 4, !dbg !356 ; [debug line = 689:3]
  %dlti.load.5 = load i32* %dlti, align 4, !dbg !357 ; [#uses=2 type=i32] [debug line = 690:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %dlti.load.5) nounwind
  store i32 %dlti.load.5, i32* %dlti.addr.5, align 4, !dbg !357 ; [debug line = 690:3]
  store i32 %dlt, i32* %dlti, align 4, !dbg !358  ; [debug line = 691:3]
  ret void, !dbg !359                             ; [debug line = 692:1]
}

; [#uses=2]
define internal fastcc i32 @uppol2(i32 %al1, i32 %al2, i32 %plt, i32 %plt1, i32 %plt2) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %al1}, i64 0, metadata !360), !dbg !361 ; [debug line = 698:13] [debug variable = al1]
  call void @llvm.dbg.value(metadata !{i32 %al2}, i64 0, metadata !362), !dbg !363 ; [debug line = 698:22] [debug variable = al2]
  call void @llvm.dbg.value(metadata !{i32 %plt}, i64 0, metadata !364), !dbg !365 ; [debug line = 698:31] [debug variable = plt]
  call void @llvm.dbg.value(metadata !{i32 %plt1}, i64 0, metadata !366), !dbg !367 ; [debug line = 698:40] [debug variable = plt1]
  call void @llvm.dbg.value(metadata !{i32 %plt2}, i64 0, metadata !368), !dbg !369 ; [debug line = 698:50] [debug variable = plt2]
  %tmp = sext i32 %al1 to i64, !dbg !370          ; [#uses=1 type=i64] [debug line = 702:3]
  %wd2 = shl nsw i64 %tmp, 2, !dbg !370           ; [#uses=2 type=i64] [debug line = 702:3]
  call void @llvm.dbg.value(metadata !{i64 %wd2}, i64 0, metadata !372), !dbg !370 ; [debug line = 702:3] [debug variable = wd2]
  %tmp.124 = sext i32 %plt to i64, !dbg !373      ; [#uses=2 type=i64] [debug line = 703:3]
  %tmp.125 = sext i32 %plt1 to i64, !dbg !373     ; [#uses=1 type=i64] [debug line = 703:3]
  %tmp.126 = mul nsw i64 %tmp.125, %tmp.124, !dbg !373 ; [#uses=1 type=i64] [debug line = 703:3]
  %tmp.127 = icmp sgt i64 %tmp.126, -1, !dbg !373 ; [#uses=1 type=i1] [debug line = 703:3]
  %wd2.1 = sub nsw i64 0, %wd2, !dbg !374         ; [#uses=1 type=i64] [debug line = 704:5]
  call void @llvm.dbg.value(metadata !{i64 %wd2.1}, i64 0, metadata !372), !dbg !374 ; [debug line = 704:5] [debug variable = wd2]
  %wd2.3 = select i1 %tmp.127, i64 %wd2.1, i64 %wd2, !dbg !373 ; [#uses=1 type=i64] [debug line = 703:3]
  call void @llvm.dbg.value(metadata !{i64 %wd2.3}, i64 0, metadata !372), !dbg !373 ; [debug line = 703:3] [debug variable = wd2]
  %tmp.129 = lshr i64 %wd2.3, 7, !dbg !375        ; [#uses=1 type=i64] [debug line = 705:3]
  %tmp.130 = sext i32 %plt2 to i64, !dbg !376     ; [#uses=1 type=i64] [debug line = 706:3]
  %tmp.131 = mul nsw i64 %tmp.130, %tmp.124, !dbg !376 ; [#uses=1 type=i64] [debug line = 706:3]
  %tmp.132 = ashr i64 %tmp.131, 63, !dbg !376     ; [#uses=1 type=i64] [debug line = 706:3]
  %tmp.133 = and i64 %tmp.132, 4294967040, !dbg !376 ; [#uses=1 type=i64] [debug line = 706:3]
  %tmp.134 = or i64 %tmp.133, 128, !dbg !376      ; [#uses=1 type=i64] [debug line = 706:3]
  call void @llvm.dbg.value(metadata !{i64 %wd4}, i64 0, metadata !377), !dbg !376 ; [debug line = 706:3] [debug variable = wd4]
  %tmp.135 = sext i32 %al2 to i64, !dbg !378      ; [#uses=1 type=i64] [debug line = 714:3]
  %tmp.136 = mul nsw i64 %tmp.135, 127, !dbg !378 ; [#uses=1 type=i64] [debug line = 714:3]
  %tmp.137 = lshr i64 %tmp.136, 7, !dbg !378      ; [#uses=1 type=i64] [debug line = 714:3]
  %wd4 = add i64 %tmp.129, %tmp.137, !dbg !376    ; [#uses=1 type=i64] [debug line = 706:3]
  %tmp.138 = add i64 %wd4, %tmp.134, !dbg !378    ; [#uses=1 type=i64] [debug line = 714:3]
  %apl2 = trunc i64 %tmp.138 to i32, !dbg !378    ; [#uses=2 type=i32] [debug line = 714:3]
  call void @llvm.dbg.value(metadata !{i32 %apl2}, i64 0, metadata !379), !dbg !378 ; [debug line = 714:3] [debug variable = apl2]
  %tmp.140 = icmp sgt i32 %apl2, 12288, !dbg !380 ; [#uses=1 type=i1] [debug line = 717:3]
  %. = select i1 %tmp.140, i32 12288, i32 %apl2, !dbg !380 ; [#uses=2 type=i32] [debug line = 717:3]
  %tmp.141 = icmp slt i32 %., -12288, !dbg !381   ; [#uses=1 type=i1] [debug line = 719:3]
  %apl2.1 = select i1 %tmp.141, i32 -12288, i32 %., !dbg !381 ; [#uses=1 type=i32] [debug line = 719:3]
  ret i32 %apl2.1, !dbg !382                      ; [debug line = 721:3]
}

; [#uses=2]
define internal fastcc i32 @uppol1(i32 %al1, i32 %apl2, i32 %plt, i32 %plt1) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %al1}, i64 0, metadata !383), !dbg !384 ; [debug line = 728:13] [debug variable = al1]
  call void @llvm.dbg.value(metadata !{i32 %apl2}, i64 0, metadata !385), !dbg !386 ; [debug line = 728:22] [debug variable = apl2]
  call void @llvm.dbg.value(metadata !{i32 %plt}, i64 0, metadata !387), !dbg !388 ; [debug line = 728:32] [debug variable = plt]
  call void @llvm.dbg.value(metadata !{i32 %plt1}, i64 0, metadata !389), !dbg !390 ; [debug line = 728:41] [debug variable = plt1]
  %tmp = sext i32 %al1 to i64, !dbg !391          ; [#uses=1 type=i64] [debug line = 732:3]
  %tmp.142 = mul nsw i64 %tmp, 255, !dbg !391     ; [#uses=1 type=i64] [debug line = 732:3]
  %wd2 = ashr i64 %tmp.142, 8, !dbg !391          ; [#uses=2 type=i64] [debug line = 732:3]
  call void @llvm.dbg.value(metadata !{i64 %wd2}, i64 0, metadata !393), !dbg !391 ; [debug line = 732:3] [debug variable = wd2]
  %tmp.143 = sext i32 %plt to i64, !dbg !394      ; [#uses=1 type=i64] [debug line = 733:3]
  %tmp.144 = sext i32 %plt1 to i64, !dbg !394     ; [#uses=1 type=i64] [debug line = 733:3]
  %tmp.145 = mul nsw i64 %tmp.144, %tmp.143, !dbg !394 ; [#uses=1 type=i64] [debug line = 733:3]
  %tmp.146 = icmp sgt i64 %tmp.145, -1, !dbg !394 ; [#uses=1 type=i1] [debug line = 733:3]
  br i1 %tmp.146, label %1, label %2, !dbg !394   ; [debug line = 733:3]

; <label>:1                                       ; preds = %0
  %tmp.147 = trunc i64 %wd2 to i32, !dbg !395     ; [#uses=1 type=i32] [debug line = 735:7]
  %apl1 = add nsw i32 %tmp.147, 192, !dbg !395    ; [#uses=1 type=i32] [debug line = 735:7]
  call void @llvm.dbg.value(metadata !{i32 %apl1}, i64 0, metadata !397), !dbg !395 ; [debug line = 735:7] [debug variable = apl1]
  br label %3, !dbg !398                          ; [debug line = 736:5]

; <label>:2                                       ; preds = %0
  %tmp.149 = trunc i64 %wd2 to i32, !dbg !399     ; [#uses=1 type=i32] [debug line = 739:7]
  %apl1.1 = add nsw i32 %tmp.149, -192, !dbg !399 ; [#uses=1 type=i32] [debug line = 739:7]
  call void @llvm.dbg.value(metadata !{i32 %apl1.1}, i64 0, metadata !397), !dbg !399 ; [debug line = 739:7] [debug variable = apl1]
  br label %3

; <label>:3                                       ; preds = %2, %1
  %apl12 = phi i32 [ %apl1, %1 ], [ %apl1.1, %2 ] ; [#uses=2 type=i32]
  %apl1.5 = sub nsw i32 15360, %apl2, !dbg !401   ; [#uses=3 type=i32] [debug line = 742:3]
  call void @llvm.dbg.value(metadata !{i32 %apl1.5}, i64 0, metadata !397), !dbg !402 ; [debug line = 744:5] [debug variable = apl1]
  call void @llvm.dbg.value(metadata !{i32 %apl1.5}, i64 0, metadata !403), !dbg !401 ; [debug line = 742:3] [debug variable = wd3]
  %tmp.151 = icmp sgt i32 %apl12, %apl1.5, !dbg !404 ; [#uses=1 type=i1] [debug line = 743:3]
  %wd3.0.apl1 = select i1 %tmp.151, i32 %apl1.5, i32 %apl12, !dbg !404 ; [#uses=2 type=i32] [debug line = 743:3]
  %apl1.4 = sub nsw i32 0, %apl1.5, !dbg !405     ; [#uses=2 type=i32] [debug line = 745:3]
  %tmp.153 = icmp slt i32 %wd3.0.apl1, %apl1.4, !dbg !405 ; [#uses=1 type=i1] [debug line = 745:3]
  call void @llvm.dbg.value(metadata !{i32 %apl1.4}, i64 0, metadata !397), !dbg !406 ; [debug line = 746:5] [debug variable = apl1]
  %apl1.2 = select i1 %tmp.153, i32 %apl1.4, i32 %wd3.0.apl1, !dbg !405 ; [#uses=1 type=i32] [debug line = 745:3]
  call void @llvm.dbg.value(metadata !{i32 %apl1.2}, i64 0, metadata !397), !dbg !405 ; [debug line = 745:3] [debug variable = apl1]
  ret i32 %apl1.2, !dbg !407                      ; [debug line = 747:3]
}

; [#uses=1]
define internal fastcc i32 @logsch(i32 %ih, i32 %nbh) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %ih}, i64 0, metadata !408), !dbg !409 ; [debug line = 754:13] [debug variable = ih]
  call void @llvm.dbg.value(metadata !{i32 %nbh}, i64 0, metadata !410), !dbg !411 ; [debug line = 754:21] [debug variable = nbh]
  %tmp = sext i32 %nbh to i64, !dbg !412          ; [#uses=1 type=i64] [debug line = 757:3]
  %tmp.154 = mul nsw i64 %tmp, 127, !dbg !412     ; [#uses=1 type=i64] [debug line = 757:3]
  %tmp.155 = lshr i64 %tmp.154, 7, !dbg !412      ; [#uses=1 type=i64] [debug line = 757:3]
  %wd = trunc i64 %tmp.155 to i32, !dbg !412      ; [#uses=1 type=i32] [debug line = 757:3]
  call void @llvm.dbg.value(metadata !{i32 %wd}, i64 0, metadata !414), !dbg !412 ; [debug line = 757:3] [debug variable = wd]
  %tmp.156 = sext i32 %ih to i64, !dbg !415       ; [#uses=1 type=i64] [debug line = 758:3]
  %wh_code_table.addr = getelementptr inbounds [4 x i32]* @wh_code_table, i64 0, i64 %tmp.156, !dbg !415 ; [#uses=1 type=i32*] [debug line = 758:3]
  %wh_code_table.load = load i32* %wh_code_table.addr, align 4, !dbg !415 ; [#uses=2 type=i32] [debug line = 758:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %wh_code_table.load) nounwind
  %nbh.assign = add nsw i32 %wh_code_table.load, %wd, !dbg !415 ; [#uses=2 type=i32] [debug line = 758:3]
  call void @llvm.dbg.value(metadata !{i32 %nbh.assign}, i64 0, metadata !410), !dbg !415 ; [debug line = 758:3] [debug variable = nbh]
  %tmp.158 = icmp slt i32 %nbh.assign, 0, !dbg !416 ; [#uses=1 type=i1] [debug line = 759:3]
  %. = select i1 %tmp.158, i32 0, i32 %nbh.assign, !dbg !416 ; [#uses=2 type=i32] [debug line = 759:3]
  %tmp.159 = icmp sgt i32 %., 22528, !dbg !417    ; [#uses=1 type=i1] [debug line = 761:3]
  %.1 = select i1 %tmp.159, i32 22528, i32 %., !dbg !417 ; [#uses=1 type=i32] [debug line = 761:3]
  ret i32 %.1, !dbg !418                          ; [debug line = 763:3]
}

; [#uses=77]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=24]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/scratch/qijing.huang/firechip/hls_adpcm_encode/src/main/c/adpcm_prj/solution1/.autopilot/db/adpcm.pragma.2.c", metadata !"/scratch/qijing.huang/firechip/hls_adpcm_encode/src/main/c", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !43} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !15, metadata !18, metadata !21, metadata !25, metadata !28, metadata !29, metadata !30, metadata !31, metadata !34, metadata !37, metadata !38, metadata !39, metadata !40}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"abs", metadata !"abs", metadata !"", metadata !6, i32 236, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @abs, null, null, metadata !10, i32 237} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"adpcm.c", metadata !"/scratch/qijing.huang/firechip/hls_adpcm_encode/src/main/c", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786478, i32 0, metadata !6, metadata !"encode", metadata !"encode", metadata !"", metadata !6, i32 248, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @encode, null, null, metadata !10, i32 249} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{metadata !9, metadata !9, metadata !9}
!15 = metadata !{i32 786478, i32 0, metadata !6, metadata !"decode", metadata !"decode", metadata !"", metadata !6, i32 401, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 402} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{null, metadata !9}
!18 = metadata !{i32 786478, i32 0, metadata !6, metadata !"reset", metadata !"reset", metadata !"", metadata !6, i32 540, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !10, i32 541} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null}
!21 = metadata !{i32 786478, i32 0, metadata !6, metadata !"filtez", metadata !"filtez", metadata !"", metadata !6, i32 581, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32*, i32*)* @filtez, null, null, metadata !10, i32 582} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{metadata !9, metadata !24, metadata !24}
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786478, i32 0, metadata !6, metadata !"filtep", metadata !"filtep", metadata !"", metadata !6, i32 596, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32, i32)* @filtep, null, null, metadata !10, i32 597} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{metadata !9, metadata !9, metadata !9, metadata !9, metadata !9}
!28 = metadata !{i32 786478, i32 0, metadata !6, metadata !"quantl", metadata !"quantl", metadata !"", metadata !6, i32 608, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @quantl, null, null, metadata !10, i32 609} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786478, i32 0, metadata !6, metadata !"logscl", metadata !"logscl", metadata !"", metadata !6, i32 634, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @logscl, null, null, metadata !10, i32 635} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786478, i32 0, metadata !6, metadata !"scalel", metadata !"scalel", metadata !"", metadata !6, i32 649, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @scalel, null, null, metadata !10, i32 650} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786478, i32 0, metadata !6, metadata !"upzero", metadata !"upzero", metadata !"", metadata !6, i32 662, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32*, i32*)* @upzero, null, null, metadata !10, i32 663} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{null, metadata !9, metadata !24, metadata !24}
!34 = metadata !{i32 786478, i32 0, metadata !6, metadata !"uppol2", metadata !"uppol2", metadata !"", metadata !6, i32 698, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32, i32, i32)* @uppol2, null, null, metadata !10, i32 699} ; [ DW_TAG_subprogram ]
!35 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!36 = metadata !{metadata !9, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9}
!37 = metadata !{i32 786478, i32 0, metadata !6, metadata !"uppol1", metadata !"uppol1", metadata !"", metadata !6, i32 728, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32, i32)* @uppol1, null, null, metadata !10, i32 729} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786478, i32 0, metadata !6, metadata !"logsch", metadata !"logsch", metadata !"", metadata !6, i32 754, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @logsch, null, null, metadata !10, i32 755} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 786478, i32 0, metadata !6, metadata !"adpcm_main", metadata !"adpcm_main", metadata !"", metadata !6, i32 837, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !10, i32 838} ; [ DW_TAG_subprogram ]
!40 = metadata !{i32 786478, i32 0, metadata !6, metadata !"main", metadata !"main", metadata !"", metadata !6, i32 859, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !10, i32 860} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!42 = metadata !{metadata !9}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !45, metadata !50, metadata !54, metadata !58, metadata !59, metadata !63, metadata !67, metadata !71, metadata !72, metadata !76, metadata !77, metadata !81, metadata !82, metadata !83, metadata !85, metadata !86, metadata !87, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !172}
!45 = metadata !{i32 786484, i32 0, null, metadata !"h", metadata !"h", metadata !"", metadata !6, i32 87, metadata !46, i32 0, i32 1, [24 x i32]* @h} ; [ DW_TAG_variable ]
!46 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 768, i64 32, i32 0, i32 0, metadata !47, metadata !48, i32 0, i32 0} ; [ DW_TAG_array_type ]
!47 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786465, i64 0, i64 23}       ; [ DW_TAG_subrange_type ]
!50 = metadata !{i32 786484, i32 0, null, metadata !"qq4_code4_table", metadata !"qq4_code4_table", metadata !"", metadata !6, i32 107, metadata !51, i32 0, i32 1, [16 x i32]* @qq4_code4_table} ; [ DW_TAG_variable ]
!51 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 32, i32 0, i32 0, metadata !47, metadata !52, i32 0, i32 0} ; [ DW_TAG_array_type ]
!52 = metadata !{metadata !53}
!53 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!54 = metadata !{i32 786484, i32 0, null, metadata !"qq6_code6_table", metadata !"qq6_code6_table", metadata !"", metadata !6, i32 113, metadata !55, i32 0, i32 1, [64 x i32]* @qq6_code6_table} ; [ DW_TAG_variable ]
!55 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !47, metadata !56, i32 0, i32 0} ; [ DW_TAG_array_type ]
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786465, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!58 = metadata !{i32 786484, i32 0, null, metadata !"wl_code_table", metadata !"wl_code_table", metadata !"", metadata !6, i32 128, metadata !51, i32 0, i32 1, [16 x i32]* @wl_code_table} ; [ DW_TAG_variable ]
!59 = metadata !{i32 786484, i32 0, null, metadata !"ilb_table", metadata !"ilb_table", metadata !"", metadata !6, i32 133, metadata !60, i32 0, i32 1, [32 x i32]* @ilb_table} ; [ DW_TAG_variable ]
!60 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !47, metadata !61, i32 0, i32 0} ; [ DW_TAG_array_type ]
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!63 = metadata !{i32 786484, i32 0, null, metadata !"decis_levl", metadata !"decis_levl", metadata !"", metadata !6, i32 147, metadata !64, i32 0, i32 1, [30 x i32]* @decis_levl} ; [ DW_TAG_variable ]
!64 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 960, i64 32, i32 0, i32 0, metadata !47, metadata !65, i32 0, i32 0} ; [ DW_TAG_array_type ]
!65 = metadata !{metadata !66}
!66 = metadata !{i32 786465, i64 0, i64 29}       ; [ DW_TAG_subrange_type ]
!67 = metadata !{i32 786484, i32 0, null, metadata !"quant26bt_pos", metadata !"quant26bt_pos", metadata !"", metadata !6, i32 158, metadata !68, i32 0, i32 1, [31 x i32]* @quant26bt_pos} ; [ DW_TAG_variable ]
!68 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 992, i64 32, i32 0, i32 0, metadata !47, metadata !69, i32 0, i32 0} ; [ DW_TAG_array_type ]
!69 = metadata !{metadata !70}
!70 = metadata !{i32 786465, i64 0, i64 30}       ; [ DW_TAG_subrange_type ]
!71 = metadata !{i32 786484, i32 0, null, metadata !"quant26bt_neg", metadata !"quant26bt_neg", metadata !"", metadata !6, i32 167, metadata !68, i32 0, i32 1, [31 x i32]* @quant26bt_neg} ; [ DW_TAG_variable ]
!72 = metadata !{i32 786484, i32 0, null, metadata !"qq2_code2_table", metadata !"qq2_code2_table", metadata !"", metadata !6, i32 179, metadata !73, i32 0, i32 1, [4 x i32]* @qq2_code2_table} ; [ DW_TAG_variable ]
!73 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !47, metadata !74, i32 0, i32 0} ; [ DW_TAG_array_type ]
!74 = metadata !{metadata !75}
!75 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!76 = metadata !{i32 786484, i32 0, null, metadata !"wh_code_table", metadata !"wh_code_table", metadata !"", metadata !6, i32 183, metadata !73, i32 0, i32 1, [4 x i32]* @wh_code_table} ; [ DW_TAG_variable ]
!77 = metadata !{i32 786484, i32 0, null, metadata !"test_data", metadata !"test_data", metadata !"", metadata !6, i32 778, metadata !78, i32 0, i32 1, [100 x i32]* @test_data} ; [ DW_TAG_variable ]
!78 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 3200, i64 32, i32 0, i32 0, metadata !47, metadata !79, i32 0, i32 0} ; [ DW_TAG_array_type ]
!79 = metadata !{metadata !80}
!80 = metadata !{i32 786465, i64 0, i64 99}       ; [ DW_TAG_subrange_type ]
!81 = metadata !{i32 786484, i32 0, null, metadata !"test_compressed", metadata !"test_compressed", metadata !"", metadata !6, i32 801, metadata !78, i32 0, i32 1, [100 x i32]* @test_compressed} ; [ DW_TAG_variable ]
!82 = metadata !{i32 786484, i32 0, null, metadata !"test_result", metadata !"test_result", metadata !"", metadata !6, i32 813, metadata !78, i32 0, i32 1, [100 x i32]* @test_result} ; [ DW_TAG_variable ]
!83 = metadata !{i32 786484, i32 0, null, metadata !"tqmf", metadata !"tqmf", metadata !"", metadata !6, i32 83, metadata !84, i32 0, i32 1, [24 x i32]* @tqmf} ; [ DW_TAG_variable ]
!84 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 768, i64 32, i32 0, i32 0, metadata !9, metadata !48, i32 0, i32 0} ; [ DW_TAG_array_type ]
!85 = metadata !{i32 786484, i32 0, null, metadata !"xl", metadata !"xl", metadata !"", metadata !6, i32 93, metadata !9, i32 0, i32 1, i32* @xl} ; [ DW_TAG_variable ]
!86 = metadata !{i32 786484, i32 0, null, metadata !"xh", metadata !"xh", metadata !"", metadata !6, i32 93, metadata !9, i32 0, i32 1, i32* @xh} ; [ DW_TAG_variable ]
!87 = metadata !{i32 786484, i32 0, null, metadata !"accumc", metadata !"accumc", metadata !"", metadata !6, i32 96, metadata !88, i32 0, i32 1, [11 x i32]* @accumc} ; [ DW_TAG_variable ]
!88 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 352, i64 32, i32 0, i32 0, metadata !9, metadata !89, i32 0, i32 0} ; [ DW_TAG_array_type ]
!89 = metadata !{metadata !90}
!90 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ]
!91 = metadata !{i32 786484, i32 0, null, metadata !"accumd", metadata !"accumd", metadata !"", metadata !6, i32 96, metadata !88, i32 0, i32 1, [11 x i32]* @accumd} ; [ DW_TAG_variable ]
!92 = metadata !{i32 786484, i32 0, null, metadata !"xout1", metadata !"xout1", metadata !"", metadata !6, i32 99, metadata !9, i32 0, i32 1, i32* @xout1} ; [ DW_TAG_variable ]
!93 = metadata !{i32 786484, i32 0, null, metadata !"xout2", metadata !"xout2", metadata !"", metadata !6, i32 99, metadata !9, i32 0, i32 1, i32* @xout2} ; [ DW_TAG_variable ]
!94 = metadata !{i32 786484, i32 0, null, metadata !"xs", metadata !"xs", metadata !"", metadata !6, i32 101, metadata !9, i32 0, i32 1, i32* @xs} ; [ DW_TAG_variable ]
!95 = metadata !{i32 786484, i32 0, null, metadata !"xd", metadata !"xd", metadata !"", metadata !6, i32 101, metadata !9, i32 0, i32 1, i32* @xd} ; [ DW_TAG_variable ]
!96 = metadata !{i32 786484, i32 0, null, metadata !"il", metadata !"il", metadata !"", metadata !6, i32 105, metadata !9, i32 0, i32 1, i32* @il} ; [ DW_TAG_variable ]
!97 = metadata !{i32 786484, i32 0, null, metadata !"szl", metadata !"szl", metadata !"", metadata !6, i32 105, metadata !9, i32 0, i32 1, i32* @szl} ; [ DW_TAG_variable ]
!98 = metadata !{i32 786484, i32 0, null, metadata !"spl", metadata !"spl", metadata !"", metadata !6, i32 105, metadata !9, i32 0, i32 1, i32* @spl} ; [ DW_TAG_variable ]
!99 = metadata !{i32 786484, i32 0, null, metadata !"sl", metadata !"sl", metadata !"", metadata !6, i32 105, metadata !9, i32 0, i32 1, i32* @sl} ; [ DW_TAG_variable ]
!100 = metadata !{i32 786484, i32 0, null, metadata !"el", metadata !"el", metadata !"", metadata !6, i32 105, metadata !9, i32 0, i32 1, i32* @el} ; [ DW_TAG_variable ]
!101 = metadata !{i32 786484, i32 0, null, metadata !"delay_bpl", metadata !"delay_bpl", metadata !"", metadata !6, i32 124, metadata !102, i32 0, i32 1, [6 x i32]* @delay_bpl} ; [ DW_TAG_variable ]
!102 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 192, i64 32, i32 0, i32 0, metadata !9, metadata !103, i32 0, i32 0} ; [ DW_TAG_array_type ]
!103 = metadata !{metadata !104}
!104 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ]
!105 = metadata !{i32 786484, i32 0, null, metadata !"delay_dltx", metadata !"delay_dltx", metadata !"", metadata !6, i32 126, metadata !102, i32 0, i32 1, [6 x i32]* @delay_dltx} ; [ DW_TAG_variable ]
!106 = metadata !{i32 786484, i32 0, null, metadata !"nbl", metadata !"nbl", metadata !"", metadata !6, i32 140, metadata !9, i32 0, i32 1, i32* @nbl} ; [ DW_TAG_variable ]
!107 = metadata !{i32 786484, i32 0, null, metadata !"al1", metadata !"al1", metadata !"", metadata !6, i32 141, metadata !9, i32 0, i32 1, i32* @al1} ; [ DW_TAG_variable ]
!108 = metadata !{i32 786484, i32 0, null, metadata !"al2", metadata !"al2", metadata !"", metadata !6, i32 141, metadata !9, i32 0, i32 1, i32* @al2} ; [ DW_TAG_variable ]
!109 = metadata !{i32 786484, i32 0, null, metadata !"plt", metadata !"plt", metadata !"", metadata !6, i32 142, metadata !9, i32 0, i32 1, i32* @plt} ; [ DW_TAG_variable ]
!110 = metadata !{i32 786484, i32 0, null, metadata !"plt1", metadata !"plt1", metadata !"", metadata !6, i32 142, metadata !9, i32 0, i32 1, i32* @plt1} ; [ DW_TAG_variable ]
!111 = metadata !{i32 786484, i32 0, null, metadata !"plt2", metadata !"plt2", metadata !"", metadata !6, i32 142, metadata !9, i32 0, i32 1, i32* @plt2} ; [ DW_TAG_variable ]
!112 = metadata !{i32 786484, i32 0, null, metadata !"dlt", metadata !"dlt", metadata !"", metadata !6, i32 143, metadata !9, i32 0, i32 1, i32* @dlt} ; [ DW_TAG_variable ]
!113 = metadata !{i32 786484, i32 0, null, metadata !"rlt", metadata !"rlt", metadata !"", metadata !6, i32 144, metadata !9, i32 0, i32 1, i32* @rlt} ; [ DW_TAG_variable ]
!114 = metadata !{i32 786484, i32 0, null, metadata !"rlt1", metadata !"rlt1", metadata !"", metadata !6, i32 144, metadata !9, i32 0, i32 1, i32* @rlt1} ; [ DW_TAG_variable ]
!115 = metadata !{i32 786484, i32 0, null, metadata !"rlt2", metadata !"rlt2", metadata !"", metadata !6, i32 144, metadata !9, i32 0, i32 1, i32* @rlt2} ; [ DW_TAG_variable ]
!116 = metadata !{i32 786484, i32 0, null, metadata !"detl", metadata !"detl", metadata !"", metadata !6, i32 154, metadata !9, i32 0, i32 1, i32* @detl} ; [ DW_TAG_variable ]
!117 = metadata !{i32 786484, i32 0, null, metadata !"deth", metadata !"deth", metadata !"", metadata !6, i32 175, metadata !9, i32 0, i32 1, i32* @deth} ; [ DW_TAG_variable ]
!118 = metadata !{i32 786484, i32 0, null, metadata !"sh", metadata !"sh", metadata !"", metadata !6, i32 176, metadata !9, i32 0, i32 1, i32* @sh} ; [ DW_TAG_variable ]
!119 = metadata !{i32 786484, i32 0, null, metadata !"eh", metadata !"eh", metadata !"", metadata !6, i32 177, metadata !9, i32 0, i32 1, i32* @eh} ; [ DW_TAG_variable ]
!120 = metadata !{i32 786484, i32 0, null, metadata !"dh", metadata !"dh", metadata !"", metadata !6, i32 188, metadata !9, i32 0, i32 1, i32* @dh} ; [ DW_TAG_variable ]
!121 = metadata !{i32 786484, i32 0, null, metadata !"ih", metadata !"ih", metadata !"", metadata !6, i32 188, metadata !9, i32 0, i32 1, i32* @ih} ; [ DW_TAG_variable ]
!122 = metadata !{i32 786484, i32 0, null, metadata !"nbh", metadata !"nbh", metadata !"", metadata !6, i32 189, metadata !9, i32 0, i32 1, i32* @nbh} ; [ DW_TAG_variable ]
!123 = metadata !{i32 786484, i32 0, null, metadata !"szh", metadata !"szh", metadata !"", metadata !6, i32 189, metadata !9, i32 0, i32 1, i32* @szh} ; [ DW_TAG_variable ]
!124 = metadata !{i32 786484, i32 0, null, metadata !"sph", metadata !"sph", metadata !"", metadata !6, i32 190, metadata !9, i32 0, i32 1, i32* @sph} ; [ DW_TAG_variable ]
!125 = metadata !{i32 786484, i32 0, null, metadata !"ph", metadata !"ph", metadata !"", metadata !6, i32 190, metadata !9, i32 0, i32 1, i32* @ph} ; [ DW_TAG_variable ]
!126 = metadata !{i32 786484, i32 0, null, metadata !"yh", metadata !"yh", metadata !"", metadata !6, i32 190, metadata !9, i32 0, i32 1, i32* @yh} ; [ DW_TAG_variable ]
!127 = metadata !{i32 786484, i32 0, null, metadata !"rh", metadata !"rh", metadata !"", metadata !6, i32 190, metadata !9, i32 0, i32 1, i32* @rh} ; [ DW_TAG_variable ]
!128 = metadata !{i32 786484, i32 0, null, metadata !"delay_dhx", metadata !"delay_dhx", metadata !"", metadata !6, i32 192, metadata !102, i32 0, i32 1, [6 x i32]* @delay_dhx} ; [ DW_TAG_variable ]
!129 = metadata !{i32 786484, i32 0, null, metadata !"delay_bph", metadata !"delay_bph", metadata !"", metadata !6, i32 194, metadata !102, i32 0, i32 1, [6 x i32]* @delay_bph} ; [ DW_TAG_variable ]
!130 = metadata !{i32 786484, i32 0, null, metadata !"ah1", metadata !"ah1", metadata !"", metadata !6, i32 196, metadata !9, i32 0, i32 1, i32* @ah1} ; [ DW_TAG_variable ]
!131 = metadata !{i32 786484, i32 0, null, metadata !"ah2", metadata !"ah2", metadata !"", metadata !6, i32 196, metadata !9, i32 0, i32 1, i32* @ah2} ; [ DW_TAG_variable ]
!132 = metadata !{i32 786484, i32 0, null, metadata !"ph1", metadata !"ph1", metadata !"", metadata !6, i32 197, metadata !9, i32 0, i32 1, i32* @ph1} ; [ DW_TAG_variable ]
!133 = metadata !{i32 786484, i32 0, null, metadata !"ph2", metadata !"ph2", metadata !"", metadata !6, i32 197, metadata !9, i32 0, i32 1, i32* @ph2} ; [ DW_TAG_variable ]
!134 = metadata !{i32 786484, i32 0, null, metadata !"rh1", metadata !"rh1", metadata !"", metadata !6, i32 198, metadata !9, i32 0, i32 1, i32* @rh1} ; [ DW_TAG_variable ]
!135 = metadata !{i32 786484, i32 0, null, metadata !"rh2", metadata !"rh2", metadata !"", metadata !6, i32 198, metadata !9, i32 0, i32 1, i32* @rh2} ; [ DW_TAG_variable ]
!136 = metadata !{i32 786484, i32 0, null, metadata !"ilr", metadata !"ilr", metadata !"", metadata !6, i32 201, metadata !9, i32 0, i32 1, i32* @ilr} ; [ DW_TAG_variable ]
!137 = metadata !{i32 786484, i32 0, null, metadata !"rl", metadata !"rl", metadata !"", metadata !6, i32 201, metadata !9, i32 0, i32 1, i32* @rl} ; [ DW_TAG_variable ]
!138 = metadata !{i32 786484, i32 0, null, metadata !"dec_deth", metadata !"dec_deth", metadata !"", metadata !6, i32 202, metadata !9, i32 0, i32 1, i32* @dec_deth} ; [ DW_TAG_variable ]
!139 = metadata !{i32 786484, i32 0, null, metadata !"dec_detl", metadata !"dec_detl", metadata !"", metadata !6, i32 202, metadata !9, i32 0, i32 1, i32* @dec_detl} ; [ DW_TAG_variable ]
!140 = metadata !{i32 786484, i32 0, null, metadata !"dec_dlt", metadata !"dec_dlt", metadata !"", metadata !6, i32 202, metadata !9, i32 0, i32 1, i32* @dec_dlt} ; [ DW_TAG_variable ]
!141 = metadata !{i32 786484, i32 0, null, metadata !"dec_del_bpl", metadata !"dec_del_bpl", metadata !"", metadata !6, i32 204, metadata !102, i32 0, i32 1, [6 x i32]* @dec_del_bpl} ; [ DW_TAG_variable ]
!142 = metadata !{i32 786484, i32 0, null, metadata !"dec_del_dltx", metadata !"dec_del_dltx", metadata !"", metadata !6, i32 206, metadata !102, i32 0, i32 1, [6 x i32]* @dec_del_dltx} ; [ DW_TAG_variable ]
!143 = metadata !{i32 786484, i32 0, null, metadata !"dec_plt", metadata !"dec_plt", metadata !"", metadata !6, i32 208, metadata !9, i32 0, i32 1, i32* @dec_plt} ; [ DW_TAG_variable ]
!144 = metadata !{i32 786484, i32 0, null, metadata !"dec_plt1", metadata !"dec_plt1", metadata !"", metadata !6, i32 208, metadata !9, i32 0, i32 1, i32* @dec_plt1} ; [ DW_TAG_variable ]
!145 = metadata !{i32 786484, i32 0, null, metadata !"dec_plt2", metadata !"dec_plt2", metadata !"", metadata !6, i32 208, metadata !9, i32 0, i32 1, i32* @dec_plt2} ; [ DW_TAG_variable ]
!146 = metadata !{i32 786484, i32 0, null, metadata !"dec_szl", metadata !"dec_szl", metadata !"", metadata !6, i32 209, metadata !9, i32 0, i32 1, i32* @dec_szl} ; [ DW_TAG_variable ]
!147 = metadata !{i32 786484, i32 0, null, metadata !"dec_spl", metadata !"dec_spl", metadata !"", metadata !6, i32 209, metadata !9, i32 0, i32 1, i32* @dec_spl} ; [ DW_TAG_variable ]
!148 = metadata !{i32 786484, i32 0, null, metadata !"dec_sl", metadata !"dec_sl", metadata !"", metadata !6, i32 209, metadata !9, i32 0, i32 1, i32* @dec_sl} ; [ DW_TAG_variable ]
!149 = metadata !{i32 786484, i32 0, null, metadata !"dec_rlt1", metadata !"dec_rlt1", metadata !"", metadata !6, i32 210, metadata !9, i32 0, i32 1, i32* @dec_rlt1} ; [ DW_TAG_variable ]
!150 = metadata !{i32 786484, i32 0, null, metadata !"dec_rlt2", metadata !"dec_rlt2", metadata !"", metadata !6, i32 210, metadata !9, i32 0, i32 1, i32* @dec_rlt2} ; [ DW_TAG_variable ]
!151 = metadata !{i32 786484, i32 0, null, metadata !"dec_rlt", metadata !"dec_rlt", metadata !"", metadata !6, i32 210, metadata !9, i32 0, i32 1, i32* @dec_rlt} ; [ DW_TAG_variable ]
!152 = metadata !{i32 786484, i32 0, null, metadata !"dec_al1", metadata !"dec_al1", metadata !"", metadata !6, i32 211, metadata !9, i32 0, i32 1, i32* @dec_al1} ; [ DW_TAG_variable ]
!153 = metadata !{i32 786484, i32 0, null, metadata !"dec_al2", metadata !"dec_al2", metadata !"", metadata !6, i32 211, metadata !9, i32 0, i32 1, i32* @dec_al2} ; [ DW_TAG_variable ]
!154 = metadata !{i32 786484, i32 0, null, metadata !"dl", metadata !"dl", metadata !"", metadata !6, i32 212, metadata !9, i32 0, i32 1, i32* @dl} ; [ DW_TAG_variable ]
!155 = metadata !{i32 786484, i32 0, null, metadata !"dec_nbl", metadata !"dec_nbl", metadata !"", metadata !6, i32 213, metadata !9, i32 0, i32 1, i32* @dec_nbl} ; [ DW_TAG_variable ]
!156 = metadata !{i32 786484, i32 0, null, metadata !"dec_dh", metadata !"dec_dh", metadata !"", metadata !6, i32 213, metadata !9, i32 0, i32 1, i32* @dec_dh} ; [ DW_TAG_variable ]
!157 = metadata !{i32 786484, i32 0, null, metadata !"dec_nbh", metadata !"dec_nbh", metadata !"", metadata !6, i32 213, metadata !9, i32 0, i32 1, i32* @dec_nbh} ; [ DW_TAG_variable ]
!158 = metadata !{i32 786484, i32 0, null, metadata !"dec_del_bph", metadata !"dec_del_bph", metadata !"", metadata !6, i32 216, metadata !102, i32 0, i32 1, [6 x i32]* @dec_del_bph} ; [ DW_TAG_variable ]
!159 = metadata !{i32 786484, i32 0, null, metadata !"dec_del_dhx", metadata !"dec_del_dhx", metadata !"", metadata !6, i32 218, metadata !102, i32 0, i32 1, [6 x i32]* @dec_del_dhx} ; [ DW_TAG_variable ]
!160 = metadata !{i32 786484, i32 0, null, metadata !"dec_szh", metadata !"dec_szh", metadata !"", metadata !6, i32 220, metadata !9, i32 0, i32 1, i32* @dec_szh} ; [ DW_TAG_variable ]
!161 = metadata !{i32 786484, i32 0, null, metadata !"dec_rh1", metadata !"dec_rh1", metadata !"", metadata !6, i32 222, metadata !9, i32 0, i32 1, i32* @dec_rh1} ; [ DW_TAG_variable ]
!162 = metadata !{i32 786484, i32 0, null, metadata !"dec_rh2", metadata !"dec_rh2", metadata !"", metadata !6, i32 222, metadata !9, i32 0, i32 1, i32* @dec_rh2} ; [ DW_TAG_variable ]
!163 = metadata !{i32 786484, i32 0, null, metadata !"dec_ah1", metadata !"dec_ah1", metadata !"", metadata !6, i32 223, metadata !9, i32 0, i32 1, i32* @dec_ah1} ; [ DW_TAG_variable ]
!164 = metadata !{i32 786484, i32 0, null, metadata !"dec_ah2", metadata !"dec_ah2", metadata !"", metadata !6, i32 223, metadata !9, i32 0, i32 1, i32* @dec_ah2} ; [ DW_TAG_variable ]
!165 = metadata !{i32 786484, i32 0, null, metadata !"dec_ph", metadata !"dec_ph", metadata !"", metadata !6, i32 224, metadata !9, i32 0, i32 1, i32* @dec_ph} ; [ DW_TAG_variable ]
!166 = metadata !{i32 786484, i32 0, null, metadata !"dec_sph", metadata !"dec_sph", metadata !"", metadata !6, i32 224, metadata !9, i32 0, i32 1, i32* @dec_sph} ; [ DW_TAG_variable ]
!167 = metadata !{i32 786484, i32 0, null, metadata !"dec_sh", metadata !"dec_sh", metadata !"", metadata !6, i32 226, metadata !9, i32 0, i32 1, i32* @dec_sh} ; [ DW_TAG_variable ]
!168 = metadata !{i32 786484, i32 0, null, metadata !"dec_ph1", metadata !"dec_ph1", metadata !"", metadata !6, i32 228, metadata !9, i32 0, i32 1, i32* @dec_ph1} ; [ DW_TAG_variable ]
!169 = metadata !{i32 786484, i32 0, null, metadata !"dec_ph2", metadata !"dec_ph2", metadata !"", metadata !6, i32 228, metadata !9, i32 0, i32 1, i32* @dec_ph2} ; [ DW_TAG_variable ]
!170 = metadata !{i32 786484, i32 0, null, metadata !"compressed", metadata !"compressed", metadata !"", metadata !6, i32 800, metadata !171, i32 0, i32 1, [100 x i32]* @compressed} ; [ DW_TAG_variable ]
!171 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 3200, i64 32, i32 0, i32 0, metadata !9, metadata !79, i32 0, i32 0} ; [ DW_TAG_array_type ]
!172 = metadata !{i32 786484, i32 0, null, metadata !"result", metadata !"result", metadata !"", metadata !6, i32 800, metadata !171, i32 0, i32 1, [100 x i32]* @result} ; [ DW_TAG_variable ]
!173 = metadata !{i32 786689, metadata !5, metadata !"n", metadata !6, i32 16777452, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!174 = metadata !{i32 236, i32 10, metadata !5, null}
!175 = metadata !{i32 240, i32 3, metadata !176, null}
!176 = metadata !{i32 786443, metadata !5, i32 237, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 243, i32 5, metadata !176, null}
!178 = metadata !{i32 786688, metadata !176, metadata !"m", metadata !6, i32 238, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!179 = metadata !{i32 244, i32 3, metadata !176, null}
!180 = metadata !{metadata !181}
!181 = metadata !{i32 0, i32 31, metadata !182}
!182 = metadata !{metadata !183}
!183 = metadata !{metadata !"return", metadata !184, metadata !"int", i32 0, i32 31}
!184 = metadata !{metadata !185}
!185 = metadata !{i32 0, i32 1, i32 0}
!186 = metadata !{i32 786689, metadata !12, metadata !"xin1", metadata !6, i32 16777464, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!187 = metadata !{i32 248, i32 13, metadata !12, null}
!188 = metadata !{i32 786689, metadata !12, metadata !"xin2", metadata !6, i32 33554680, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!189 = metadata !{i32 248, i32 23, metadata !12, null}
!190 = metadata !{i32 259, i32 3, metadata !191, null}
!191 = metadata !{i32 786443, metadata !12, i32 249, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 786688, metadata !191, metadata !"xa", metadata !6, i32 253, metadata !193, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!193 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!194 = metadata !{i32 260, i32 3, metadata !191, null}
!195 = metadata !{i32 786688, metadata !191, metadata !"xb", metadata !6, i32 253, metadata !193, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!196 = metadata !{i32 262, i32 8, metadata !197, null}
!197 = metadata !{i32 786443, metadata !191, i32 262, i32 3, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 264, i32 7, metadata !199, null}
!199 = metadata !{i32 786443, metadata !197, i32 263, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 786688, metadata !191, metadata !"tqmf_ptr", metadata !6, i32 252, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!201 = metadata !{i32 786688, metadata !191, metadata !"h_ptr", metadata !6, i32 251, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ]
!203 = metadata !{i32 265, i32 7, metadata !199, null}
!204 = metadata !{i32 262, i32 23, metadata !197, null}
!205 = metadata !{i32 786688, metadata !191, metadata !"i", metadata !6, i32 250, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!206 = metadata !{i32 268, i32 3, metadata !191, null}
!207 = metadata !{i32 269, i32 3, metadata !191, null}
!208 = metadata !{i32 273, i32 8, metadata !209, null}
!209 = metadata !{i32 786443, metadata !191, i32 273, i32 3, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!210 = metadata !{i32 272, i32 3, metadata !191, null}
!211 = metadata !{i32 786688, metadata !191, metadata !"tqmf_ptr1", metadata !6, i32 252, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!212 = metadata !{i32 274, i32 5, metadata !209, null}
!213 = metadata !{i32 273, i32 23, metadata !209, null}
!214 = metadata !{i32 275, i32 3, metadata !191, null}
!215 = metadata !{i32 276, i32 3, metadata !191, null}
!216 = metadata !{i32 279, i32 3, metadata !191, null}
!217 = metadata !{i32 280, i32 3, metadata !191, null}
!218 = metadata !{i32 287, i32 9, metadata !191, null}
!219 = metadata !{i32 290, i32 9, metadata !191, null}
!220 = metadata !{i32 293, i32 3, metadata !191, null}
!221 = metadata !{i32 294, i32 3, metadata !191, null}
!222 = metadata !{i32 297, i32 8, metadata !191, null}
!223 = metadata !{i32 301, i32 3, metadata !191, null}
!224 = metadata !{i32 304, i32 9, metadata !191, null}
!225 = metadata !{i32 308, i32 10, metadata !191, null}
!226 = metadata !{i32 311, i32 3, metadata !191, null}
!227 = metadata !{i32 317, i32 3, metadata !191, null}
!228 = metadata !{i32 321, i32 9, metadata !191, null}
!229 = metadata !{i32 325, i32 9, metadata !191, null}
!230 = metadata !{i32 328, i32 3, metadata !191, null}
!231 = metadata !{i32 331, i32 3, metadata !191, null}
!232 = metadata !{i32 332, i32 3, metadata !191, null}
!233 = metadata !{i32 333, i32 3, metadata !191, null}
!234 = metadata !{i32 334, i32 3, metadata !191, null}
!235 = metadata !{i32 338, i32 9, metadata !191, null}
!236 = metadata !{i32 340, i32 9, metadata !191, null}
!237 = metadata !{i32 343, i32 3, metadata !191, null}
!238 = metadata !{i32 345, i32 3, metadata !191, null}
!239 = metadata !{i32 349, i32 3, metadata !191, null}
!240 = metadata !{i32 351, i32 7, metadata !241, null}
!241 = metadata !{i32 786443, metadata !191, i32 350, i32 5, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 357, i32 3, metadata !191, null}
!243 = metadata !{i32 786688, metadata !191, metadata !"decis", metadata !6, i32 254, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!244 = metadata !{i32 358, i32 7, metadata !191, null}
!245 = metadata !{i32 359, i32 5, metadata !191, null}
!246 = metadata !{i32 362, i32 3, metadata !191, null}
!247 = metadata !{i32 365, i32 9, metadata !191, null}
!248 = metadata !{i32 368, i32 10, metadata !191, null}
!249 = metadata !{i32 371, i32 3, metadata !191, null}
!250 = metadata !{i32 376, i32 3, metadata !191, null}
!251 = metadata !{i32 380, i32 9, metadata !191, null}
!252 = metadata !{i32 383, i32 9, metadata !191, null}
!253 = metadata !{i32 386, i32 3, metadata !191, null}
!254 = metadata !{i32 389, i32 3, metadata !191, null}
!255 = metadata !{i32 390, i32 3, metadata !191, null}
!256 = metadata !{i32 391, i32 3, metadata !191, null}
!257 = metadata !{i32 392, i32 3, metadata !191, null}
!258 = metadata !{i32 395, i32 3, metadata !191, null}
!259 = metadata !{i32 786689, metadata !21, metadata !"bpl", metadata !6, i32 16777797, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!260 = metadata !{i32 581, i32 14, metadata !21, null}
!261 = metadata !{i32 786689, metadata !21, metadata !"dlt", metadata !6, i32 33555013, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!262 = metadata !{i32 581, i32 24, metadata !21, null}
!263 = metadata !{i32 585, i32 3, metadata !264, null}
!264 = metadata !{i32 786443, metadata !21, i32 582, i32 1, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!265 = metadata !{i32 786688, metadata !264, metadata !"zl", metadata !6, i32 584, metadata !193, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!266 = metadata !{i32 586, i32 8, metadata !267, null}
!267 = metadata !{i32 786443, metadata !264, i32 586, i32 3, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!268 = metadata !{i32 587, i32 5, metadata !267, null}
!269 = metadata !{i32 586, i32 22, metadata !267, null}
!270 = metadata !{i32 589, i32 3, metadata !264, null}
!271 = metadata !{i32 786689, metadata !25, metadata !"rlt1", metadata !6, i32 16777812, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!272 = metadata !{i32 596, i32 13, metadata !25, null}
!273 = metadata !{i32 786689, metadata !25, metadata !"al1", metadata !6, i32 33555028, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!274 = metadata !{i32 596, i32 23, metadata !25, null}
!275 = metadata !{i32 786689, metadata !25, metadata !"rlt2", metadata !6, i32 50332244, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!276 = metadata !{i32 596, i32 32, metadata !25, null}
!277 = metadata !{i32 786689, metadata !25, metadata !"al2", metadata !6, i32 67109460, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!278 = metadata !{i32 596, i32 42, metadata !25, null}
!279 = metadata !{i32 599, i32 3, metadata !280, null}
!280 = metadata !{i32 786443, metadata !25, i32 597, i32 1, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!281 = metadata !{i32 786688, metadata !280, metadata !"pl", metadata !6, i32 598, metadata !193, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!282 = metadata !{i32 600, i32 3, metadata !280, null}
!283 = metadata !{i32 601, i32 3, metadata !280, null}
!284 = metadata !{i32 786688, metadata !280, metadata !"pl2", metadata !6, i32 598, metadata !193, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!285 = metadata !{i32 602, i32 3, metadata !280, null}
!286 = metadata !{i32 603, i32 3, metadata !280, null}
!287 = metadata !{i32 786689, metadata !28, metadata !"el", metadata !6, i32 16777824, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!288 = metadata !{i32 608, i32 13, metadata !28, null}
!289 = metadata !{i32 786689, metadata !28, metadata !"detl", metadata !6, i32 33555040, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!290 = metadata !{i32 608, i32 21, metadata !28, null}
!291 = metadata !{i32 614, i32 8, metadata !292, null}
!292 = metadata !{i32 786443, metadata !28, i32 609, i32 1, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!293 = metadata !{i32 786688, metadata !292, metadata !"wd", metadata !6, i32 611, metadata !193, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!294 = metadata !{i32 618, i32 7, metadata !295, null}
!295 = metadata !{i32 786443, metadata !296, i32 617, i32 5, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!296 = metadata !{i32 786443, metadata !292, i32 616, i32 3, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!297 = metadata !{i32 616, i32 8, metadata !296, null}
!298 = metadata !{i32 786688, metadata !292, metadata !"decis", metadata !6, i32 611, metadata !193, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!299 = metadata !{i32 619, i32 7, metadata !295, null}
!300 = metadata !{i32 616, i32 27, metadata !296, null}
!301 = metadata !{i32 786688, metadata !292, metadata !"mil", metadata !6, i32 610, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!302 = metadata !{i32 623, i32 3, metadata !292, null}
!303 = metadata !{i32 624, i32 5, metadata !292, null}
!304 = metadata !{i32 786688, metadata !292, metadata !"ril", metadata !6, i32 610, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!305 = metadata !{i32 626, i32 5, metadata !292, null}
!306 = metadata !{i32 627, i32 3, metadata !292, null}
!307 = metadata !{i32 786689, metadata !29, metadata !"il", metadata !6, i32 16777850, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!308 = metadata !{i32 634, i32 13, metadata !29, null}
!309 = metadata !{i32 786689, metadata !29, metadata !"nbl", metadata !6, i32 33555066, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!310 = metadata !{i32 634, i32 21, metadata !29, null}
!311 = metadata !{i32 637, i32 3, metadata !312, null}
!312 = metadata !{i32 786443, metadata !29, i32 635, i32 1, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!313 = metadata !{i32 638, i32 3, metadata !312, null}
!314 = metadata !{i32 639, i32 3, metadata !312, null}
!315 = metadata !{i32 641, i32 3, metadata !312, null}
!316 = metadata !{i32 643, i32 3, metadata !312, null}
!317 = metadata !{i32 786689, metadata !30, metadata !"nbl", metadata !6, i32 16777865, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!318 = metadata !{i32 649, i32 13, metadata !30, null}
!319 = metadata !{i32 786689, metadata !30, metadata !"shift_constant", metadata !6, i32 33555081, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!320 = metadata !{i32 649, i32 22, metadata !30, null}
!321 = metadata !{i32 652, i32 3, metadata !322, null}
!322 = metadata !{i32 786443, metadata !30, i32 650, i32 1, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!323 = metadata !{i32 786688, metadata !322, metadata !"wd1", metadata !6, i32 651, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!324 = metadata !{i32 653, i32 3, metadata !322, null}
!325 = metadata !{i32 786688, metadata !322, metadata !"wd2", metadata !6, i32 651, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!326 = metadata !{i32 654, i32 3, metadata !322, null}
!327 = metadata !{i32 786688, metadata !322, metadata !"wd3", metadata !6, i32 651, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!328 = metadata !{i32 655, i32 3, metadata !322, null}
!329 = metadata !{i32 786689, metadata !31, metadata !"dlt", metadata !6, i32 16777878, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!330 = metadata !{i32 662, i32 13, metadata !31, null}
!331 = metadata !{i32 786689, metadata !31, metadata !"dlti", metadata !6, i32 33555094, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!332 = metadata !{i32 662, i32 23, metadata !31, null}
!333 = metadata !{i32 786689, metadata !31, metadata !"bli", metadata !6, i32 50332310, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!334 = metadata !{i32 662, i32 34, metadata !31, null}
!335 = metadata !{i32 666, i32 3, metadata !336, null}
!336 = metadata !{i32 786443, metadata !31, i32 663, i32 1, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!337 = metadata !{i32 668, i32 12, metadata !338, null}
!338 = metadata !{i32 786443, metadata !339, i32 668, i32 7, metadata !6, i32 30} ; [ DW_TAG_lexical_block ]
!339 = metadata !{i32 786443, metadata !336, i32 667, i32 5, metadata !6, i32 29} ; [ DW_TAG_lexical_block ]
!340 = metadata !{i32 677, i32 4, metadata !341, null}
!341 = metadata !{i32 786443, metadata !342, i32 676, i32 2, metadata !6, i32 34} ; [ DW_TAG_lexical_block ]
!342 = metadata !{i32 786443, metadata !343, i32 675, i32 7, metadata !6, i32 33} ; [ DW_TAG_lexical_block ]
!343 = metadata !{i32 786443, metadata !336, i32 674, i32 5, metadata !6, i32 32} ; [ DW_TAG_lexical_block ]
!344 = metadata !{i32 675, i32 12, metadata !342, null}
!345 = metadata !{i32 670, i32 4, metadata !346, null}
!346 = metadata !{i32 786443, metadata !338, i32 669, i32 2, metadata !6, i32 31} ; [ DW_TAG_lexical_block ]
!347 = metadata !{i32 668, i32 26, metadata !338, null}
!348 = metadata !{i32 786688, metadata !336, metadata !"i", metadata !6, i32 664, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!349 = metadata !{i32 681, i32 4, metadata !341, null}
!350 = metadata !{i32 786688, metadata !336, metadata !"wd3", metadata !6, i32 664, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!351 = metadata !{i32 682, i32 4, metadata !341, null}
!352 = metadata !{i32 675, i32 26, metadata !342, null}
!353 = metadata !{i32 686, i32 3, metadata !336, null}
!354 = metadata !{i32 687, i32 3, metadata !336, null}
!355 = metadata !{i32 688, i32 3, metadata !336, null}
!356 = metadata !{i32 689, i32 3, metadata !336, null}
!357 = metadata !{i32 690, i32 3, metadata !336, null}
!358 = metadata !{i32 691, i32 3, metadata !336, null}
!359 = metadata !{i32 692, i32 1, metadata !336, null}
!360 = metadata !{i32 786689, metadata !34, metadata !"al1", metadata !6, i32 16777914, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!361 = metadata !{i32 698, i32 13, metadata !34, null}
!362 = metadata !{i32 786689, metadata !34, metadata !"al2", metadata !6, i32 33555130, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!363 = metadata !{i32 698, i32 22, metadata !34, null}
!364 = metadata !{i32 786689, metadata !34, metadata !"plt", metadata !6, i32 50332346, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!365 = metadata !{i32 698, i32 31, metadata !34, null}
!366 = metadata !{i32 786689, metadata !34, metadata !"plt1", metadata !6, i32 67109562, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!367 = metadata !{i32 698, i32 40, metadata !34, null}
!368 = metadata !{i32 786689, metadata !34, metadata !"plt2", metadata !6, i32 83886778, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!369 = metadata !{i32 698, i32 50, metadata !34, null}
!370 = metadata !{i32 702, i32 3, metadata !371, null}
!371 = metadata !{i32 786443, metadata !34, i32 699, i32 1, metadata !6, i32 35} ; [ DW_TAG_lexical_block ]
!372 = metadata !{i32 786688, metadata !371, metadata !"wd2", metadata !6, i32 700, metadata !193, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!373 = metadata !{i32 703, i32 3, metadata !371, null}
!374 = metadata !{i32 704, i32 5, metadata !371, null}
!375 = metadata !{i32 705, i32 3, metadata !371, null}
!376 = metadata !{i32 706, i32 3, metadata !371, null}
!377 = metadata !{i32 786688, metadata !371, metadata !"wd4", metadata !6, i32 700, metadata !193, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!378 = metadata !{i32 714, i32 3, metadata !371, null}
!379 = metadata !{i32 786688, metadata !371, metadata !"apl2", metadata !6, i32 701, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!380 = metadata !{i32 717, i32 3, metadata !371, null}
!381 = metadata !{i32 719, i32 3, metadata !371, null}
!382 = metadata !{i32 721, i32 3, metadata !371, null}
!383 = metadata !{i32 786689, metadata !37, metadata !"al1", metadata !6, i32 16777944, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!384 = metadata !{i32 728, i32 13, metadata !37, null}
!385 = metadata !{i32 786689, metadata !37, metadata !"apl2", metadata !6, i32 33555160, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!386 = metadata !{i32 728, i32 22, metadata !37, null}
!387 = metadata !{i32 786689, metadata !37, metadata !"plt", metadata !6, i32 50332376, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!388 = metadata !{i32 728, i32 32, metadata !37, null}
!389 = metadata !{i32 786689, metadata !37, metadata !"plt1", metadata !6, i32 67109592, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!390 = metadata !{i32 728, i32 41, metadata !37, null}
!391 = metadata !{i32 732, i32 3, metadata !392, null}
!392 = metadata !{i32 786443, metadata !37, i32 729, i32 1, metadata !6, i32 38} ; [ DW_TAG_lexical_block ]
!393 = metadata !{i32 786688, metadata !392, metadata !"wd2", metadata !6, i32 730, metadata !193, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!394 = metadata !{i32 733, i32 3, metadata !392, null}
!395 = metadata !{i32 735, i32 7, metadata !396, null}
!396 = metadata !{i32 786443, metadata !392, i32 734, i32 5, metadata !6, i32 39} ; [ DW_TAG_lexical_block ]
!397 = metadata !{i32 786688, metadata !392, metadata !"apl1", metadata !6, i32 731, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!398 = metadata !{i32 736, i32 5, metadata !396, null}
!399 = metadata !{i32 739, i32 7, metadata !400, null}
!400 = metadata !{i32 786443, metadata !392, i32 738, i32 5, metadata !6, i32 40} ; [ DW_TAG_lexical_block ]
!401 = metadata !{i32 742, i32 3, metadata !392, null}
!402 = metadata !{i32 744, i32 5, metadata !392, null}
!403 = metadata !{i32 786688, metadata !392, metadata !"wd3", metadata !6, i32 731, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!404 = metadata !{i32 743, i32 3, metadata !392, null}
!405 = metadata !{i32 745, i32 3, metadata !392, null}
!406 = metadata !{i32 746, i32 5, metadata !392, null}
!407 = metadata !{i32 747, i32 3, metadata !392, null}
!408 = metadata !{i32 786689, metadata !38, metadata !"ih", metadata !6, i32 16777970, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!409 = metadata !{i32 754, i32 13, metadata !38, null}
!410 = metadata !{i32 786689, metadata !38, metadata !"nbh", metadata !6, i32 33555186, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!411 = metadata !{i32 754, i32 21, metadata !38, null}
!412 = metadata !{i32 757, i32 3, metadata !413, null}
!413 = metadata !{i32 786443, metadata !38, i32 755, i32 1, metadata !6, i32 41} ; [ DW_TAG_lexical_block ]
!414 = metadata !{i32 786688, metadata !413, metadata !"wd", metadata !6, i32 756, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!415 = metadata !{i32 758, i32 3, metadata !413, null}
!416 = metadata !{i32 759, i32 3, metadata !413, null}
!417 = metadata !{i32 761, i32 3, metadata !413, null}
!418 = metadata !{i32 763, i32 3, metadata !413, null}
