; ModuleID = '/scratch/qijing.huang/firechip/hls_adpcm_encode/src/main/c/adpcm_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@h_old = constant [24 x i32] [i32 12, i32 -44, i32 -44, i32 212, i32 48, i32 -624, i32 128, i32 1448, i32 -840, i32 -3220, i32 3804, i32 15504, i32 15504, i32 3804, i32 -3220, i32 -840, i32 1448, i32 128, i32 -624, i32 48, i32 212, i32 -44, i32 -44, i32 12], align 16 ; [#uses=0 type=[24 x i32]*]
@qq4_code4_table_old = constant [16 x i32] [i32 0, i32 -20456, i32 -12896, i32 -8968, i32 -6288, i32 -4240, i32 -2584, i32 -1200, i32 20456, i32 12896, i32 8968, i32 6288, i32 4240, i32 2584, i32 1200, i32 0], align 16 ; [#uses=0 type=[16 x i32]*]
@qq6_code6_table = constant [64 x i32] [i32 -136, i32 -136, i32 -136, i32 -136, i32 -24808, i32 -21904, i32 -19008, i32 -16704, i32 -14984, i32 -13512, i32 -12280, i32 -11192, i32 -10232, i32 -9360, i32 -8576, i32 -7856, i32 -7192, i32 -6576, i32 -6000, i32 -5456, i32 -4944, i32 -4464, i32 -4008, i32 -3576, i32 -3168, i32 -2776, i32 -2400, i32 -2032, i32 -1688, i32 -1360, i32 -1040, i32 -728, i32 24808, i32 21904, i32 19008, i32 16704, i32 14984, i32 13512, i32 12280, i32 11192, i32 10232, i32 9360, i32 8576, i32 7856, i32 7192, i32 6576, i32 6000, i32 5456, i32 4944, i32 4464, i32 4008, i32 3576, i32 3168, i32 2776, i32 2400, i32 2032, i32 1688, i32 1360, i32 1040, i32 728, i32 432, i32 136, i32 -432, i32 -136], align 16 ; [#uses=0 type=[64 x i32]*]
@wl_code_table_old = constant [16 x i32] [i32 -60, i32 3042, i32 1198, i32 538, i32 334, i32 172, i32 58, i32 -30, i32 3042, i32 1198, i32 538, i32 334, i32 172, i32 58, i32 -30, i32 -60], align 16 ; [#uses=0 type=[16 x i32]*]
@ilb_table_old = constant [32 x i32] [i32 2048, i32 2093, i32 2139, i32 2186, i32 2233, i32 2282, i32 2332, i32 2383, i32 2435, i32 2489, i32 2543, i32 2599, i32 2656, i32 2714, i32 2774, i32 2834, i32 2896, i32 2960, i32 3025, i32 3091, i32 3158, i32 3228, i32 3298, i32 3371, i32 3444, i32 3520, i32 3597, i32 3676, i32 3756, i32 3838, i32 3922, i32 4008], align 16 ; [#uses=0 type=[32 x i32]*]
@decis_levl_old = constant [30 x i32] [i32 280, i32 576, i32 880, i32 1200, i32 1520, i32 1864, i32 2208, i32 2584, i32 2960, i32 3376, i32 3784, i32 4240, i32 4696, i32 5200, i32 5712, i32 6288, i32 6864, i32 7520, i32 8184, i32 8968, i32 9752, i32 10712, i32 11664, i32 12896, i32 14120, i32 15840, i32 17560, i32 20456, i32 23352, i32 32767], align 16 ; [#uses=0 type=[30 x i32]*]
@quant26bt_pos_old = constant [31 x i32] [i32 61, i32 60, i32 59, i32 58, i32 57, i32 56, i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48, i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40, i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32, i32 32], align 16 ; [#uses=0 type=[31 x i32]*]
@quant26bt_neg_old = constant [31 x i32] [i32 63, i32 62, i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 4], align 16 ; [#uses=0 type=[31 x i32]*]
@qq2_code2_table = constant [4 x i32] [i32 -7408, i32 -1616, i32 7408, i32 1616], align 16 ; [#uses=0 type=[4 x i32]*]
@wh_code_table = constant [4 x i32] [i32 798, i32 -214, i32 798, i32 -214], align 16 ; [#uses=0 type=[4 x i32]*]
@tqmf = common global [24 x i32] zeroinitializer, align 16 ; [#uses=8 type=[24 x i32]*]
@xl = common global i32 0, align 4                ; [#uses=1 type=i32*]
@xh = common global i32 0, align 4                ; [#uses=2 type=i32*]
@delay_bpl = common global [6 x i32] zeroinitializer, align 16 ; [#uses=3 type=[6 x i32]*]
@delay_dltx = common global [6 x i32] zeroinitializer, align 16 ; [#uses=3 type=[6 x i32]*]
@szl = common global i32 0, align 4               ; [#uses=1 type=i32*]
@rlt1 = common global i32 0, align 4              ; [#uses=3 type=i32*]
@al1 = common global i32 0, align 4               ; [#uses=3 type=i32*]
@rlt2 = common global i32 0, align 4              ; [#uses=2 type=i32*]
@al2 = common global i32 0, align 4               ; [#uses=3 type=i32*]
@spl = common global i32 0, align 4               ; [#uses=1 type=i32*]
@sl = common global i32 0, align 4                ; [#uses=2 type=i32*]
@el = common global i32 0, align 4                ; [#uses=1 type=i32*]
@detl = common global i32 0, align 4              ; [#uses=2 type=i32*]
@il = common global i32 0, align 4                ; [#uses=2 type=i32*]
@dlt = common global i32 0, align 4               ; [#uses=2 type=i32*]
@nbl = common global i32 0, align 4               ; [#uses=2 type=i32*]
@plt = common global i32 0, align 4               ; [#uses=2 type=i32*]
@plt1 = common global i32 0, align 4              ; [#uses=2 type=i32*]
@plt2 = common global i32 0, align 4              ; [#uses=2 type=i32*]
@rlt = common global i32 0, align 4               ; [#uses=1 type=i32*]
@delay_bph = common global [6 x i32] zeroinitializer, align 16 ; [#uses=3 type=[6 x i32]*]
@delay_dhx = common global [6 x i32] zeroinitializer, align 16 ; [#uses=3 type=[6 x i32]*]
@szh = common global i32 0, align 4               ; [#uses=1 type=i32*]
@rh1 = common global i32 0, align 4               ; [#uses=3 type=i32*]
@ah1 = common global i32 0, align 4               ; [#uses=3 type=i32*]
@rh2 = common global i32 0, align 4               ; [#uses=2 type=i32*]
@ah2 = common global i32 0, align 4               ; [#uses=3 type=i32*]
@sph = common global i32 0, align 4               ; [#uses=1 type=i32*]
@sh = common global i32 0, align 4                ; [#uses=2 type=i32*]
@eh = common global i32 0, align 4                ; [#uses=1 type=i32*]
@ih = common global i32 0, align 4                ; [#uses=3 type=i32*]
@deth = common global i32 0, align 4              ; [#uses=2 type=i32*]
@dh = common global i32 0, align 4                ; [#uses=2 type=i32*]
@nbh = common global i32 0, align 4               ; [#uses=2 type=i32*]
@ph = common global i32 0, align 4                ; [#uses=2 type=i32*]
@ph1 = common global i32 0, align 4               ; [#uses=2 type=i32*]
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
@qq2_code2_table.0 = constant i32 -7408           ; [#uses=0 type=i32*]
@qq2_code2_table.1 = constant i32 -1616           ; [#uses=0 type=i32*]
@qq2_code2_table.2 = constant i32 7408            ; [#uses=0 type=i32*]
@qq2_code2_table.3 = constant i32 1616            ; [#uses=0 type=i32*]
@wh_code_table.0 = constant i32 798               ; [#uses=0 type=i32*]
@wh_code_table.1 = constant i32 -214              ; [#uses=0 type=i32*]
@wh_code_table.2 = constant i32 798               ; [#uses=0 type=i32*]
@wh_code_table.3 = constant i32 -214              ; [#uses=0 type=i32*]
@h = constant [24 x i15] [i15 12, i15 -44, i15 -44, i15 212, i15 48, i15 -624, i15 128, i15 1448, i15 -840, i15 -3220, i15 3804, i15 15504, i15 15504, i15 3804, i15 -3220, i15 -840, i15 1448, i15 128, i15 -624, i15 48, i15 212, i15 -44, i15 -44, i15 12] ; [#uses=2 type=[24 x i15]*]
@decis_levl = constant [30 x i15] [i15 280, i15 576, i15 880, i15 1200, i15 1520, i15 1864, i15 2208, i15 2584, i15 2960, i15 3376, i15 3784, i15 4240, i15 4696, i15 5200, i15 5712, i15 6288, i15 6864, i15 7520, i15 8184, i15 8968, i15 9752, i15 10712, i15 11664, i15 12896, i15 14120, i15 15840, i15 -15208, i15 -12312, i15 -9416, i15 -1] ; [#uses=1 type=[30 x i15]*]
@quant26bt_pos = constant [31 x i6] [i6 -3, i6 -4, i6 -5, i6 -6, i6 -7, i6 -8, i6 -9, i6 -10, i6 -11, i6 -12, i6 -13, i6 -14, i6 -15, i6 -16, i6 -17, i6 -18, i6 -19, i6 -20, i6 -21, i6 -22, i6 -23, i6 -24, i6 -25, i6 -26, i6 -27, i6 -28, i6 -29, i6 -30, i6 -31, i6 -32, i6 -32] ; [#uses=1 type=[31 x i6]*]
@quant26bt_neg = constant [31 x i6] [i6 -1, i6 -2, i6 31, i6 30, i6 29, i6 28, i6 27, i6 26, i6 25, i6 24, i6 23, i6 22, i6 21, i6 20, i6 19, i6 18, i6 17, i6 16, i6 15, i6 14, i6 13, i6 12, i6 11, i6 10, i6 9, i6 8, i6 7, i6 6, i6 5, i6 4, i6 4] ; [#uses=1 type=[31 x i6]*]
@qq4_code4_table = constant [16 x i16] [i16 0, i16 -20456, i16 -12896, i16 -8968, i16 -6288, i16 -4240, i16 -2584, i16 -1200, i16 20456, i16 12896, i16 8968, i16 6288, i16 4240, i16 2584, i16 1200, i16 0] ; [#uses=1 type=[16 x i16]*]
@wl_code_table = constant [16 x i13] [i13 -60, i13 3042, i13 1198, i13 538, i13 334, i13 172, i13 58, i13 -30, i13 3042, i13 1198, i13 538, i13 334, i13 172, i13 58, i13 -30, i13 -60] ; [#uses=1 type=[16 x i13]*]
@ilb_table = constant [32 x i12] [i12 -2048, i12 -2003, i12 -1957, i12 -1910, i12 -1863, i12 -1814, i12 -1764, i12 -1713, i12 -1661, i12 -1607, i12 -1553, i12 -1497, i12 -1440, i12 -1382, i12 -1322, i12 -1262, i12 -1200, i12 -1136, i12 -1071, i12 -1005, i12 -938, i12 -868, i12 -798, i12 -725, i12 -652, i12 -576, i12 -499, i12 -420, i12 -340, i12 -258, i12 -174, i12 -88] ; [#uses=2 type=[32 x i12]*]

; [#uses=0]
define i32 @encode(i32 %xin1, i32 %xin2) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %xin1) nounwind, !map !553
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %xin2) nounwind, !map !559
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !563
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @encode.str) nounwind
  call void @llvm.dbg.value(metadata !{i32 %xin1}, i64 0, metadata !569), !dbg !575 ; [debug line = 248:13] [debug variable = xin1]
  call void @llvm.dbg.value(metadata !{i32 %xin2}, i64 0, metadata !576), !dbg !577 ; [debug line = 248:23] [debug variable = xin2]
  %tqmf.load = load i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 0), align 16, !dbg !578 ; [#uses=2 type=i32] [debug line = 259:3]
  %tmp.cast = zext i32 %tqmf.load to i34, !dbg !578 ; [#uses=1 type=i34] [debug line = 259:3]
  %tmp.cast1 = zext i32 %tqmf.load to i36, !dbg !578 ; [#uses=1 type=i36] [debug line = 259:3]
  %_shl = shl nuw i36 %tmp.cast1, 4, !dbg !578    ; [#uses=1 type=i36] [debug line = 259:3]
  %_shl.cast = sext i36 %_shl to i37, !dbg !578   ; [#uses=1 type=i37] [debug line = 259:3]
  %_shl1 = shl nuw i34 %tmp.cast, 2, !dbg !578    ; [#uses=1 type=i34] [debug line = 259:3]
  %_shl1.cast = sext i34 %_shl1 to i37, !dbg !578 ; [#uses=1 type=i37] [debug line = 259:3]
  %xa = sub i37 %_shl.cast, %_shl1.cast, !dbg !578 ; [#uses=1 type=i37] [debug line = 259:3]
  %xa.cast = sext i37 %xa to i50, !dbg !578       ; [#uses=1 type=i50] [debug line = 259:3]
  call void @llvm.dbg.value(metadata !{i37 %xa}, i64 0, metadata !580), !dbg !578 ; [debug line = 259:3] [debug variable = xa]
  %tqmf.load.1 = load i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 1), align 4, !dbg !582 ; [#uses=1 type=i32] [debug line = 260:3]
  %tmp.3.cast = sext i32 %tqmf.load.1 to i39, !dbg !582 ; [#uses=1 type=i39] [debug line = 260:3]
  %xb = mul i39 %tmp.3.cast, -44, !dbg !582       ; [#uses=1 type=i39] [debug line = 260:3]
  %xb.cast = sext i39 %xb to i50, !dbg !582       ; [#uses=1 type=i50] [debug line = 260:3]
  call void @llvm.dbg.value(metadata !{i39 %xb}, i64 0, metadata !583), !dbg !582 ; [debug line = 260:3] [debug variable = xb]
  br label %1, !dbg !584                          ; [debug line = 262:8]

; <label>:1                                       ; preds = %3, %0
  %tqmf_ptr.0.rec = phi i5 [ 2, %0 ], [ %phitmp, %3 ] ; [#uses=3 type=i5]
  %i = phi i4 [ 0, %0 ], [ %i.2, %3 ]             ; [#uses=2 type=i4]
  %xa1 = phi i50 [ %xa.cast, %0 ], [ %xa.2, %3 ]  ; [#uses=2 type=i50]
  %xb1 = phi i50 [ %xb.cast, %0 ], [ %xb.2, %3 ]  ; [#uses=2 type=i50]
  %tqmf_ptr.0.rec.cast = zext i5 %tqmf_ptr.0.rec to i64 ; [#uses=2 type=i64]
  %h.addr = getelementptr [24 x i15]* @h, i64 0, i64 %tqmf_ptr.0.rec.cast ; [#uses=1 type=i15*]
  %tqmf.addr = getelementptr [24 x i32]* @tqmf, i64 0, i64 %tqmf_ptr.0.rec.cast ; [#uses=1 type=i32*]
  %exitcond2 = icmp eq i4 %i, -6, !dbg !584       ; [#uses=1 type=i1] [debug line = 262:8]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %4, label %3, !dbg !584 ; [debug line = 262:8]

; <label>:3                                       ; preds = %1
  %tqmf_ptr.0.sum1 = or i5 %tqmf_ptr.0.rec, 1, !dbg !586 ; [#uses=1 type=i5] [debug line = 264:7]
  %tqmf_ptr.0.sum1.cast = zext i5 %tqmf_ptr.0.sum1 to i64, !dbg !586 ; [#uses=2 type=i64] [debug line = 264:7]
  %tqmf_ptr = getelementptr [24 x i32]* @tqmf, i64 0, i64 %tqmf_ptr.0.sum1.cast, !dbg !586 ; [#uses=1 type=i32*] [debug line = 264:7]
  call void @llvm.dbg.value(metadata !{i32* %tqmf_ptr}, i64 0, metadata !588), !dbg !586 ; [debug line = 264:7] [debug variable = tqmf_ptr]
  %tqmf.load.4 = load i32* %tqmf.addr, align 8, !dbg !586 ; [#uses=1 type=i32] [debug line = 264:7]
  %tmp..cast = sext i32 %tqmf.load.4 to i46, !dbg !586 ; [#uses=1 type=i46] [debug line = 264:7]
  %h_ptr = getelementptr [24 x i15]* @h, i64 0, i64 %tqmf_ptr.0.sum1.cast, !dbg !586 ; [#uses=1 type=i15*] [debug line = 264:7]
  call void @llvm.dbg.value(metadata !{i15* %h_ptr}, i64 0, metadata !590), !dbg !586 ; [debug line = 264:7] [debug variable = h_ptr]
  %h.load = load i15* %h.addr, align 4, !dbg !586 ; [#uses=1 type=i15] [debug line = 264:7]
  %tmp.1.cast = sext i15 %h.load to i46, !dbg !586 ; [#uses=1 type=i46] [debug line = 264:7]
  %tmp.2 = mul i46 %tmp..cast, %tmp.1.cast, !dbg !586 ; [#uses=1 type=i46] [debug line = 264:7]
  %tmp.2.cast = sext i46 %tmp.2 to i50, !dbg !586 ; [#uses=1 type=i50] [debug line = 264:7]
  %xa.2 = add i50 %xa1, %tmp.2.cast, !dbg !586    ; [#uses=1 type=i50] [debug line = 264:7]
  call void @llvm.dbg.value(metadata !{i50 %xa.2}, i64 0, metadata !580), !dbg !586 ; [debug line = 264:7] [debug variable = xa]
  %tqmf_ptr.load = load i32* %tqmf_ptr, align 4, !dbg !592 ; [#uses=1 type=i32] [debug line = 265:7]
  %tmp.4.cast = sext i32 %tqmf_ptr.load to i46, !dbg !592 ; [#uses=1 type=i46] [debug line = 265:7]
  %h_ptr.load = load i15* %h_ptr, align 2, !dbg !592 ; [#uses=1 type=i15] [debug line = 265:7]
  %tmp.7.cast = sext i15 %h_ptr.load to i46, !dbg !592 ; [#uses=1 type=i46] [debug line = 265:7]
  %tmp. = mul i46 %tmp.4.cast, %tmp.7.cast, !dbg !592 ; [#uses=1 type=i46] [debug line = 265:7]
  %tmp.10.cast = sext i46 %tmp. to i50, !dbg !592 ; [#uses=1 type=i50] [debug line = 265:7]
  %xb.2 = add i50 %xb1, %tmp.10.cast, !dbg !592   ; [#uses=1 type=i50] [debug line = 265:7]
  call void @llvm.dbg.value(metadata !{i50 %xb.2}, i64 0, metadata !583), !dbg !592 ; [debug line = 265:7] [debug variable = xb]
  %i.2 = add i4 %i, 1, !dbg !593                  ; [#uses=1 type=i4] [debug line = 262:23]
  call void @llvm.dbg.value(metadata !{i4 %i.2}, i64 0, metadata !594), !dbg !593 ; [debug line = 262:23] [debug variable = i]
  %phitmp = add i5 %tqmf_ptr.0.rec, 2, !dbg !593  ; [#uses=1 type=i5] [debug line = 262:23]
  br label %1, !dbg !593                          ; [debug line = 262:23]

; <label>:4                                       ; preds = %1
  %xb1.lcssa = phi i50 [ %xb1, %1 ]               ; [#uses=1 type=i50]
  %xa1.lcssa = phi i50 [ %xa1, %1 ]               ; [#uses=1 type=i50]
  %tqmf.load.2 = load i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 22), align 8, !dbg !595 ; [#uses=1 type=i32] [debug line = 268:3]
  %tmp.5.cast = sext i32 %tqmf.load.2 to i39, !dbg !595 ; [#uses=1 type=i39] [debug line = 268:3]
  %tmp.6 = mul i39 %tmp.5.cast, -44, !dbg !595    ; [#uses=1 type=i39] [debug line = 268:3]
  %tmp.6.cast = sext i39 %tmp.6 to i50, !dbg !595 ; [#uses=1 type=i50] [debug line = 268:3]
  %xa.1 = add i50 %tmp.6.cast, %xa1.lcssa, !dbg !595 ; [#uses=2 type=i50] [debug line = 268:3]
  %xa.1.cast1 = zext i50 %xa.1 to i51, !dbg !595  ; [#uses=1 type=i51] [debug line = 268:3]
  %xa.1.cast = trunc i50 %xa.1 to i47, !dbg !595  ; [#uses=1 type=i47] [debug line = 268:3]
  call void @llvm.dbg.value(metadata !{i50 %xa.1}, i64 0, metadata !580), !dbg !595 ; [debug line = 268:3] [debug variable = xa]
  %tqmf.load.3 = load i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 23), align 4, !dbg !596 ; [#uses=2 type=i32] [debug line = 269:3]
  %tmp.8.cast = zext i32 %tqmf.load.3 to i34, !dbg !596 ; [#uses=1 type=i34] [debug line = 269:3]
  %tmp.8.cast1 = zext i32 %tqmf.load.3 to i36, !dbg !596 ; [#uses=1 type=i36] [debug line = 269:3]
  %_shl2 = shl nuw i36 %tmp.8.cast1, 4, !dbg !596 ; [#uses=1 type=i36] [debug line = 269:3]
  %_shl2.cast = sext i36 %_shl2 to i37, !dbg !596 ; [#uses=1 type=i37] [debug line = 269:3]
  %_shl3 = shl nuw i34 %tmp.8.cast, 2, !dbg !596  ; [#uses=1 type=i34] [debug line = 269:3]
  %_shl3.cast = sext i34 %_shl3 to i37, !dbg !596 ; [#uses=1 type=i37] [debug line = 269:3]
  %tmp.9 = sub i37 %_shl2.cast, %_shl3.cast, !dbg !596 ; [#uses=1 type=i37] [debug line = 269:3]
  %tmp.9.cast = sext i37 %tmp.9 to i50, !dbg !596 ; [#uses=1 type=i50] [debug line = 269:3]
  %xb.1 = add i50 %tmp.9.cast, %xb1.lcssa, !dbg !596 ; [#uses=2 type=i50] [debug line = 269:3]
  %xb.1.cast1 = zext i50 %xb.1 to i51, !dbg !596  ; [#uses=1 type=i51] [debug line = 269:3]
  %xb.1.cast = trunc i50 %xb.1 to i47, !dbg !596  ; [#uses=1 type=i47] [debug line = 269:3]
  call void @llvm.dbg.value(metadata !{i50 %xb.1}, i64 0, metadata !583), !dbg !596 ; [debug line = 269:3] [debug variable = xb]
  br label %5, !dbg !597                          ; [debug line = 273:8]

; <label>:5                                       ; preds = %7, %4
  %tqmf_ptr.0.pn.rec = phi i6 [ 0, %4 ], [ %tqmf_ptr1.0.rec, %7 ] ; [#uses=3 type=i6]
  %i.1 = phi i5 [ 0, %4 ], [ %i.3, %7 ]           ; [#uses=2 type=i5]
  %tqmf_ptr.0.pn.rec.cast = trunc i6 %tqmf_ptr.0.pn.rec to i5 ; [#uses=1 type=i5]
  %.sum = add i5 %tqmf_ptr.0.pn.rec.cast, -9      ; [#uses=1 type=i5]
  %.sum.cast = zext i5 %.sum to i64               ; [#uses=1 type=i64]
  %tqmf.addr.2 = getelementptr [24 x i32]* @tqmf, i64 0, i64 %.sum.cast ; [#uses=1 type=i32*]
  %tqmf_ptr1.0.rec = add i6 %tqmf_ptr.0.pn.rec, -1, !dbg !599 ; [#uses=1 type=i6] [debug line = 272:3]
  %tqmf_ptr.0.sum = add i6 %tqmf_ptr.0.pn.rec, 21, !dbg !599 ; [#uses=1 type=i6] [debug line = 272:3]
  %tqmf_ptr.0.sum.cast = zext i6 %tqmf_ptr.0.sum to i64, !dbg !599 ; [#uses=1 type=i64] [debug line = 272:3]
  %tqmf_ptr1 = getelementptr [24 x i32]* @tqmf, i64 0, i64 %tqmf_ptr.0.sum.cast, !dbg !599 ; [#uses=1 type=i32*] [debug line = 272:3]
  call void @llvm.dbg.value(metadata !{i32* %tqmf_ptr1}, i64 0, metadata !600), !dbg !599 ; [debug line = 272:3] [debug variable = tqmf_ptr1]
  %exitcond = icmp eq i5 %i.1, -10, !dbg !597     ; [#uses=1 type=i1] [debug line = 273:8]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 22, i64 22, i64 22) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %8, label %7, !dbg !597  ; [debug line = 273:8]

; <label>:7                                       ; preds = %5
  %tqmf_ptr1.load = load i32* %tqmf_ptr1, align 4, !dbg !601 ; [#uses=1 type=i32] [debug line = 274:5]
  store i32 %tqmf_ptr1.load, i32* %tqmf.addr.2, align 4, !dbg !601 ; [debug line = 274:5]
  %i.3 = add i5 %i.1, 1, !dbg !602                ; [#uses=1 type=i5] [debug line = 273:23]
  call void @llvm.dbg.value(metadata !{i5 %i.3}, i64 0, metadata !594), !dbg !602 ; [debug line = 273:23] [debug variable = i]
  br label %5, !dbg !602                          ; [debug line = 273:23]

; <label>:8                                       ; preds = %5
  store i32 %xin1, i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 1), align 4, !dbg !603 ; [debug line = 275:3]
  store i32 %xin2, i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 0), align 16, !dbg !604 ; [debug line = 276:3]
  %tmp.1 = add i51 %xb.1.cast1, %xa.1.cast1, !dbg !605 ; [#uses=1 type=i51] [debug line = 279:3]
  %tmp.3 = lshr i51 %tmp.1, 15, !dbg !605         ; [#uses=1 type=i51] [debug line = 279:3]
  %tmp.4 = trunc i51 %tmp.3 to i32, !dbg !605     ; [#uses=2 type=i32] [debug line = 279:3]
  store i32 %tmp.4, i32* @xl, align 4, !dbg !605  ; [debug line = 279:3]
  %tmp.5 = sub i47 %xa.1.cast, %xb.1.cast, !dbg !606 ; [#uses=1 type=i47] [debug line = 280:3]
  %tmp.7 = lshr i47 %tmp.5, 15, !dbg !606         ; [#uses=1 type=i47] [debug line = 280:3]
  %tmp.8 = trunc i47 %tmp.7 to i32, !dbg !606     ; [#uses=1 type=i32] [debug line = 280:3]
  store i32 %tmp.8, i32* @xh, align 4, !dbg !606  ; [debug line = 280:3]
  %delay_bpl.load = load i32* getelementptr inbounds ([6 x i32]* @delay_bpl, i64 0, i64 0), align 16, !dbg !607 ; [#uses=1 type=i32] [debug line = 585:3@287:9]
  %tmp.i = sext i32 %delay_bpl.load to i64, !dbg !607 ; [#uses=1 type=i64] [debug line = 585:3@287:9]
  %delay_dltx.load = load i32* getelementptr inbounds ([6 x i32]* @delay_dltx, i64 0, i64 0), align 16, !dbg !607 ; [#uses=1 type=i32] [debug line = 585:3@287:9]
  %tmp..i = sext i32 %delay_dltx.load to i64, !dbg !607 ; [#uses=1 type=i64] [debug line = 585:3@287:9]
  %zl = mul nsw i64 %tmp.i, %tmp..i, !dbg !607    ; [#uses=1 type=i64] [debug line = 585:3@287:9]
  call void @llvm.dbg.value(metadata !{i64 %zl}, i64 0, metadata !613) nounwind, !dbg !607 ; [debug line = 585:3@287:9] [debug variable = zl]
  br label %9, !dbg !614                          ; [debug line = 586:8@287:9]

; <label>:9                                       ; preds = %11, %8
  %zl1.i = phi i64 [ %zl, %8 ], [ %zl.1, %11 ]    ; [#uses=2 type=i64]
  %dlt.pn.rec.i = phi i3 [ 0, %8 ], [ %.01.rec.i, %11 ] ; [#uses=2 type=i3]
  %zl1.i.cast = trunc i64 %zl1.i to i46, !dbg !607 ; [#uses=1 type=i46] [debug line = 585:3@287:9]
  %.01.rec.i = add i3 %dlt.pn.rec.i, 1, !dbg !607 ; [#uses=2 type=i3] [debug line = 585:3@287:9]
  %.01.rec.i.cast = zext i3 %.01.rec.i to i64, !dbg !607 ; [#uses=2 type=i64] [debug line = 585:3@287:9]
  %dlt.assign = getelementptr [6 x i32]* @delay_dltx, i64 0, i64 %.01.rec.i.cast, !dbg !607 ; [#uses=1 type=i32*] [debug line = 585:3@287:9]
  call void @llvm.dbg.value(metadata !{i32* %dlt.assign}, i64 0, metadata !616) nounwind, !dbg !607 ; [debug line = 585:3@287:9] [debug variable = dlt]
  %bpl.assign = getelementptr [6 x i32]* @delay_bpl, i64 0, i64 %.01.rec.i.cast, !dbg !607 ; [#uses=1 type=i32*] [debug line = 585:3@287:9]
  call void @llvm.dbg.value(metadata !{i32* %bpl.assign}, i64 0, metadata !617) nounwind, !dbg !607 ; [debug line = 585:3@287:9] [debug variable = bpl]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind ; [#uses=0 type=i32]
  %exitcond3 = icmp eq i3 %dlt.pn.rec.i, -3, !dbg !614 ; [#uses=1 type=i1] [debug line = 586:8@287:9]
  br i1 %exitcond3, label %filtez.exit, label %11, !dbg !614 ; [debug line = 586:8@287:9]

; <label>:11                                      ; preds = %9
  %bpl.assign.load = load i32* %bpl.assign, align 4, !dbg !618 ; [#uses=1 type=i32] [debug line = 587:5@287:9]
  %tmp.64.i = sext i32 %bpl.assign.load to i64, !dbg !618 ; [#uses=1 type=i64] [debug line = 587:5@287:9]
  %dlt.assign.load = load i32* %dlt.assign, align 4, !dbg !618 ; [#uses=1 type=i32] [debug line = 587:5@287:9]
  %tmp.65.i = sext i32 %dlt.assign.load to i64, !dbg !618 ; [#uses=1 type=i64] [debug line = 587:5@287:9]
  %tmp.66.i = mul nsw i64 %tmp.64.i, %tmp.65.i, !dbg !618 ; [#uses=1 type=i64] [debug line = 587:5@287:9]
  %zl.1 = add nsw i64 %zl1.i, %tmp.66.i, !dbg !618 ; [#uses=1 type=i64] [debug line = 587:5@287:9]
  call void @llvm.dbg.value(metadata !{i64 %zl.1}, i64 0, metadata !613) nounwind, !dbg !618 ; [debug line = 587:5@287:9] [debug variable = zl]
  br label %9, !dbg !619                          ; [debug line = 586:22@287:9]

filtez.exit:                                      ; preds = %9
  %zl1.i.cast.lcssa = phi i46 [ %zl1.i.cast, %9 ] ; [#uses=1 type=i46]
  %tmp.62.i = lshr i46 %zl1.i.cast.lcssa, 14, !dbg !620 ; [#uses=1 type=i46] [debug line = 589:3@287:9]
  %tmp.63.i = trunc i46 %tmp.62.i to i32, !dbg !620 ; [#uses=3 type=i32] [debug line = 589:3@287:9]
  store i32 %tmp.63.i, i32* @szl, align 4, !dbg !612 ; [debug line = 287:9]
  %rlt1.assign = load i32* @rlt1, align 4, !dbg !621 ; [#uses=1 type=i32] [debug line = 290:9]
  %al1.assign = load i32* @al1, align 4, !dbg !621 ; [#uses=1 type=i32] [debug line = 290:9]
  %rlt2.assign = load i32* @rlt2, align 4, !dbg !621 ; [#uses=1 type=i32] [debug line = 290:9]
  %al2.assign = load i32* @al2, align 4, !dbg !621 ; [#uses=1 type=i32] [debug line = 290:9]
  call void @llvm.dbg.value(metadata !{i32 %rlt1.assign}, i64 0, metadata !622), !dbg !626 ; [debug line = 596:13@290:9] [debug variable = rlt1]
  call void @llvm.dbg.value(metadata !{i32 %al1.assign}, i64 0, metadata !627), !dbg !628 ; [debug line = 596:23@290:9] [debug variable = al1]
  call void @llvm.dbg.value(metadata !{i32 %rlt2.assign}, i64 0, metadata !629), !dbg !630 ; [debug line = 596:32@290:9] [debug variable = rlt2]
  call void @llvm.dbg.value(metadata !{i32 %al2.assign}, i64 0, metadata !631), !dbg !632 ; [debug line = 596:42@290:9] [debug variable = al2]
  %tmp.i1 = shl nsw i32 %rlt1.assign, 1, !dbg !633 ; [#uses=1 type=i32] [debug line = 599:3@290:9]
  %pl = sext i32 %tmp.i1 to i64, !dbg !633        ; [#uses=1 type=i64] [debug line = 599:3@290:9]
  call void @llvm.dbg.value(metadata !{i64 %pl}, i64 0, metadata !635), !dbg !633 ; [debug line = 599:3@290:9] [debug variable = pl]
  %tmp..i1 = sext i32 %al1.assign to i64, !dbg !636 ; [#uses=1 type=i64] [debug line = 600:3@290:9]
  %pl.1 = mul nsw i64 %pl, %tmp..i1, !dbg !636    ; [#uses=1 type=i64] [debug line = 600:3@290:9]
  call void @llvm.dbg.value(metadata !{i64 %pl.1}, i64 0, metadata !635), !dbg !636 ; [debug line = 600:3@290:9] [debug variable = pl]
  %tmp.62.i1 = shl nsw i32 %rlt2.assign, 1, !dbg !637 ; [#uses=1 type=i32] [debug line = 601:3@290:9]
  %pl2 = sext i32 %tmp.62.i1 to i64, !dbg !637    ; [#uses=1 type=i64] [debug line = 601:3@290:9]
  call void @llvm.dbg.value(metadata !{i64 %pl2}, i64 0, metadata !638), !dbg !637 ; [debug line = 601:3@290:9] [debug variable = pl2]
  %tmp.63.i1 = sext i32 %al2.assign to i64, !dbg !639 ; [#uses=1 type=i64] [debug line = 602:3@290:9]
  %tmp.64.i1 = mul nsw i64 %pl2, %tmp.63.i1, !dbg !639 ; [#uses=1 type=i64] [debug line = 602:3@290:9]
  %pl.2 = add nsw i64 %pl.1, %tmp.64.i1, !dbg !639 ; [#uses=1 type=i64] [debug line = 602:3@290:9]
  call void @llvm.dbg.value(metadata !{i64 %pl.2}, i64 0, metadata !635), !dbg !639 ; [debug line = 602:3@290:9] [debug variable = pl]
  %tmp.65.i1 = lshr i64 %pl.2, 15, !dbg !640      ; [#uses=1 type=i64] [debug line = 603:3@290:9]
  %tmp.66.i1 = trunc i64 %tmp.65.i1 to i32, !dbg !640 ; [#uses=2 type=i32] [debug line = 603:3@290:9]
  store i32 %tmp.66.i1, i32* @spl, align 4, !dbg !621 ; [debug line = 290:9]
  %tmp.10 = add nsw i32 %tmp.63.i, %tmp.66.i1, !dbg !641 ; [#uses=2 type=i32] [debug line = 293:3]
  store i32 %tmp.10, i32* @sl, align 4, !dbg !641 ; [debug line = 293:3]
  %el.assign = sub nsw i32 %tmp.4, %tmp.10, !dbg !642 ; [#uses=4 type=i32] [debug line = 294:3]
  store i32 %el.assign, i32* @el, align 4, !dbg !642 ; [debug line = 294:3]
  %detl.assign = load i32* @detl, align 4, !dbg !643 ; [#uses=1 type=i32] [debug line = 297:8]
  call void @llvm.dbg.value(metadata !{i32 %el.assign}, i64 0, metadata !644) nounwind, !dbg !646 ; [debug line = 608:13@297:8] [debug variable = el]
  call void @llvm.dbg.value(metadata !{i32 %detl.assign}, i64 0, metadata !647) nounwind, !dbg !648 ; [debug line = 608:21@297:8] [debug variable = detl]
  call void @llvm.dbg.value(metadata !{i32 %el.assign}, i64 0, metadata !649) nounwind, !dbg !655 ; [debug line = 236:10@614:8@297:8] [debug variable = n]
  %tmp.i.i = icmp sgt i32 %el.assign, -1, !dbg !656 ; [#uses=2 type=i1] [debug line = 240:3@614:8@297:8]
  %m = sub nsw i32 0, %el.assign, !dbg !658       ; [#uses=1 type=i32] [debug line = 243:5@614:8@297:8]
  call void @llvm.dbg.value(metadata !{i32 %m}, i64 0, metadata !659) nounwind, !dbg !658 ; [debug line = 243:5@614:8@297:8] [debug variable = m]
  %n.assign.1 = select i1 %tmp.i.i, i32 %el.assign, i32 %m, !dbg !656 ; [#uses=1 type=i32] [debug line = 240:3@614:8@297:8]
  call void @llvm.dbg.value(metadata !{i32 %n.assign.1}, i64 0, metadata !649) nounwind, !dbg !656 ; [debug line = 240:3@614:8@297:8] [debug variable = n]
  %tmp..i2.cast = sext i32 %detl.assign to i47, !dbg !660 ; [#uses=2 type=i47] [debug line = 616:8@297:8]
  br label %12, !dbg !660                         ; [debug line = 616:8@297:8]

; <label>:12                                      ; preds = %15, %filtez.exit
  %mil.i = phi i5 [ 0, %filtez.exit ], [ %mil, %15 ] ; [#uses=5 type=i5]
  %tmp.67.i = icmp ult i5 %mil.i, -2, !dbg !660   ; [#uses=1 type=i1] [debug line = 616:8@297:8]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 30, i64 15) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.67.i, label %14, label %.loopexit.i_ifconv, !dbg !660 ; [debug line = 616:8@297:8]

; <label>:14                                      ; preds = %12
  %tmp.68.i = zext i5 %mil.i to i64, !dbg !662    ; [#uses=1 type=i64] [debug line = 618:7@297:8]
  %decis_levl.addr = getelementptr [30 x i15]* @decis_levl, i64 0, i64 %tmp.68.i, !dbg !662 ; [#uses=1 type=i15*] [debug line = 618:7@297:8]
  %decis_levl.load = load i15* %decis_levl.addr, align 2, !dbg !662 ; [#uses=1 type=i15] [debug line = 618:7@297:8]
  %tmp.69.i.cast = zext i15 %decis_levl.load to i47, !dbg !662 ; [#uses=1 type=i47] [debug line = 618:7@297:8]
  %tmp.70.i = mul i47 %tmp..i2.cast, %tmp.69.i.cast, !dbg !662 ; [#uses=1 type=i47] [debug line = 618:7@297:8]
  %tmp = lshr i47 %tmp.70.i, 15, !dbg !662        ; [#uses=1 type=i47] [debug line = 618:7@297:8]
  %tmp.11 = trunc i47 %tmp to i32, !dbg !662      ; [#uses=1 type=i32] [debug line = 618:7@297:8]
  %tmp.71.i = icmp sgt i32 %n.assign.1, %tmp.11, !dbg !664 ; [#uses=1 type=i1] [debug line = 619:7@297:8]
  br i1 %tmp.71.i, label %15, label %.loopexit.i_ifconv, !dbg !664 ; [debug line = 619:7@297:8]

; <label>:15                                      ; preds = %14
  %mil = add i5 %mil.i, 1, !dbg !665              ; [#uses=1 type=i5] [debug line = 616:27@297:8]
  call void @llvm.dbg.value(metadata !{i5 %mil}, i64 0, metadata !666) nounwind, !dbg !665 ; [debug line = 616:27@297:8] [debug variable = mil]
  br label %12, !dbg !665                         ; [debug line = 616:27@297:8]

.loopexit.i_ifconv:                               ; preds = %14, %12
  %mil.i.lcssa = phi i5 [ %mil.i, %12 ], [ %mil.i, %14 ] ; [#uses=1 type=i5]
  %tmp.73.i = zext i5 %mil.i.lcssa to i64, !dbg !667 ; [#uses=2 type=i64] [debug line = 624:5@297:8]
  %quant26bt_pos.addr = getelementptr [31 x i6]* @quant26bt_pos, i64 0, i64 %tmp.73.i, !dbg !667 ; [#uses=1 type=i6*] [debug line = 624:5@297:8]
  %ril = load i6* %quant26bt_pos.addr, align 1, !dbg !667 ; [#uses=1 type=i6] [debug line = 624:5@297:8]
  call void @llvm.dbg.value(metadata !{i6 %ril}, i64 0, metadata !668) nounwind, !dbg !667 ; [debug line = 624:5@297:8] [debug variable = ril]
  %quant26bt_neg.addr = getelementptr [31 x i6]* @quant26bt_neg, i64 0, i64 %tmp.73.i, !dbg !669 ; [#uses=1 type=i6*] [debug line = 626:5@297:8]
  %ril.1 = load i6* %quant26bt_neg.addr, align 1, !dbg !669 ; [#uses=1 type=i6] [debug line = 626:5@297:8]
  call void @llvm.dbg.value(metadata !{i6 %ril.1}, i64 0, metadata !668) nounwind, !dbg !669 ; [debug line = 626:5@297:8] [debug variable = ril]
  %ril.3 = select i1 %tmp.i.i, i6 %ril, i6 %ril.1, !dbg !670 ; [#uses=2 type=i6] [debug line = 634:13@304:9]
  %il.assign.cast = zext i6 %ril.3 to i32, !dbg !670 ; [#uses=1 type=i32] [debug line = 634:13@304:9]
  call void @llvm.dbg.value(metadata !{i6 %ril.3}, i64 0, metadata !668) nounwind, !dbg !669 ; [debug line = 626:5@297:8] [debug variable = ril]
  store i32 %il.assign.cast, i32* @il, align 4, !dbg !643 ; [debug line = 297:8]
  %tmp.12 = lshr i6 %ril.3, 2, !dbg !673          ; [#uses=1 type=i6] [debug line = 301:3]
  %tmp.13 = zext i6 %tmp.12 to i64, !dbg !673     ; [#uses=2 type=i64] [debug line = 301:3]
  %qq4_code4_table.addr = getelementptr [16 x i16]* @qq4_code4_table, i64 0, i64 %tmp.13, !dbg !673 ; [#uses=1 type=i16*] [debug line = 301:3]
  %qq4_code4_table.load = load i16* %qq4_code4_table.addr, align 2, !dbg !673 ; [#uses=1 type=i16] [debug line = 301:3]
  %tmp.23.cast = sext i16 %qq4_code4_table.load to i47, !dbg !673 ; [#uses=1 type=i47] [debug line = 301:3]
  %tmp.14 = mul i47 %tmp.23.cast, %tmp..i2.cast, !dbg !673 ; [#uses=1 type=i47] [debug line = 301:3]
  %tmp.15 = lshr i47 %tmp.14, 15, !dbg !673       ; [#uses=1 type=i47] [debug line = 301:3]
  %tmp.16 = trunc i47 %tmp.15 to i32, !dbg !673   ; [#uses=3 type=i32] [debug line = 301:3]
  store i32 %tmp.16, i32* @dlt, align 4, !dbg !673 ; [debug line = 301:3]
  %nbl.assign = load i32* @nbl, align 4, !dbg !672 ; [#uses=2 type=i32] [debug line = 304:9]
  call void @llvm.dbg.value(metadata !{i6 %ril.3}, i64 0, metadata !674) nounwind, !dbg !670 ; [debug line = 634:13@304:9] [debug variable = il]
  call void @llvm.dbg.value(metadata !{i32 %nbl.assign}, i64 0, metadata !675) nounwind, !dbg !676 ; [debug line = 634:21@304:9] [debug variable = nbl]
  %tmp.i2.cast = sext i32 %nbl.assign to i40, !dbg !677 ; [#uses=1 type=i40] [debug line = 637:3@304:9]
  %tmp.i2.cast1 = zext i32 %nbl.assign to i39, !dbg !677 ; [#uses=1 type=i39] [debug line = 637:3@304:9]
  %_shl.i = shl nuw i39 %tmp.i2.cast1, 7, !dbg !677 ; [#uses=1 type=i39] [debug line = 637:3@304:9]
  %_shl.i.cast = zext i39 %_shl.i to i40, !dbg !677 ; [#uses=1 type=i40] [debug line = 637:3@304:9]
  %tmp..i3 = sub i40 %_shl.i.cast, %tmp.i2.cast, !dbg !677 ; [#uses=1 type=i40] [debug line = 637:3@304:9]
  %wd..i = lshr i40 %tmp..i3, 7, !dbg !677        ; [#uses=1 type=i40] [debug line = 637:3@304:9]
  %tmp.75.i = trunc i40 %wd..i to i32, !dbg !679  ; [#uses=1 type=i32] [debug line = 638:3@304:9]
  %wl_code_table.addr = getelementptr [16 x i13]* @wl_code_table, i64 0, i64 %tmp.13, !dbg !679 ; [#uses=1 type=i13*] [debug line = 638:3@304:9]
  %wl_code_table.load = load i13* %wl_code_table.addr, align 2, !dbg !679 ; [#uses=1 type=i13] [debug line = 638:3@304:9]
  %wl_code_table.load.cast = sext i13 %wl_code_table.load to i32, !dbg !679 ; [#uses=1 type=i32] [debug line = 638:3@304:9]
  %nbl.assign.1 = add nsw i32 %wl_code_table.load.cast, %tmp.75.i, !dbg !679 ; [#uses=2 type=i32] [debug line = 638:3@304:9]
  %nbl.assign.1.cast = trunc i32 %nbl.assign.1 to i31, !dbg !679 ; [#uses=1 type=i31] [debug line = 638:3@304:9]
  call void @llvm.dbg.value(metadata !{i32 %nbl.assign.1}, i64 0, metadata !675) nounwind, !dbg !679 ; [debug line = 638:3@304:9] [debug variable = nbl]
  %tmp.77.i = icmp slt i32 %nbl.assign.1, 0, !dbg !680 ; [#uses=1 type=i1] [debug line = 639:3@304:9]
  %..i = select i1 %tmp.77.i, i31 0, i31 %nbl.assign.1.cast, !dbg !680 ; [#uses=2 type=i31] [debug line = 639:3@304:9]
  %..i.cast = trunc i31 %..i to i15, !dbg !680    ; [#uses=1 type=i15] [debug line = 639:3@304:9]
  %tmp.78.i = icmp ugt i31 %..i, 18432, !dbg !681 ; [#uses=1 type=i1] [debug line = 641:3@304:9]
  %nbl.assign.2 = select i1 %tmp.78.i, i15 -14336, i15 %..i.cast, !dbg !681 ; [#uses=3 type=i15] [debug line = 641:3@304:9]
  %nbl.assign.2.cast1 = trunc i15 %nbl.assign.2 to i11, !dbg !681 ; [#uses=1 type=i11] [debug line = 641:3@304:9]
  %nbl.assign.2.cast = zext i15 %nbl.assign.2 to i32, !dbg !681 ; [#uses=1 type=i32] [debug line = 641:3@304:9]
  store i32 %nbl.assign.2.cast, i32* @nbl, align 4, !dbg !672 ; [debug line = 304:9]
  call void @llvm.dbg.value(metadata !{i15 %nbl.assign.2}, i64 0, metadata !682) nounwind, !dbg !685 ; [debug line = 649:13@308:10] [debug variable = nbl]
  %tmp.i3 = lshr i11 %nbl.assign.2.cast1, 6, !dbg !686 ; [#uses=1 type=i11] [debug line = 652:3@308:10]
  %wd1 = trunc i11 %tmp.i3 to i5, !dbg !686       ; [#uses=1 type=i5] [debug line = 652:3@308:10]
  call void @llvm.dbg.value(metadata !{i5 %wd1}, i64 0, metadata !688) nounwind, !dbg !686 ; [debug line = 652:3@308:10] [debug variable = wd1]
  %tmp.54.i = lshr i15 %nbl.assign.2, 11, !dbg !689 ; [#uses=1 type=i15] [debug line = 653:3@308:10]
  %wd2.cast = trunc i15 %tmp.54.i to i4, !dbg !689 ; [#uses=1 type=i4] [debug line = 653:3@308:10]
  %tmp..i4 = zext i5 %wd1 to i64, !dbg !690       ; [#uses=1 type=i64] [debug line = 654:3@308:10]
  %ilb_table.addr = getelementptr [32 x i12]* @ilb_table, i64 0, i64 %tmp..i4, !dbg !690 ; [#uses=1 type=i12*] [debug line = 654:3@308:10]
  %ilb_table.load = load i12* %ilb_table.addr, align 2, !dbg !690 ; [#uses=1 type=i12] [debug line = 654:3@308:10]
  %ilb_table.load.cast = zext i12 %ilb_table.load to i13, !dbg !690 ; [#uses=1 type=i13] [debug line = 654:3@308:10]
  %tmp.80.i = sub i4 -7, %wd2.cast, !dbg !690     ; [#uses=1 type=i4] [debug line = 654:3@308:10]
  %tmp.80.i.cast = zext i4 %tmp.80.i to i13, !dbg !690 ; [#uses=1 type=i13] [debug line = 654:3@308:10]
  %wd3 = lshr i13 %ilb_table.load.cast, %tmp.80.i.cast, !dbg !690 ; [#uses=1 type=i13] [debug line = 654:3@308:10]
  call void @llvm.dbg.value(metadata !{i13 %wd3}, i64 0, metadata !691) nounwind, !dbg !690 ; [debug line = 654:3@308:10] [debug variable = wd3]
  %wd = trunc i13 %wd3 to i12, !dbg !692          ; [#uses=1 type=i12] [debug line = 655:3@308:10]
  %wd2 = zext i12 %wd to i15, !dbg !692           ; [#uses=1 type=i15] [debug line = 655:3@308:10]
  %tmp.81.i = shl nuw i15 %wd2, 3, !dbg !692      ; [#uses=1 type=i15] [debug line = 655:3@308:10]
  %tmp.81.i.cast = zext i15 %tmp.81.i to i32, !dbg !692 ; [#uses=1 type=i32] [debug line = 655:3@308:10]
  store i32 %tmp.81.i.cast, i32* @detl, align 4, !dbg !684 ; [debug line = 308:10]
  %tmp.17 = add nsw i32 %tmp.63.i, %tmp.16, !dbg !693 ; [#uses=1 type=i32] [debug line = 311:3]
  store i32 %tmp.17, i32* @plt, align 4, !dbg !693 ; [debug line = 311:3]
  call fastcc void @upzero(i32 %tmp.16, [6 x i32]* @delay_dltx, [6 x i32]* @delay_bpl) nounwind, !dbg !694 ; [debug line = 317:3]
  %al1.assign.1 = load i32* @al1, align 4, !dbg !695 ; [#uses=3 type=i32] [debug line = 321:9]
  %al2.assign.1 = load i32* @al2, align 4, !dbg !695 ; [#uses=2 type=i32] [debug line = 321:9]
  %plt.assign = load i32* @plt, align 4, !dbg !695 ; [#uses=2 type=i32] [debug line = 321:9]
  %plt1.assign = load i32* @plt1, align 4, !dbg !695 ; [#uses=2 type=i32] [debug line = 321:9]
  %plt2.assign = load i32* @plt2, align 4, !dbg !695 ; [#uses=1 type=i32] [debug line = 321:9]
  call void @llvm.dbg.value(metadata !{i32 %al1.assign.1}, i64 0, metadata !696), !dbg !700 ; [debug line = 698:13@321:9] [debug variable = al1]
  call void @llvm.dbg.value(metadata !{i32 %al2.assign.1}, i64 0, metadata !701), !dbg !702 ; [debug line = 698:22@321:9] [debug variable = al2]
  call void @llvm.dbg.value(metadata !{i32 %plt.assign}, i64 0, metadata !703), !dbg !704 ; [debug line = 698:31@321:9] [debug variable = plt]
  call void @llvm.dbg.value(metadata !{i32 %plt1.assign}, i64 0, metadata !705), !dbg !706 ; [debug line = 698:40@321:9] [debug variable = plt1]
  call void @llvm.dbg.value(metadata !{i32 %plt2.assign}, i64 0, metadata !707), !dbg !708 ; [debug line = 698:50@321:9] [debug variable = plt2]
  %tmp.i4.cast = zext i32 %al1.assign.1 to i40, !dbg !709 ; [#uses=1 type=i40] [debug line = 702:3@321:9]
  %tmp.i4.cast1 = sext i32 %al1.assign.1 to i41, !dbg !709 ; [#uses=1 type=i41] [debug line = 702:3@321:9]
  %tmp.i4.cast2 = zext i32 %al1.assign.1 to i34, !dbg !709 ; [#uses=1 type=i34] [debug line = 702:3@321:9]
  %wd2.1 = shl nuw i34 %tmp.i4.cast2, 2, !dbg !709 ; [#uses=1 type=i34] [debug line = 702:3@321:9]
  %wd2.1.cast = sext i34 %wd2.1 to i35, !dbg !709 ; [#uses=2 type=i35] [debug line = 702:3@321:9]
  call void @llvm.dbg.value(metadata !{i34 %wd2.1}, i64 0, metadata !711), !dbg !709 ; [debug line = 702:3@321:9] [debug variable = wd2]
  %tmp..i5 = sext i32 %plt.assign to i64, !dbg !712 ; [#uses=2 type=i64] [debug line = 703:3@321:9]
  %tmp.82.i = sext i32 %plt1.assign to i64, !dbg !712 ; [#uses=1 type=i64] [debug line = 703:3@321:9]
  %tmp.83.i = mul nsw i64 %tmp..i5, %tmp.82.i, !dbg !712 ; [#uses=1 type=i64] [debug line = 703:3@321:9]
  %tmp.84.i = icmp sgt i64 %tmp.83.i, -1, !dbg !712 ; [#uses=2 type=i1] [debug line = 703:3@321:9]
  %wd2.2 = sub i35 0, %wd2.1.cast, !dbg !713      ; [#uses=1 type=i35] [debug line = 704:5@321:9]
  call void @llvm.dbg.value(metadata !{i35 %wd2.2}, i64 0, metadata !711), !dbg !713 ; [debug line = 704:5@321:9] [debug variable = wd2]
  %wd2.3 = select i1 %tmp.84.i, i35 %wd2.2, i35 %wd2.1.cast, !dbg !712 ; [#uses=1 type=i35] [debug line = 703:3@321:9]
  call void @llvm.dbg.value(metadata !{i35 %wd2.3}, i64 0, metadata !711), !dbg !712 ; [debug line = 703:3@321:9] [debug variable = wd2]
  %tmp.18 = lshr i35 %wd2.3, 7, !dbg !714         ; [#uses=1 type=i35] [debug line = 705:3@321:9]
  %tmp.19 = trunc i35 %tmp.18 to i28, !dbg !714   ; [#uses=1 type=i28] [debug line = 705:3@321:9]
  %tmp.85.i.cast = sext i28 %tmp.19 to i32, !dbg !715 ; [#uses=1 type=i32] [debug line = 714:3@321:9]
  %tmp.86.i = sext i32 %plt2.assign to i64, !dbg !716 ; [#uses=1 type=i64] [debug line = 706:3@321:9]
  %tmp.87.i = mul nsw i64 %tmp..i5, %tmp.86.i, !dbg !716 ; [#uses=1 type=i64] [debug line = 706:3@321:9]
  %tmp.56.i = lshr i64 %tmp.87.i, 63, !dbg !716   ; [#uses=1 type=i64] [debug line = 706:3@321:9]
  %tmp.57.i = trunc i64 %tmp.56.i to i1, !dbg !716 ; [#uses=1 type=i1] [debug line = 706:3@321:9]
  %tmp.88.i.cast = select i1 %tmp.57.i, i32 -128, i32 128, !dbg !715 ; [#uses=1 type=i32] [debug line = 714:3@321:9]
  %tmp.89.i.cast = sext i32 %al2.assign.1 to i40, !dbg !715 ; [#uses=1 type=i40] [debug line = 714:3@321:9]
  %tmp.89.i.cast1 = zext i32 %al2.assign.1 to i39, !dbg !715 ; [#uses=1 type=i39] [debug line = 714:3@321:9]
  %_shl.i1 = shl nuw i39 %tmp.89.i.cast1, 7, !dbg !715 ; [#uses=1 type=i39] [debug line = 714:3@321:9]
  %_shl.i1.cast = zext i39 %_shl.i1 to i40, !dbg !715 ; [#uses=1 type=i40] [debug line = 714:3@321:9]
  %tmp.90.i = sub i40 %_shl.i1.cast, %tmp.89.i.cast, !dbg !715 ; [#uses=1 type=i40] [debug line = 714:3@321:9]
  %tmp.91.i = lshr i40 %tmp.90.i, 7, !dbg !715    ; [#uses=1 type=i40] [debug line = 714:3@321:9]
  %tmp.91.i.cast.cast = trunc i40 %tmp.91.i to i32, !dbg !715 ; [#uses=1 type=i32] [debug line = 714:3@321:9]
  %tmp4 = add i32 %tmp.85.i.cast, %tmp.88.i.cast, !dbg !715 ; [#uses=1 type=i32] [debug line = 714:3@321:9]
  %apl2 = add i32 %tmp4, %tmp.91.i.cast.cast, !dbg !715 ; [#uses=2 type=i32] [debug line = 714:3@321:9]
  call void @llvm.dbg.value(metadata !{i32 %apl2}, i64 0, metadata !717), !dbg !715 ; [debug line = 714:3@321:9] [debug variable = apl2]
  %tmp.93.i = icmp sgt i32 %apl2, 12288, !dbg !718 ; [#uses=1 type=i1] [debug line = 717:3@321:9]
  %..i1 = select i1 %tmp.93.i, i32 12288, i32 %apl2, !dbg !718 ; [#uses=2 type=i32] [debug line = 717:3@321:9]
  %..i1.cast = trunc i32 %..i1 to i15, !dbg !719  ; [#uses=1 type=i15] [debug line = 719:3@321:9]
  %tmp.94.i = icmp slt i32 %..i1, -12288, !dbg !719 ; [#uses=1 type=i1] [debug line = 719:3@321:9]
  %apl2.assign = select i1 %tmp.94.i, i15 -12288, i15 %..i1.cast, !dbg !719 ; [#uses=2 type=i15] [debug line = 719:3@321:9]
  %apl2.assign.cast = sext i15 %apl2.assign to i32, !dbg !719 ; [#uses=1 type=i32] [debug line = 719:3@321:9]
  store i32 %apl2.assign.cast, i32* @al2, align 4, !dbg !695 ; [debug line = 321:9]
  call void @llvm.dbg.value(metadata !{i32 %al1.assign.1}, i64 0, metadata !720), !dbg !723 ; [debug line = 728:13@325:9] [debug variable = al1]
  call void @llvm.dbg.value(metadata !{i15 %apl2.assign}, i64 0, metadata !724), !dbg !725 ; [debug line = 728:22@325:9] [debug variable = apl2]
  call void @llvm.dbg.value(metadata !{i32 %plt.assign}, i64 0, metadata !726), !dbg !727 ; [debug line = 728:32@325:9] [debug variable = plt]
  call void @llvm.dbg.value(metadata !{i32 %plt1.assign}, i64 0, metadata !728), !dbg !729 ; [debug line = 728:41@325:9] [debug variable = plt1]
  %_shl.i2 = shl nuw i40 %tmp.i4.cast, 8, !dbg !730 ; [#uses=1 type=i40] [debug line = 732:3@325:9]
  %_shl.i2.cast = zext i40 %_shl.i2 to i41, !dbg !730 ; [#uses=1 type=i41] [debug line = 732:3@325:9]
  %tmp..i6 = sub i41 %_shl.i2.cast, %tmp.i4.cast1, !dbg !730 ; [#uses=1 type=i41] [debug line = 732:3@325:9]
  %tmp.58.i = lshr i41 %tmp..i6, 8, !dbg !730     ; [#uses=1 type=i41] [debug line = 732:3@325:9]
  %tmp.99.i = trunc i41 %tmp.58.i to i32, !dbg !732 ; [#uses=1 type=i32] [debug line = 735:7@325:9]
  %apl.i.v.cast = select i1 %tmp.84.i, i32 192, i32 -192 ; [#uses=1 type=i32]
  %apl1 = add i32 %tmp.99.i, %apl.i.v.cast        ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %apl1}, i64 0, metadata !734), !dbg !735 ; [debug line = 739:7@325:9] [debug variable = apl1]
  %apl1.8 = sub i15 15360, %apl2.assign, !dbg !737 ; [#uses=2 type=i15] [debug line = 742:3@325:9]
  %apl1.10.cast1 = zext i15 %apl1.8 to i16, !dbg !737 ; [#uses=1 type=i16] [debug line = 742:3@325:9]
  %apl1.10.cast = zext i15 %apl1.8 to i32, !dbg !737 ; [#uses=2 type=i32] [debug line = 742:3@325:9]
  call void @llvm.dbg.value(metadata !{i15 %apl1.8}, i64 0, metadata !734), !dbg !738 ; [debug line = 744:5@325:9] [debug variable = apl1]
  call void @llvm.dbg.value(metadata !{i15 %apl1.8}, i64 0, metadata !739), !dbg !737 ; [debug line = 742:3@325:9] [debug variable = wd3]
  %tmp.101.i = icmp sgt i32 %apl1, %apl1.10.cast, !dbg !740 ; [#uses=1 type=i1] [debug line = 743:3@325:9]
  %wd3.0.apl1.i = select i1 %tmp.101.i, i32 %apl1.10.cast, i32 %apl1, !dbg !740 ; [#uses=2 type=i32] [debug line = 743:3@325:9]
  %wd3.0.apl1.i.cast = trunc i32 %wd3.0.apl1.i to i16, !dbg !741 ; [#uses=1 type=i16] [debug line = 745:3@325:9]
  %apl1.2 = sub i16 0, %apl1.10.cast1, !dbg !741  ; [#uses=2 type=i16] [debug line = 745:3@325:9]
  %apl1.3.cast = sext i16 %apl1.2 to i32, !dbg !741 ; [#uses=1 type=i32] [debug line = 745:3@325:9]
  %tmp.102.i = icmp slt i32 %wd3.0.apl1.i, %apl1.3.cast, !dbg !741 ; [#uses=1 type=i1] [debug line = 745:3@325:9]
  call void @llvm.dbg.value(metadata !{i16 %apl1.2}, i64 0, metadata !734), !dbg !742 ; [debug line = 746:5@325:9] [debug variable = apl1]
  %apl1.3 = select i1 %tmp.102.i, i16 %apl1.2, i16 %wd3.0.apl1.i.cast, !dbg !741 ; [#uses=1 type=i16] [debug line = 745:3@325:9]
  %apl1.4.cast = sext i16 %apl1.3 to i32, !dbg !741 ; [#uses=1 type=i32] [debug line = 745:3@325:9]
  call void @llvm.dbg.value(metadata !{i16 %apl1.3}, i64 0, metadata !734), !dbg !741 ; [debug line = 745:3@325:9] [debug variable = apl1]
  store i32 %apl1.4.cast, i32* @al1, align 4, !dbg !722 ; [debug line = 325:9]
  %sl.load = load i32* @sl, align 4, !dbg !743    ; [#uses=1 type=i32] [debug line = 328:3]
  %dlt.load = load i32* @dlt, align 4, !dbg !743  ; [#uses=1 type=i32] [debug line = 328:3]
  %tmp.20 = add nsw i32 %sl.load, %dlt.load, !dbg !743 ; [#uses=2 type=i32] [debug line = 328:3]
  store i32 %tmp.20, i32* @rlt, align 4, !dbg !743 ; [debug line = 328:3]
  %rlt1.load = load i32* @rlt1, align 4, !dbg !744 ; [#uses=1 type=i32] [debug line = 331:3]
  store i32 %rlt1.load, i32* @rlt2, align 4, !dbg !744 ; [debug line = 331:3]
  store i32 %tmp.20, i32* @rlt1, align 4, !dbg !745 ; [debug line = 332:3]
  store i32 %plt1.assign, i32* @plt2, align 4, !dbg !746 ; [debug line = 333:3]
  store i32 %plt.assign, i32* @plt1, align 4, !dbg !747 ; [debug line = 334:3]
  %delay_bph.load = load i32* getelementptr inbounds ([6 x i32]* @delay_bph, i64 0, i64 0), align 16, !dbg !748 ; [#uses=1 type=i32] [debug line = 585:3@338:9]
  %tmp.i6 = sext i32 %delay_bph.load to i64, !dbg !748 ; [#uses=1 type=i64] [debug line = 585:3@338:9]
  %delay_dhx.load = load i32* getelementptr inbounds ([6 x i32]* @delay_dhx, i64 0, i64 0), align 16, !dbg !748 ; [#uses=1 type=i32] [debug line = 585:3@338:9]
  %tmp..i7 = sext i32 %delay_dhx.load to i64, !dbg !748 ; [#uses=1 type=i64] [debug line = 585:3@338:9]
  %zl.2 = mul nsw i64 %tmp..i7, %tmp.i6, !dbg !748 ; [#uses=1 type=i64] [debug line = 585:3@338:9]
  call void @llvm.dbg.value(metadata !{i64 %zl.2}, i64 0, metadata !750) nounwind, !dbg !748 ; [debug line = 585:3@338:9] [debug variable = zl]
  br label %16, !dbg !751                         ; [debug line = 586:8@338:9]

; <label>:16                                      ; preds = %18, %.loopexit.i_ifconv
  %zl1.i1 = phi i64 [ %zl.2, %.loopexit.i_ifconv ], [ %zl.3, %18 ] ; [#uses=2 type=i64]
  %dlt.pn.rec.i1 = phi i3 [ 0, %.loopexit.i_ifconv ], [ %.01.rec.i1, %18 ] ; [#uses=2 type=i3]
  %zl1.i1.cast = trunc i64 %zl1.i1 to i46, !dbg !748 ; [#uses=1 type=i46] [debug line = 585:3@338:9]
  %.01.rec.i1 = add i3 %dlt.pn.rec.i1, 1, !dbg !748 ; [#uses=2 type=i3] [debug line = 585:3@338:9]
  %.01.rec.i1.cast = zext i3 %.01.rec.i1 to i64, !dbg !748 ; [#uses=2 type=i64] [debug line = 585:3@338:9]
  %dlt.assign.1 = getelementptr [6 x i32]* @delay_dhx, i64 0, i64 %.01.rec.i1.cast, !dbg !748 ; [#uses=1 type=i32*] [debug line = 585:3@338:9]
  call void @llvm.dbg.value(metadata !{i32* %dlt.assign.1}, i64 0, metadata !752) nounwind, !dbg !748 ; [debug line = 585:3@338:9] [debug variable = dlt]
  %bpl.assign.1 = getelementptr [6 x i32]* @delay_bph, i64 0, i64 %.01.rec.i1.cast, !dbg !748 ; [#uses=1 type=i32*] [debug line = 585:3@338:9]
  call void @llvm.dbg.value(metadata !{i32* %bpl.assign.1}, i64 0, metadata !753) nounwind, !dbg !748 ; [debug line = 585:3@338:9] [debug variable = bpl]
  %17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind ; [#uses=0 type=i32]
  %exitcond1 = icmp eq i3 %dlt.pn.rec.i1, -3, !dbg !751 ; [#uses=1 type=i1] [debug line = 586:8@338:9]
  br i1 %exitcond1, label %filtez.exit52, label %18, !dbg !751 ; [debug line = 586:8@338:9]

; <label>:18                                      ; preds = %16
  %bpl.assign.1.load = load i32* %bpl.assign.1, align 4, !dbg !754 ; [#uses=1 type=i32] [debug line = 587:5@338:9]
  %tmp.64.i3 = sext i32 %bpl.assign.1.load to i64, !dbg !754 ; [#uses=1 type=i64] [debug line = 587:5@338:9]
  %dlt.assign.1.load = load i32* %dlt.assign.1, align 4, !dbg !754 ; [#uses=1 type=i32] [debug line = 587:5@338:9]
  %tmp.65.i3 = sext i32 %dlt.assign.1.load to i64, !dbg !754 ; [#uses=1 type=i64] [debug line = 587:5@338:9]
  %tmp.66.i3 = mul nsw i64 %tmp.64.i3, %tmp.65.i3, !dbg !754 ; [#uses=1 type=i64] [debug line = 587:5@338:9]
  %zl.3 = add nsw i64 %zl1.i1, %tmp.66.i3, !dbg !754 ; [#uses=1 type=i64] [debug line = 587:5@338:9]
  call void @llvm.dbg.value(metadata !{i64 %zl.3}, i64 0, metadata !750) nounwind, !dbg !754 ; [debug line = 587:5@338:9] [debug variable = zl]
  br label %16, !dbg !755                         ; [debug line = 586:22@338:9]

filtez.exit52:                                    ; preds = %16
  %zl1.i1.cast.lcssa = phi i46 [ %zl1.i1.cast, %16 ] ; [#uses=1 type=i46]
  %tmp.62.i2 = lshr i46 %zl1.i1.cast.lcssa, 14, !dbg !756 ; [#uses=1 type=i46] [debug line = 589:3@338:9]
  %tmp.63.i2 = trunc i46 %tmp.62.i2 to i32, !dbg !756 ; [#uses=3 type=i32] [debug line = 589:3@338:9]
  store i32 %tmp.63.i2, i32* @szh, align 4, !dbg !749 ; [debug line = 338:9]
  %rlt1.assign.1 = load i32* @rh1, align 4, !dbg !757 ; [#uses=1 type=i32] [debug line = 340:9]
  %al1.assign.2 = load i32* @ah1, align 4, !dbg !757 ; [#uses=1 type=i32] [debug line = 340:9]
  %rlt2.assign.1 = load i32* @rh2, align 4, !dbg !757 ; [#uses=1 type=i32] [debug line = 340:9]
  %al2.assign.2 = load i32* @ah2, align 4, !dbg !757 ; [#uses=1 type=i32] [debug line = 340:9]
  call void @llvm.dbg.value(metadata !{i32 %rlt1.assign.1}, i64 0, metadata !758), !dbg !759 ; [debug line = 596:13@340:9] [debug variable = rlt1]
  call void @llvm.dbg.value(metadata !{i32 %al1.assign.2}, i64 0, metadata !760), !dbg !761 ; [debug line = 596:23@340:9] [debug variable = al1]
  call void @llvm.dbg.value(metadata !{i32 %rlt2.assign.1}, i64 0, metadata !762), !dbg !763 ; [debug line = 596:32@340:9] [debug variable = rlt2]
  call void @llvm.dbg.value(metadata !{i32 %al2.assign.2}, i64 0, metadata !764), !dbg !765 ; [debug line = 596:42@340:9] [debug variable = al2]
  %tmp.i7 = shl nsw i32 %rlt1.assign.1, 1, !dbg !766 ; [#uses=1 type=i32] [debug line = 599:3@340:9]
  %pl.3 = sext i32 %tmp.i7 to i64, !dbg !766      ; [#uses=1 type=i64] [debug line = 599:3@340:9]
  call void @llvm.dbg.value(metadata !{i64 %pl.3}, i64 0, metadata !767), !dbg !766 ; [debug line = 599:3@340:9] [debug variable = pl]
  %tmp..i8 = sext i32 %al1.assign.2 to i64, !dbg !768 ; [#uses=1 type=i64] [debug line = 600:3@340:9]
  %pl.4 = mul nsw i64 %tmp..i8, %pl.3, !dbg !768  ; [#uses=1 type=i64] [debug line = 600:3@340:9]
  call void @llvm.dbg.value(metadata !{i64 %pl.4}, i64 0, metadata !767), !dbg !768 ; [debug line = 600:3@340:9] [debug variable = pl]
  %tmp.62.i3 = shl nsw i32 %rlt2.assign.1, 1, !dbg !769 ; [#uses=1 type=i32] [debug line = 601:3@340:9]
  %pl2.1 = sext i32 %tmp.62.i3 to i64, !dbg !769  ; [#uses=1 type=i64] [debug line = 601:3@340:9]
  call void @llvm.dbg.value(metadata !{i64 %pl2.1}, i64 0, metadata !770), !dbg !769 ; [debug line = 601:3@340:9] [debug variable = pl2]
  %tmp.63.i3 = sext i32 %al2.assign.2 to i64, !dbg !771 ; [#uses=1 type=i64] [debug line = 602:3@340:9]
  %tmp.64.i2 = mul nsw i64 %tmp.63.i3, %pl2.1, !dbg !771 ; [#uses=1 type=i64] [debug line = 602:3@340:9]
  %pl.5 = add nsw i64 %tmp.64.i2, %pl.4, !dbg !771 ; [#uses=1 type=i64] [debug line = 602:3@340:9]
  call void @llvm.dbg.value(metadata !{i64 %pl.5}, i64 0, metadata !767), !dbg !771 ; [debug line = 602:3@340:9] [debug variable = pl]
  %tmp.65.i2 = lshr i64 %pl.5, 15, !dbg !772      ; [#uses=1 type=i64] [debug line = 603:3@340:9]
  %tmp.66.i2 = trunc i64 %tmp.65.i2 to i32, !dbg !772 ; [#uses=2 type=i32] [debug line = 603:3@340:9]
  store i32 %tmp.66.i2, i32* @sph, align 4, !dbg !757 ; [debug line = 340:9]
  %tmp.21 = add nsw i32 %tmp.66.i2, %tmp.63.i2, !dbg !773 ; [#uses=2 type=i32] [debug line = 343:3]
  store i32 %tmp.21, i32* @sh, align 4, !dbg !773 ; [debug line = 343:3]
  %xh.load = load i32* @xh, align 4, !dbg !774    ; [#uses=1 type=i32] [debug line = 345:3]
  %n.assign.2 = sub nsw i32 %xh.load, %tmp.21, !dbg !774 ; [#uses=5 type=i32] [debug line = 345:3]
  store i32 %n.assign.2, i32* @eh, align 4, !dbg !774 ; [debug line = 345:3]
  %tmp.22 = lshr i32 %n.assign.2, 31, !dbg !775   ; [#uses=1 type=i32] [debug line = 349:3]
  %tmp.23 = trunc i32 %tmp.22 to i1, !dbg !775    ; [#uses=4 type=i1] [debug line = 349:3]
  %tmp.24 = select i1 %tmp.23, i2 1, i2 -1        ; [#uses=1 type=i2]
  %tmp.33.cast = select i1 %tmp.23, i32 1, i32 3  ; [#uses=1 type=i32]
  store i32 %tmp.33.cast, i32* @ih, align 4, !dbg !776 ; [debug line = 351:7]
  %deth.load = load i32* @deth, align 4, !dbg !778 ; [#uses=2 type=i32] [debug line = 357:3]
  %tmp.34.cast1 = sext i32 %deth.load to i47, !dbg !778 ; [#uses=1 type=i47] [debug line = 357:3]
  %tmp.34.cast = sext i32 %deth.load to i42, !dbg !778 ; [#uses=1 type=i42] [debug line = 357:3]
  %tmp.25 = mul i42 %tmp.34.cast, 564, !dbg !778  ; [#uses=1 type=i42] [debug line = 357:3]
  %tmp.26 = lshr i42 %tmp.25, 12, !dbg !778       ; [#uses=1 type=i42] [debug line = 357:3]
  %tmp.27 = trunc i42 %tmp.26 to i30, !dbg !778   ; [#uses=1 type=i30] [debug line = 357:3]
  %decis = sext i30 %tmp.27 to i32, !dbg !778     ; [#uses=1 type=i32] [debug line = 357:3]
  call void @llvm.dbg.value(metadata !{i32 %decis}, i64 0, metadata !779), !dbg !778 ; [debug line = 357:3] [debug variable = decis]
  call void @llvm.dbg.value(metadata !{i32 %n.assign.2}, i64 0, metadata !780), !dbg !782 ; [debug line = 236:10@358:7] [debug variable = n]
  %tmp.i8 = icmp sgt i32 %n.assign.2, -1, !dbg !783 ; [#uses=1 type=i1] [debug line = 240:3@358:7]
  %m.1 = sub nsw i32 0, %n.assign.2, !dbg !784    ; [#uses=1 type=i32] [debug line = 243:5@358:7]
  call void @llvm.dbg.value(metadata !{i32 %m.1}, i64 0, metadata !785), !dbg !784 ; [debug line = 243:5@358:7] [debug variable = m]
  %n.assign.3 = select i1 %tmp.i8, i32 %n.assign.2, i32 %m.1, !dbg !783 ; [#uses=1 type=i32] [debug line = 240:3@358:7]
  call void @llvm.dbg.value(metadata !{i32 %n.assign.3}, i64 0, metadata !780), !dbg !783 ; [debug line = 240:3@358:7] [debug variable = n]
  %tmp.28 = icmp sgt i32 %n.assign.3, %decis, !dbg !781 ; [#uses=1 type=i1] [debug line = 358:7]
  br i1 %tmp.28, label %19, label %._crit_edge_ifconv, !dbg !781 ; [debug line = 358:7]

; <label>:19                                      ; preds = %filtez.exit52
  %tmp.29 = select i1 %tmp.23, i2 0, i2 -2        ; [#uses=1 type=i2]
  %tmp.38.cast = select i1 %tmp.23, i32 0, i32 2  ; [#uses=1 type=i32]
  store i32 %tmp.38.cast, i32* @ih, align 4, !dbg !786 ; [debug line = 359:5]
  br label %._crit_edge_ifconv, !dbg !786         ; [debug line = 359:5]

._crit_edge_ifconv:                               ; preds = %19, %filtez.exit52
  %ih.assign = phi i2 [ %tmp.29, %19 ], [ %tmp.24, %filtez.exit52 ] ; [#uses=2 type=i2]
  %tmp.30 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 -7408, i32 -1616, i32 7408, i32 1616, i2 %ih.assign) nounwind ; [#uses=1 type=i32]
  %tmp.40.cast = sext i32 %tmp.30 to i47, !dbg !787 ; [#uses=1 type=i47] [debug line = 362:3]
  %tmp.31 = mul i47 %tmp.34.cast1, %tmp.40.cast, !dbg !787 ; [#uses=1 type=i47] [debug line = 362:3]
  %tmp.32 = lshr i47 %tmp.31, 15, !dbg !787       ; [#uses=1 type=i47] [debug line = 362:3]
  %tmp.33 = trunc i47 %tmp.32 to i32, !dbg !787   ; [#uses=3 type=i32] [debug line = 362:3]
  store i32 %tmp.33, i32* @dh, align 4, !dbg !787 ; [debug line = 362:3]
  %nbh.assign = load i32* @nbh, align 4, !dbg !788 ; [#uses=2 type=i32] [debug line = 365:9]
  call void @llvm.dbg.value(metadata !{i2 %ih.assign}, i64 0, metadata !789) nounwind, !dbg !791 ; [debug line = 754:13@365:9] [debug variable = ih]
  call void @llvm.dbg.value(metadata !{i32 %nbh.assign}, i64 0, metadata !792) nounwind, !dbg !793 ; [debug line = 754:21@365:9] [debug variable = nbh]
  %tmp.i9.cast = sext i32 %nbh.assign to i40, !dbg !794 ; [#uses=1 type=i40] [debug line = 757:3@365:9]
  %tmp.i9.cast1 = zext i32 %nbh.assign to i39, !dbg !794 ; [#uses=1 type=i39] [debug line = 757:3@365:9]
  %_shl.i3 = shl nuw i39 %tmp.i9.cast1, 7, !dbg !794 ; [#uses=1 type=i39] [debug line = 757:3@365:9]
  %_shl.i3.cast = zext i39 %_shl.i3 to i40, !dbg !794 ; [#uses=1 type=i40] [debug line = 757:3@365:9]
  %tmp..i9 = sub i40 %_shl.i3.cast, %tmp.i9.cast, !dbg !794 ; [#uses=1 type=i40] [debug line = 757:3@365:9]
  %tmp.103.i = lshr i40 %tmp..i9, 7, !dbg !794    ; [#uses=1 type=i40] [debug line = 757:3@365:9]
  %wd.1 = trunc i40 %tmp.103.i to i32, !dbg !794  ; [#uses=1 type=i32] [debug line = 757:3@365:9]
  call void @llvm.dbg.value(metadata !{i32 %wd.1}, i64 0, metadata !796) nounwind, !dbg !794 ; [debug line = 757:3@365:9] [debug variable = wd]
  %tmp.34 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 798, i32 -214, i32 798, i32 -214, i2 %ih.assign) nounwind ; [#uses=1 type=i32]
  %nbh.assign.1 = add nsw i32 %tmp.34, %wd.1, !dbg !797 ; [#uses=2 type=i32] [debug line = 758:3@365:9]
  %nbh.assign.1.cast = trunc i32 %nbh.assign.1 to i31, !dbg !797 ; [#uses=1 type=i31] [debug line = 758:3@365:9]
  call void @llvm.dbg.value(metadata !{i32 %nbh.assign.1}, i64 0, metadata !792) nounwind, !dbg !797 ; [debug line = 758:3@365:9] [debug variable = nbh]
  %tmp.104.i = icmp slt i32 %nbh.assign.1, 0, !dbg !798 ; [#uses=1 type=i1] [debug line = 759:3@365:9]
  %..i2 = select i1 %tmp.104.i, i31 0, i31 %nbh.assign.1.cast, !dbg !798 ; [#uses=2 type=i31] [debug line = 759:3@365:9]
  %..i2.cast = trunc i31 %..i2 to i15, !dbg !798  ; [#uses=1 type=i15] [debug line = 759:3@365:9]
  %tmp.105.i = icmp ugt i31 %..i2, 22528, !dbg !799 ; [#uses=1 type=i1] [debug line = 761:3@365:9]
  %nbl.assign.3 = select i1 %tmp.105.i, i15 -10240, i15 %..i2.cast, !dbg !799 ; [#uses=3 type=i15] [debug line = 761:3@365:9]
  %nbl.assign.3.cast1 = trunc i15 %nbl.assign.3 to i11, !dbg !799 ; [#uses=1 type=i11] [debug line = 761:3@365:9]
  %nbl.assign.3.cast = zext i15 %nbl.assign.3 to i32, !dbg !799 ; [#uses=1 type=i32] [debug line = 761:3@365:9]
  store i32 %nbl.assign.3.cast, i32* @nbh, align 4, !dbg !788 ; [debug line = 365:9]
  call void @llvm.dbg.value(metadata !{i15 %nbl.assign.3}, i64 0, metadata !800) nounwind, !dbg !802 ; [debug line = 649:13@368:10] [debug variable = nbl]
  %tmp.i2 = lshr i11 %nbl.assign.3.cast1, 6, !dbg !803 ; [#uses=1 type=i11] [debug line = 652:3@368:10]
  %wd1.1 = trunc i11 %tmp.i2 to i5, !dbg !803     ; [#uses=1 type=i5] [debug line = 652:3@368:10]
  call void @llvm.dbg.value(metadata !{i5 %wd1.1}, i64 0, metadata !804) nounwind, !dbg !803 ; [debug line = 652:3@368:10] [debug variable = wd1]
  %tmp.54.i1 = lshr i15 %nbl.assign.3, 11, !dbg !805 ; [#uses=1 type=i15] [debug line = 653:3@368:10]
  %wd2.4.cast = trunc i15 %tmp.54.i1 to i4, !dbg !805 ; [#uses=1 type=i4] [debug line = 653:3@368:10]
  %tmp..i2 = zext i5 %wd1.1 to i64, !dbg !806     ; [#uses=1 type=i64] [debug line = 654:3@368:10]
  %ilb_table.addr.1 = getelementptr [32 x i12]* @ilb_table, i64 0, i64 %tmp..i2, !dbg !806 ; [#uses=1 type=i12*] [debug line = 654:3@368:10]
  %ilb_table.load.1 = load i12* %ilb_table.addr.1, align 2, !dbg !806 ; [#uses=1 type=i12] [debug line = 654:3@368:10]
  %ilb_table.load.1.cast = zext i12 %ilb_table.load.1 to i13, !dbg !806 ; [#uses=1 type=i13] [debug line = 654:3@368:10]
  %tmp.80.i1 = sub i4 -5, %wd2.4.cast, !dbg !806  ; [#uses=1 type=i4] [debug line = 654:3@368:10]
  %tmp.80.i1.cast = zext i4 %tmp.80.i1 to i13, !dbg !806 ; [#uses=1 type=i13] [debug line = 654:3@368:10]
  %wd3.2 = lshr i13 %ilb_table.load.1.cast, %tmp.80.i1.cast, !dbg !806 ; [#uses=1 type=i13] [debug line = 654:3@368:10]
  call void @llvm.dbg.value(metadata !{i13 %wd3.2}, i64 0, metadata !807) nounwind, !dbg !806 ; [debug line = 654:3@368:10] [debug variable = wd3]
  %wd3. = trunc i13 %wd3.2 to i12, !dbg !808      ; [#uses=1 type=i12] [debug line = 655:3@368:10]
  %wd3.3 = zext i12 %wd3. to i15, !dbg !808       ; [#uses=1 type=i15] [debug line = 655:3@368:10]
  %tmp.81.i1 = shl nuw i15 %wd3.3, 3, !dbg !808   ; [#uses=1 type=i15] [debug line = 655:3@368:10]
  %tmp.81.i1.cast = zext i15 %tmp.81.i1 to i32, !dbg !808 ; [#uses=1 type=i32] [debug line = 655:3@368:10]
  store i32 %tmp.81.i1.cast, i32* @deth, align 4, !dbg !801 ; [debug line = 368:10]
  %tmp.35 = add nsw i32 %tmp.33, %tmp.63.i2, !dbg !809 ; [#uses=1 type=i32] [debug line = 371:3]
  store i32 %tmp.35, i32* @ph, align 4, !dbg !809 ; [debug line = 371:3]
  call fastcc void @upzero(i32 %tmp.33, [6 x i32]* @delay_dhx, [6 x i32]* @delay_bph) nounwind, !dbg !810 ; [debug line = 376:3]
  %al1.assign.3 = load i32* @ah1, align 4, !dbg !811 ; [#uses=3 type=i32] [debug line = 380:9]
  %al2.assign.3 = load i32* @ah2, align 4, !dbg !811 ; [#uses=2 type=i32] [debug line = 380:9]
  %plt.assign.1 = load i32* @ph, align 4, !dbg !811 ; [#uses=2 type=i32] [debug line = 380:9]
  %plt1.assign.1 = load i32* @ph1, align 4, !dbg !811 ; [#uses=2 type=i32] [debug line = 380:9]
  %plt2.assign.1 = load i32* @ph2, align 4, !dbg !811 ; [#uses=1 type=i32] [debug line = 380:9]
  call void @llvm.dbg.value(metadata !{i32 %al1.assign.3}, i64 0, metadata !812), !dbg !813 ; [debug line = 698:13@380:9] [debug variable = al1]
  call void @llvm.dbg.value(metadata !{i32 %al2.assign.3}, i64 0, metadata !814), !dbg !815 ; [debug line = 698:22@380:9] [debug variable = al2]
  call void @llvm.dbg.value(metadata !{i32 %plt.assign.1}, i64 0, metadata !816), !dbg !817 ; [debug line = 698:31@380:9] [debug variable = plt]
  call void @llvm.dbg.value(metadata !{i32 %plt1.assign.1}, i64 0, metadata !818), !dbg !819 ; [debug line = 698:40@380:9] [debug variable = plt1]
  call void @llvm.dbg.value(metadata !{i32 %plt2.assign.1}, i64 0, metadata !820), !dbg !821 ; [debug line = 698:50@380:9] [debug variable = plt2]
  %tmp.i11.cast = zext i32 %al1.assign.3 to i40, !dbg !822 ; [#uses=1 type=i40] [debug line = 702:3@380:9]
  %tmp.i11.cast8 = sext i32 %al1.assign.3 to i41, !dbg !822 ; [#uses=1 type=i41] [debug line = 702:3@380:9]
  %tmp.i11.cast1 = zext i32 %al1.assign.3 to i34, !dbg !822 ; [#uses=1 type=i34] [debug line = 702:3@380:9]
  %wd2.4 = shl nuw i34 %tmp.i11.cast1, 2, !dbg !822 ; [#uses=1 type=i34] [debug line = 702:3@380:9]
  %wd2.5.cast = sext i34 %wd2.4 to i35, !dbg !822 ; [#uses=2 type=i35] [debug line = 702:3@380:9]
  call void @llvm.dbg.value(metadata !{i34 %wd2.4}, i64 0, metadata !823), !dbg !822 ; [debug line = 702:3@380:9] [debug variable = wd2]
  %tmp..i10 = sext i32 %plt.assign.1 to i64, !dbg !824 ; [#uses=2 type=i64] [debug line = 703:3@380:9]
  %tmp.82.i1 = sext i32 %plt1.assign.1 to i64, !dbg !824 ; [#uses=1 type=i64] [debug line = 703:3@380:9]
  %tmp.83.i1 = mul nsw i64 %tmp..i10, %tmp.82.i1, !dbg !824 ; [#uses=1 type=i64] [debug line = 703:3@380:9]
  %tmp.84.i1 = icmp sgt i64 %tmp.83.i1, -1, !dbg !824 ; [#uses=2 type=i1] [debug line = 703:3@380:9]
  %wd2.5 = sub i35 0, %wd2.5.cast, !dbg !825      ; [#uses=1 type=i35] [debug line = 704:5@380:9]
  call void @llvm.dbg.value(metadata !{i35 %wd2.5}, i64 0, metadata !823), !dbg !825 ; [debug line = 704:5@380:9] [debug variable = wd2]
  %wd2.6 = select i1 %tmp.84.i1, i35 %wd2.5, i35 %wd2.5.cast, !dbg !824 ; [#uses=1 type=i35] [debug line = 703:3@380:9]
  call void @llvm.dbg.value(metadata !{i35 %wd2.6}, i64 0, metadata !823), !dbg !824 ; [debug line = 703:3@380:9] [debug variable = wd2]
  %tmp.36 = lshr i35 %wd2.6, 7, !dbg !826         ; [#uses=1 type=i35] [debug line = 705:3@380:9]
  %tmp.37 = trunc i35 %tmp.36 to i28, !dbg !826   ; [#uses=1 type=i28] [debug line = 705:3@380:9]
  %tmp.85.i1.cast = sext i28 %tmp.37 to i32, !dbg !827 ; [#uses=1 type=i32] [debug line = 714:3@380:9]
  %tmp.86.i1 = sext i32 %plt2.assign.1 to i64, !dbg !828 ; [#uses=1 type=i64] [debug line = 706:3@380:9]
  %tmp.87.i1 = mul nsw i64 %tmp..i10, %tmp.86.i1, !dbg !828 ; [#uses=1 type=i64] [debug line = 706:3@380:9]
  %tmp.56.i1 = lshr i64 %tmp.87.i1, 63, !dbg !828 ; [#uses=1 type=i64] [debug line = 706:3@380:9]
  %tmp.57.i1 = trunc i64 %tmp.56.i1 to i1, !dbg !828 ; [#uses=1 type=i1] [debug line = 706:3@380:9]
  %tmp.88.i1.cast = select i1 %tmp.57.i1, i32 -128, i32 128, !dbg !827 ; [#uses=1 type=i32] [debug line = 714:3@380:9]
  %tmp.89.i1.cast7 = sext i32 %al2.assign.3 to i40, !dbg !827 ; [#uses=1 type=i40] [debug line = 714:3@380:9]
  %tmp.89.i1.cast = zext i32 %al2.assign.3 to i39, !dbg !827 ; [#uses=1 type=i39] [debug line = 714:3@380:9]
  %_shl.i4 = shl nuw i39 %tmp.89.i1.cast, 7, !dbg !827 ; [#uses=1 type=i39] [debug line = 714:3@380:9]
  %_shl.i4.cast = zext i39 %_shl.i4 to i40, !dbg !827 ; [#uses=1 type=i40] [debug line = 714:3@380:9]
  %tmp.90.i1 = sub i40 %_shl.i4.cast, %tmp.89.i1.cast7, !dbg !827 ; [#uses=1 type=i40] [debug line = 714:3@380:9]
  %tmp.91.i1 = lshr i40 %tmp.90.i1, 7, !dbg !827  ; [#uses=1 type=i40] [debug line = 714:3@380:9]
  %tmp.91.i1.cast.cast = trunc i40 %tmp.91.i1 to i32, !dbg !827 ; [#uses=1 type=i32] [debug line = 714:3@380:9]
  %tmp5 = add i32 %tmp.85.i1.cast, %tmp.88.i1.cast, !dbg !827 ; [#uses=1 type=i32] [debug line = 714:3@380:9]
  %apl2.1 = add i32 %tmp5, %tmp.91.i1.cast.cast, !dbg !827 ; [#uses=2 type=i32] [debug line = 714:3@380:9]
  call void @llvm.dbg.value(metadata !{i32 %apl2.1}, i64 0, metadata !829), !dbg !827 ; [debug line = 714:3@380:9] [debug variable = apl2]
  %tmp.93.i1 = icmp sgt i32 %apl2.1, 12288, !dbg !830 ; [#uses=1 type=i1] [debug line = 717:3@380:9]
  %..i3 = select i1 %tmp.93.i1, i32 12288, i32 %apl2.1, !dbg !830 ; [#uses=2 type=i32] [debug line = 717:3@380:9]
  %..i3.cast = trunc i32 %..i3 to i15, !dbg !831  ; [#uses=1 type=i15] [debug line = 719:3@380:9]
  %tmp.94.i1 = icmp slt i32 %..i3, -12288, !dbg !831 ; [#uses=1 type=i1] [debug line = 719:3@380:9]
  %apl2.assign.1 = select i1 %tmp.94.i1, i15 -12288, i15 %..i3.cast, !dbg !831 ; [#uses=2 type=i15] [debug line = 719:3@380:9]
  %apl2.assign.1.cast = sext i15 %apl2.assign.1 to i32, !dbg !831 ; [#uses=1 type=i32] [debug line = 719:3@380:9]
  store i32 %apl2.assign.1.cast, i32* @ah2, align 4, !dbg !811 ; [debug line = 380:9]
  call void @llvm.dbg.value(metadata !{i32 %al1.assign.3}, i64 0, metadata !832), !dbg !834 ; [debug line = 728:13@383:9] [debug variable = al1]
  call void @llvm.dbg.value(metadata !{i15 %apl2.assign.1}, i64 0, metadata !835), !dbg !836 ; [debug line = 728:22@383:9] [debug variable = apl2]
  call void @llvm.dbg.value(metadata !{i32 %plt.assign.1}, i64 0, metadata !837), !dbg !838 ; [debug line = 728:32@383:9] [debug variable = plt]
  call void @llvm.dbg.value(metadata !{i32 %plt1.assign.1}, i64 0, metadata !839), !dbg !840 ; [debug line = 728:41@383:9] [debug variable = plt1]
  %_shl.i5 = shl nuw i40 %tmp.i11.cast, 8, !dbg !841 ; [#uses=1 type=i40] [debug line = 732:3@383:9]
  %_shl.i5.cast = zext i40 %_shl.i5 to i41, !dbg !841 ; [#uses=1 type=i41] [debug line = 732:3@383:9]
  %tmp..i11 = sub i41 %_shl.i5.cast, %tmp.i11.cast8, !dbg !841 ; [#uses=1 type=i41] [debug line = 732:3@383:9]
  %tmp.58.i1 = lshr i41 %tmp..i11, 8, !dbg !841   ; [#uses=1 type=i41] [debug line = 732:3@383:9]
  %tmp.99.i1 = trunc i41 %tmp.58.i1 to i32, !dbg !842 ; [#uses=1 type=i32] [debug line = 735:7@383:9]
  %apl.i1.v.cast = select i1 %tmp.84.i1, i32 192, i32 -192 ; [#uses=1 type=i32]
  %apl1.4 = add i32 %tmp.99.i1, %apl.i1.v.cast    ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %apl1.4}, i64 0, metadata !843), !dbg !844 ; [debug line = 739:7@383:9] [debug variable = apl1]
  %apl1.9 = sub i15 15360, %apl2.assign.1, !dbg !845 ; [#uses=2 type=i15] [debug line = 742:3@383:9]
  %apl1.11.cast6 = zext i15 %apl1.9 to i16, !dbg !845 ; [#uses=1 type=i16] [debug line = 742:3@383:9]
  %apl1.11.cast = zext i15 %apl1.9 to i32, !dbg !845 ; [#uses=2 type=i32] [debug line = 742:3@383:9]
  call void @llvm.dbg.value(metadata !{i15 %apl1.9}, i64 0, metadata !843), !dbg !846 ; [debug line = 744:5@383:9] [debug variable = apl1]
  call void @llvm.dbg.value(metadata !{i15 %apl1.9}, i64 0, metadata !847), !dbg !845 ; [debug line = 742:3@383:9] [debug variable = wd3]
  %tmp.101.i1 = icmp sgt i32 %apl1.4, %apl1.11.cast, !dbg !848 ; [#uses=1 type=i1] [debug line = 743:3@383:9]
  %wd3.0.apl1.i1 = select i1 %tmp.101.i1, i32 %apl1.11.cast, i32 %apl1.4, !dbg !848 ; [#uses=2 type=i32] [debug line = 743:3@383:9]
  %wd3.0.apl1.i1.cast = trunc i32 %wd3.0.apl1.i1 to i16, !dbg !849 ; [#uses=1 type=i16] [debug line = 745:3@383:9]
  %apl1.6 = sub i16 0, %apl1.11.cast6, !dbg !849  ; [#uses=2 type=i16] [debug line = 745:3@383:9]
  %apl1.8.cast = sext i16 %apl1.6 to i32, !dbg !849 ; [#uses=1 type=i32] [debug line = 745:3@383:9]
  %tmp.102.i1 = icmp slt i32 %wd3.0.apl1.i1, %apl1.8.cast, !dbg !849 ; [#uses=1 type=i1] [debug line = 745:3@383:9]
  call void @llvm.dbg.value(metadata !{i16 %apl1.6}, i64 0, metadata !843), !dbg !850 ; [debug line = 746:5@383:9] [debug variable = apl1]
  %apl1.7 = select i1 %tmp.102.i1, i16 %apl1.6, i16 %wd3.0.apl1.i1.cast, !dbg !849 ; [#uses=1 type=i16] [debug line = 745:3@383:9]
  %apl1.9.cast = sext i16 %apl1.7 to i32, !dbg !849 ; [#uses=1 type=i32] [debug line = 745:3@383:9]
  call void @llvm.dbg.value(metadata !{i16 %apl1.7}, i64 0, metadata !843), !dbg !849 ; [debug line = 745:3@383:9] [debug variable = apl1]
  store i32 %apl1.9.cast, i32* @ah1, align 4, !dbg !833 ; [debug line = 383:9]
  %sh.load = load i32* @sh, align 4, !dbg !851    ; [#uses=1 type=i32] [debug line = 386:3]
  %dh.load = load i32* @dh, align 4, !dbg !851    ; [#uses=1 type=i32] [debug line = 386:3]
  %tmp.38 = add nsw i32 %dh.load, %sh.load, !dbg !851 ; [#uses=2 type=i32] [debug line = 386:3]
  store i32 %tmp.38, i32* @yh, align 4, !dbg !851 ; [debug line = 386:3]
  %rh1.load = load i32* @rh1, align 4, !dbg !852  ; [#uses=1 type=i32] [debug line = 389:3]
  store i32 %rh1.load, i32* @rh2, align 4, !dbg !852 ; [debug line = 389:3]
  store i32 %tmp.38, i32* @rh1, align 4, !dbg !853 ; [debug line = 390:3]
  store i32 %plt1.assign.1, i32* @ph2, align 4, !dbg !854 ; [debug line = 391:3]
  store i32 %plt.assign.1, i32* @ph1, align 4, !dbg !855 ; [debug line = 392:3]
  %il.load = load i32* @il, align 4, !dbg !856    ; [#uses=1 type=i32] [debug line = 395:3]
  %ih.load = load i32* @ih, align 4, !dbg !856    ; [#uses=1 type=i32] [debug line = 395:3]
  %tmp.39 = shl i32 %ih.load, 6, !dbg !856        ; [#uses=1 type=i32] [debug line = 395:3]
  %tmp.40 = or i32 %il.load, %tmp.39, !dbg !856   ; [#uses=1 type=i32] [debug line = 395:3]
  ret i32 %tmp.40, !dbg !856                      ; [debug line = 395:3]
}

; [#uses=105]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
define internal fastcc void @upzero(i32 %dlt, [6 x i32]* nocapture %dlti, [6 x i32]* nocapture %bli) {
  %dlti.addr = getelementptr [6 x i32]* %dlti, i64 0, i64 0 ; [#uses=2 type=i32*]
  call void @llvm.dbg.value(metadata !{i32 %dlt}, i64 0, metadata !857), !dbg !861 ; [debug line = 662:13] [debug variable = dlt]
  call void @llvm.dbg.value(metadata !{[6 x i32]* %dlti}, i64 0, metadata !862), !dbg !863 ; [debug line = 662:23] [debug variable = dlti]
  call void @llvm.dbg.value(metadata !{[6 x i32]* %bli}, i64 0, metadata !864), !dbg !865 ; [debug line = 662:34] [debug variable = bli]
  %tmp = icmp eq i32 %dlt, 0, !dbg !866           ; [#uses=1 type=i1] [debug line = 666:3]
  br i1 %tmp, label %.preheader2, label %.preheader.preheader, !dbg !866 ; [debug line = 666:3]

.preheader.preheader:                             ; preds = %0
  %tmp. = sext i32 %dlt to i64, !dbg !868         ; [#uses=1 type=i64] [debug line = 677:4]
  br label %.preheader, !dbg !872                 ; [debug line = 675:12]

.preheader2:                                      ; preds = %2, %0
  %i = phi i3 [ %i.4, %2 ], [ 0, %0 ]             ; [#uses=3 type=i3]
  %exitcond1 = icmp eq i3 %i, -2, !dbg !873       ; [#uses=1 type=i1] [debug line = 668:12]
  %1 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %.loopexit, label %2, !dbg !873 ; [debug line = 668:12]

; <label>:2                                       ; preds = %.preheader2
  %tmp.41 = zext i3 %i to i64, !dbg !876          ; [#uses=1 type=i64] [debug line = 670:4]
  %bli.addr = getelementptr [6 x i32]* %bli, i64 0, i64 %tmp.41, !dbg !876 ; [#uses=2 type=i32*] [debug line = 670:4]
  %bli.load = load i32* %bli.addr, align 4, !dbg !876 ; [#uses=1 type=i32] [debug line = 670:4]
  %tmp.49.cast = sext i32 %bli.load to i40, !dbg !876 ; [#uses=2 type=i40] [debug line = 670:4]
  %_shl = shl nsw i40 %tmp.49.cast, 8, !dbg !876  ; [#uses=1 type=i40] [debug line = 670:4]
  %tmp.42 = sub i40 %_shl, %tmp.49.cast, !dbg !876 ; [#uses=1 type=i40] [debug line = 670:4]
  %tmp.43 = lshr i40 %tmp.42, 8, !dbg !876        ; [#uses=1 type=i40] [debug line = 670:4]
  %tmp.44 = trunc i40 %tmp.43 to i32, !dbg !876   ; [#uses=1 type=i32] [debug line = 670:4]
  store i32 %tmp.44, i32* %bli.addr, align 4, !dbg !876 ; [debug line = 670:4]
  %i.4 = add i3 %i, 1, !dbg !878                  ; [#uses=1 type=i3] [debug line = 668:26]
  call void @llvm.dbg.value(metadata !{i3 %i.4}, i64 0, metadata !879), !dbg !878 ; [debug line = 668:26] [debug variable = i]
  br label %.preheader2, !dbg !878                ; [debug line = 668:26]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %i.1 = phi i3 [ %i.5, %4 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i3]
  %exitcond = icmp eq i3 %i.1, -2, !dbg !872      ; [#uses=1 type=i1] [debug line = 675:12]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) ; [#uses=0 type=i32]
  br i1 %exitcond, label %.loopexit, label %4, !dbg !872 ; [debug line = 675:12]

; <label>:4                                       ; preds = %.preheader
  %tmp.45 = zext i3 %i.1 to i64, !dbg !868        ; [#uses=2 type=i64] [debug line = 677:4]
  %dlti.addr.6 = getelementptr [6 x i32]* %dlti, i64 0, i64 %tmp.45, !dbg !868 ; [#uses=1 type=i32*] [debug line = 677:4]
  %dlti.load = load i32* %dlti.addr.6, align 4, !dbg !868 ; [#uses=1 type=i32] [debug line = 677:4]
  %tmp.46 = sext i32 %dlti.load to i64, !dbg !868 ; [#uses=1 type=i64] [debug line = 677:4]
  %tmp.47 = mul nsw i64 %tmp.46, %tmp., !dbg !868 ; [#uses=1 type=i64] [debug line = 677:4]
  %tmp.48 = icmp sgt i64 %tmp.47, -1, !dbg !868   ; [#uses=1 type=i1] [debug line = 677:4]
  %wd2.cast = select i1 %tmp.48, i32 128, i32 -128, !dbg !868 ; [#uses=1 type=i32] [debug line = 677:4]
  %bli.addr.1 = getelementptr [6 x i32]* %bli, i64 0, i64 %tmp.45, !dbg !880 ; [#uses=2 type=i32*] [debug line = 681:4]
  %bli.load.1 = load i32* %bli.addr.1, align 4, !dbg !880 ; [#uses=1 type=i32] [debug line = 681:4]
  %tmp.57.cast = sext i32 %bli.load.1 to i40, !dbg !880 ; [#uses=2 type=i40] [debug line = 681:4]
  %_shl1 = shl nsw i40 %tmp.57.cast, 8, !dbg !880 ; [#uses=1 type=i40] [debug line = 681:4]
  %tmp.49 = sub i40 %_shl1, %tmp.57.cast, !dbg !880 ; [#uses=1 type=i40] [debug line = 681:4]
  %tmp.50 = lshr i40 %tmp.49, 8, !dbg !880        ; [#uses=1 type=i40] [debug line = 681:4]
  %wd3 = trunc i40 %tmp.50 to i32, !dbg !880      ; [#uses=1 type=i32] [debug line = 681:4]
  call void @llvm.dbg.value(metadata !{i32 %wd3}, i64 0, metadata !881), !dbg !880 ; [debug line = 681:4] [debug variable = wd3]
  %tmp.51 = add nsw i32 %wd3, %wd2.cast, !dbg !882 ; [#uses=1 type=i32] [debug line = 682:4]
  store i32 %tmp.51, i32* %bli.addr.1, align 4, !dbg !882 ; [debug line = 682:4]
  %i.5 = add i3 %i.1, 1, !dbg !883                ; [#uses=1 type=i3] [debug line = 675:26]
  call void @llvm.dbg.value(metadata !{i3 %i.5}, i64 0, metadata !879), !dbg !883 ; [debug line = 675:26] [debug variable = i]
  br label %.preheader, !dbg !883                 ; [debug line = 675:26]

.loopexit:                                        ; preds = %.preheader, %.preheader2
  %dlti.addr.1 = getelementptr [6 x i32]* %dlti, i64 0, i64 4, !dbg !884 ; [#uses=2 type=i32*] [debug line = 686:3]
  %dlti.load.1 = load i32* %dlti.addr.1, align 4, !dbg !884 ; [#uses=1 type=i32] [debug line = 686:3]
  %dlti.addr.2 = getelementptr [6 x i32]* %dlti, i64 0, i64 5, !dbg !884 ; [#uses=1 type=i32*] [debug line = 686:3]
  store i32 %dlti.load.1, i32* %dlti.addr.2, align 4, !dbg !884 ; [debug line = 686:3]
  %dlti.addr.3 = getelementptr [6 x i32]* %dlti, i64 0, i64 3, !dbg !885 ; [#uses=2 type=i32*] [debug line = 687:3]
  %dlti.load.2 = load i32* %dlti.addr.3, align 4, !dbg !885 ; [#uses=1 type=i32] [debug line = 687:3]
  store i32 %dlti.load.2, i32* %dlti.addr.1, align 4, !dbg !885 ; [debug line = 687:3]
  %dlti.addr.4 = getelementptr [6 x i32]* %dlti, i64 0, i64 2, !dbg !886 ; [#uses=2 type=i32*] [debug line = 688:3]
  %dlti.load.3 = load i32* %dlti.addr.4, align 4, !dbg !886 ; [#uses=1 type=i32] [debug line = 688:3]
  store i32 %dlti.load.3, i32* %dlti.addr.3, align 4, !dbg !886 ; [debug line = 688:3]
  %dlti.addr.5 = getelementptr [6 x i32]* %dlti, i64 0, i64 1, !dbg !887 ; [#uses=2 type=i32*] [debug line = 689:3]
  %dlti.load.4 = load i32* %dlti.addr.5, align 4, !dbg !887 ; [#uses=1 type=i32] [debug line = 689:3]
  store i32 %dlti.load.4, i32* %dlti.addr.4, align 4, !dbg !887 ; [debug line = 689:3]
  %dlti.load.5 = load i32* %dlti.addr, align 4, !dbg !888 ; [#uses=1 type=i32] [debug line = 690:3]
  store i32 %dlti.load.5, i32* %dlti.addr.5, align 4, !dbg !888 ; [debug line = 690:3]
  store i32 %dlt, i32* %dlti.addr, align 4, !dbg !889 ; [debug line = 691:3]
  ret void, !dbg !890                             ; [debug line = 692:1]
}

; [#uses=7]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=2]
declare i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32, i32, i32, i32, i2)

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0, !7, !14, !19, !26, !31, !36, !41, !46, !51, !56, !61, !66, !71, !76, !81, !86, !91, !96, !101, !106, !111, !116, !121, !126, !131, !136, !141, !146, !151, !156, !161, !166, !171, !176, !181, !186, !191, !196, !201, !206, !211, !216, !221, !226, !231, !236, !241, !246, !251, !256, !261, !266, !271, !276, !281, !286, !291, !296, !301, !306, !311, !316, !321, !326, !331, !336, !341, !346, !351, !356, !361, !366, !371, !376, !381, !386, !393, !398, !403, !408, !415}
!llvm.dbg.cu = !{!420}

!0 = metadata !{metadata !1, [24 x i32]* @tqmf}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"tqmf", metadata !5, metadata !"int", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 23, i32 1}
!7 = metadata !{metadata !8, i32* @xl}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"xl", metadata !12, metadata !"int", i32 0, i32 31}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 0, i32 1}
!14 = metadata !{metadata !15, i32* @xh}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 31, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"xh", metadata !12, metadata !"int", i32 0, i32 31}
!19 = metadata !{metadata !20, [6 x i32]* @delay_bpl}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"delay_bpl", metadata !24, metadata !"int", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 5, i32 1}
!26 = metadata !{metadata !27, [6 x i32]* @delay_dltx}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"delay_dltx", metadata !24, metadata !"int", i32 0, i32 31}
!31 = metadata !{metadata !32, i32* @szl}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 31, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"szl", metadata !12, metadata !"int", i32 0, i32 31}
!36 = metadata !{metadata !37, i32* @rlt1}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 31, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"rlt1", metadata !12, metadata !"int", i32 0, i32 31}
!41 = metadata !{metadata !42, i32* @al1}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 31, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"al1", metadata !12, metadata !"int", i32 0, i32 31}
!46 = metadata !{metadata !47, i32* @rlt2}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 31, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"rlt2", metadata !12, metadata !"int", i32 0, i32 31}
!51 = metadata !{metadata !52, i32* @al2}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 31, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"al2", metadata !12, metadata !"int", i32 0, i32 31}
!56 = metadata !{metadata !57, i32* @spl}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 31, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"spl", metadata !12, metadata !"int", i32 0, i32 31}
!61 = metadata !{metadata !62, i32* @sl}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 31, metadata !64}
!64 = metadata !{metadata !65}
!65 = metadata !{metadata !"sl", metadata !12, metadata !"int", i32 0, i32 31}
!66 = metadata !{metadata !67, i32* @el}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 31, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"el", metadata !12, metadata !"int", i32 0, i32 31}
!71 = metadata !{metadata !72, i32* @detl}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 0, i32 31, metadata !74}
!74 = metadata !{metadata !75}
!75 = metadata !{metadata !"detl", metadata !12, metadata !"int", i32 0, i32 31}
!76 = metadata !{metadata !77, i32* @il}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 0, i32 31, metadata !79}
!79 = metadata !{metadata !80}
!80 = metadata !{metadata !"il", metadata !12, metadata !"int", i32 0, i32 31}
!81 = metadata !{metadata !82, i32* @dlt}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 0, i32 31, metadata !84}
!84 = metadata !{metadata !85}
!85 = metadata !{metadata !"dlt", metadata !12, metadata !"int", i32 0, i32 31}
!86 = metadata !{metadata !87, i32* @nbl}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 0, i32 31, metadata !89}
!89 = metadata !{metadata !90}
!90 = metadata !{metadata !"nbl", metadata !12, metadata !"int", i32 0, i32 31}
!91 = metadata !{metadata !92, i32* @plt}
!92 = metadata !{metadata !93}
!93 = metadata !{i32 0, i32 31, metadata !94}
!94 = metadata !{metadata !95}
!95 = metadata !{metadata !"plt", metadata !12, metadata !"int", i32 0, i32 31}
!96 = metadata !{metadata !97, i32* @plt1}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 0, i32 31, metadata !99}
!99 = metadata !{metadata !100}
!100 = metadata !{metadata !"plt1", metadata !12, metadata !"int", i32 0, i32 31}
!101 = metadata !{metadata !102, i32* @plt2}
!102 = metadata !{metadata !103}
!103 = metadata !{i32 0, i32 31, metadata !104}
!104 = metadata !{metadata !105}
!105 = metadata !{metadata !"plt2", metadata !12, metadata !"int", i32 0, i32 31}
!106 = metadata !{metadata !107, i32* @rlt}
!107 = metadata !{metadata !108}
!108 = metadata !{i32 0, i32 31, metadata !109}
!109 = metadata !{metadata !110}
!110 = metadata !{metadata !"rlt", metadata !12, metadata !"int", i32 0, i32 31}
!111 = metadata !{metadata !112, [6 x i32]* @delay_bph}
!112 = metadata !{metadata !113}
!113 = metadata !{i32 0, i32 31, metadata !114}
!114 = metadata !{metadata !115}
!115 = metadata !{metadata !"delay_bph", metadata !24, metadata !"int", i32 0, i32 31}
!116 = metadata !{metadata !117, [6 x i32]* @delay_dhx}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 0, i32 31, metadata !119}
!119 = metadata !{metadata !120}
!120 = metadata !{metadata !"delay_dhx", metadata !24, metadata !"int", i32 0, i32 31}
!121 = metadata !{metadata !122, i32* @szh}
!122 = metadata !{metadata !123}
!123 = metadata !{i32 0, i32 31, metadata !124}
!124 = metadata !{metadata !125}
!125 = metadata !{metadata !"szh", metadata !12, metadata !"int", i32 0, i32 31}
!126 = metadata !{metadata !127, i32* @rh1}
!127 = metadata !{metadata !128}
!128 = metadata !{i32 0, i32 31, metadata !129}
!129 = metadata !{metadata !130}
!130 = metadata !{metadata !"rh1", metadata !12, metadata !"int", i32 0, i32 31}
!131 = metadata !{metadata !132, i32* @ah1}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 0, i32 31, metadata !134}
!134 = metadata !{metadata !135}
!135 = metadata !{metadata !"ah1", metadata !12, metadata !"int", i32 0, i32 31}
!136 = metadata !{metadata !137, i32* @rh2}
!137 = metadata !{metadata !138}
!138 = metadata !{i32 0, i32 31, metadata !139}
!139 = metadata !{metadata !140}
!140 = metadata !{metadata !"rh2", metadata !12, metadata !"int", i32 0, i32 31}
!141 = metadata !{metadata !142, i32* @ah2}
!142 = metadata !{metadata !143}
!143 = metadata !{i32 0, i32 31, metadata !144}
!144 = metadata !{metadata !145}
!145 = metadata !{metadata !"ah2", metadata !12, metadata !"int", i32 0, i32 31}
!146 = metadata !{metadata !147, i32* @sph}
!147 = metadata !{metadata !148}
!148 = metadata !{i32 0, i32 31, metadata !149}
!149 = metadata !{metadata !150}
!150 = metadata !{metadata !"sph", metadata !12, metadata !"int", i32 0, i32 31}
!151 = metadata !{metadata !152, i32* @sh}
!152 = metadata !{metadata !153}
!153 = metadata !{i32 0, i32 31, metadata !154}
!154 = metadata !{metadata !155}
!155 = metadata !{metadata !"sh", metadata !12, metadata !"int", i32 0, i32 31}
!156 = metadata !{metadata !157, i32* @eh}
!157 = metadata !{metadata !158}
!158 = metadata !{i32 0, i32 31, metadata !159}
!159 = metadata !{metadata !160}
!160 = metadata !{metadata !"eh", metadata !12, metadata !"int", i32 0, i32 31}
!161 = metadata !{metadata !162, i32* @ih}
!162 = metadata !{metadata !163}
!163 = metadata !{i32 0, i32 31, metadata !164}
!164 = metadata !{metadata !165}
!165 = metadata !{metadata !"ih", metadata !12, metadata !"int", i32 0, i32 31}
!166 = metadata !{metadata !167, i32* @deth}
!167 = metadata !{metadata !168}
!168 = metadata !{i32 0, i32 31, metadata !169}
!169 = metadata !{metadata !170}
!170 = metadata !{metadata !"deth", metadata !12, metadata !"int", i32 0, i32 31}
!171 = metadata !{metadata !172, i32* @dh}
!172 = metadata !{metadata !173}
!173 = metadata !{i32 0, i32 31, metadata !174}
!174 = metadata !{metadata !175}
!175 = metadata !{metadata !"dh", metadata !12, metadata !"int", i32 0, i32 31}
!176 = metadata !{metadata !177, i32* @nbh}
!177 = metadata !{metadata !178}
!178 = metadata !{i32 0, i32 31, metadata !179}
!179 = metadata !{metadata !180}
!180 = metadata !{metadata !"nbh", metadata !12, metadata !"int", i32 0, i32 31}
!181 = metadata !{metadata !182, i32* @ph}
!182 = metadata !{metadata !183}
!183 = metadata !{i32 0, i32 31, metadata !184}
!184 = metadata !{metadata !185}
!185 = metadata !{metadata !"ph", metadata !12, metadata !"int", i32 0, i32 31}
!186 = metadata !{metadata !187, i32* @ph1}
!187 = metadata !{metadata !188}
!188 = metadata !{i32 0, i32 31, metadata !189}
!189 = metadata !{metadata !190}
!190 = metadata !{metadata !"ph1", metadata !12, metadata !"int", i32 0, i32 31}
!191 = metadata !{metadata !192, i32* @ph2}
!192 = metadata !{metadata !193}
!193 = metadata !{i32 0, i32 31, metadata !194}
!194 = metadata !{metadata !195}
!195 = metadata !{metadata !"ph2", metadata !12, metadata !"int", i32 0, i32 31}
!196 = metadata !{metadata !197, i32* @yh}
!197 = metadata !{metadata !198}
!198 = metadata !{i32 0, i32 31, metadata !199}
!199 = metadata !{metadata !200}
!200 = metadata !{metadata !"yh", metadata !12, metadata !"int", i32 0, i32 31}
!201 = metadata !{metadata !202, i32* @ilr}
!202 = metadata !{metadata !203}
!203 = metadata !{i32 0, i32 31, metadata !204}
!204 = metadata !{metadata !205}
!205 = metadata !{metadata !"ilr", metadata !12, metadata !"int", i32 0, i32 31}
!206 = metadata !{metadata !207, [6 x i32]* @dec_del_bpl}
!207 = metadata !{metadata !208}
!208 = metadata !{i32 0, i32 31, metadata !209}
!209 = metadata !{metadata !210}
!210 = metadata !{metadata !"dec_del_bpl", metadata !24, metadata !"int", i32 0, i32 31}
!211 = metadata !{metadata !212, [6 x i32]* @dec_del_dltx}
!212 = metadata !{metadata !213}
!213 = metadata !{i32 0, i32 31, metadata !214}
!214 = metadata !{metadata !215}
!215 = metadata !{metadata !"dec_del_dltx", metadata !24, metadata !"int", i32 0, i32 31}
!216 = metadata !{metadata !217, i32* @dec_szl}
!217 = metadata !{metadata !218}
!218 = metadata !{i32 0, i32 31, metadata !219}
!219 = metadata !{metadata !220}
!220 = metadata !{metadata !"dec_szl", metadata !12, metadata !"int", i32 0, i32 31}
!221 = metadata !{metadata !222, i32* @dec_rlt1}
!222 = metadata !{metadata !223}
!223 = metadata !{i32 0, i32 31, metadata !224}
!224 = metadata !{metadata !225}
!225 = metadata !{metadata !"dec_rlt1", metadata !12, metadata !"int", i32 0, i32 31}
!226 = metadata !{metadata !227, i32* @dec_al1}
!227 = metadata !{metadata !228}
!228 = metadata !{i32 0, i32 31, metadata !229}
!229 = metadata !{metadata !230}
!230 = metadata !{metadata !"dec_al1", metadata !12, metadata !"int", i32 0, i32 31}
!231 = metadata !{metadata !232, i32* @dec_rlt2}
!232 = metadata !{metadata !233}
!233 = metadata !{i32 0, i32 31, metadata !234}
!234 = metadata !{metadata !235}
!235 = metadata !{metadata !"dec_rlt2", metadata !12, metadata !"int", i32 0, i32 31}
!236 = metadata !{metadata !237, i32* @dec_al2}
!237 = metadata !{metadata !238}
!238 = metadata !{i32 0, i32 31, metadata !239}
!239 = metadata !{metadata !240}
!240 = metadata !{metadata !"dec_al2", metadata !12, metadata !"int", i32 0, i32 31}
!241 = metadata !{metadata !242, i32* @dec_spl}
!242 = metadata !{metadata !243}
!243 = metadata !{i32 0, i32 31, metadata !244}
!244 = metadata !{metadata !245}
!245 = metadata !{metadata !"dec_spl", metadata !12, metadata !"int", i32 0, i32 31}
!246 = metadata !{metadata !247, i32* @dec_sl}
!247 = metadata !{metadata !248}
!248 = metadata !{i32 0, i32 31, metadata !249}
!249 = metadata !{metadata !250}
!250 = metadata !{metadata !"dec_sl", metadata !12, metadata !"int", i32 0, i32 31}
!251 = metadata !{metadata !252, i32* @dec_detl}
!252 = metadata !{metadata !253}
!253 = metadata !{i32 0, i32 31, metadata !254}
!254 = metadata !{metadata !255}
!255 = metadata !{metadata !"dec_detl", metadata !12, metadata !"int", i32 0, i32 31}
!256 = metadata !{metadata !257, i32* @dec_dlt}
!257 = metadata !{metadata !258}
!258 = metadata !{i32 0, i32 31, metadata !259}
!259 = metadata !{metadata !260}
!260 = metadata !{metadata !"dec_dlt", metadata !12, metadata !"int", i32 0, i32 31}
!261 = metadata !{metadata !262, i32* @dl}
!262 = metadata !{metadata !263}
!263 = metadata !{i32 0, i32 31, metadata !264}
!264 = metadata !{metadata !265}
!265 = metadata !{metadata !"dl", metadata !12, metadata !"int", i32 0, i32 31}
!266 = metadata !{metadata !267, i32* @rl}
!267 = metadata !{metadata !268}
!268 = metadata !{i32 0, i32 31, metadata !269}
!269 = metadata !{metadata !270}
!270 = metadata !{metadata !"rl", metadata !12, metadata !"int", i32 0, i32 31}
!271 = metadata !{metadata !272, i32* @dec_nbl}
!272 = metadata !{metadata !273}
!273 = metadata !{i32 0, i32 31, metadata !274}
!274 = metadata !{metadata !275}
!275 = metadata !{metadata !"dec_nbl", metadata !12, metadata !"int", i32 0, i32 31}
!276 = metadata !{metadata !277, i32* @dec_plt}
!277 = metadata !{metadata !278}
!278 = metadata !{i32 0, i32 31, metadata !279}
!279 = metadata !{metadata !280}
!280 = metadata !{metadata !"dec_plt", metadata !12, metadata !"int", i32 0, i32 31}
!281 = metadata !{metadata !282, i32* @dec_plt1}
!282 = metadata !{metadata !283}
!283 = metadata !{i32 0, i32 31, metadata !284}
!284 = metadata !{metadata !285}
!285 = metadata !{metadata !"dec_plt1", metadata !12, metadata !"int", i32 0, i32 31}
!286 = metadata !{metadata !287, i32* @dec_plt2}
!287 = metadata !{metadata !288}
!288 = metadata !{i32 0, i32 31, metadata !289}
!289 = metadata !{metadata !290}
!290 = metadata !{metadata !"dec_plt2", metadata !12, metadata !"int", i32 0, i32 31}
!291 = metadata !{metadata !292, i32* @dec_rlt}
!292 = metadata !{metadata !293}
!293 = metadata !{i32 0, i32 31, metadata !294}
!294 = metadata !{metadata !295}
!295 = metadata !{metadata !"dec_rlt", metadata !12, metadata !"int", i32 0, i32 31}
!296 = metadata !{metadata !297, [6 x i32]* @dec_del_bph}
!297 = metadata !{metadata !298}
!298 = metadata !{i32 0, i32 31, metadata !299}
!299 = metadata !{metadata !300}
!300 = metadata !{metadata !"dec_del_bph", metadata !24, metadata !"int", i32 0, i32 31}
!301 = metadata !{metadata !302, [6 x i32]* @dec_del_dhx}
!302 = metadata !{metadata !303}
!303 = metadata !{i32 0, i32 31, metadata !304}
!304 = metadata !{metadata !305}
!305 = metadata !{metadata !"dec_del_dhx", metadata !24, metadata !"int", i32 0, i32 31}
!306 = metadata !{metadata !307, i32* @dec_szh}
!307 = metadata !{metadata !308}
!308 = metadata !{i32 0, i32 31, metadata !309}
!309 = metadata !{metadata !310}
!310 = metadata !{metadata !"dec_szh", metadata !12, metadata !"int", i32 0, i32 31}
!311 = metadata !{metadata !312, i32* @dec_rh1}
!312 = metadata !{metadata !313}
!313 = metadata !{i32 0, i32 31, metadata !314}
!314 = metadata !{metadata !315}
!315 = metadata !{metadata !"dec_rh1", metadata !12, metadata !"int", i32 0, i32 31}
!316 = metadata !{metadata !317, i32* @dec_ah1}
!317 = metadata !{metadata !318}
!318 = metadata !{i32 0, i32 31, metadata !319}
!319 = metadata !{metadata !320}
!320 = metadata !{metadata !"dec_ah1", metadata !12, metadata !"int", i32 0, i32 31}
!321 = metadata !{metadata !322, i32* @dec_rh2}
!322 = metadata !{metadata !323}
!323 = metadata !{i32 0, i32 31, metadata !324}
!324 = metadata !{metadata !325}
!325 = metadata !{metadata !"dec_rh2", metadata !12, metadata !"int", i32 0, i32 31}
!326 = metadata !{metadata !327, i32* @dec_ah2}
!327 = metadata !{metadata !328}
!328 = metadata !{i32 0, i32 31, metadata !329}
!329 = metadata !{metadata !330}
!330 = metadata !{metadata !"dec_ah2", metadata !12, metadata !"int", i32 0, i32 31}
!331 = metadata !{metadata !332, i32* @dec_sph}
!332 = metadata !{metadata !333}
!333 = metadata !{i32 0, i32 31, metadata !334}
!334 = metadata !{metadata !335}
!335 = metadata !{metadata !"dec_sph", metadata !12, metadata !"int", i32 0, i32 31}
!336 = metadata !{metadata !337, i32* @dec_sh}
!337 = metadata !{metadata !338}
!338 = metadata !{i32 0, i32 31, metadata !339}
!339 = metadata !{metadata !340}
!340 = metadata !{metadata !"dec_sh", metadata !12, metadata !"int", i32 0, i32 31}
!341 = metadata !{metadata !342, i32* @dec_deth}
!342 = metadata !{metadata !343}
!343 = metadata !{i32 0, i32 31, metadata !344}
!344 = metadata !{metadata !345}
!345 = metadata !{metadata !"dec_deth", metadata !12, metadata !"int", i32 0, i32 31}
!346 = metadata !{metadata !347, i32* @dec_dh}
!347 = metadata !{metadata !348}
!348 = metadata !{i32 0, i32 31, metadata !349}
!349 = metadata !{metadata !350}
!350 = metadata !{metadata !"dec_dh", metadata !12, metadata !"int", i32 0, i32 31}
!351 = metadata !{metadata !352, i32* @dec_nbh}
!352 = metadata !{metadata !353}
!353 = metadata !{i32 0, i32 31, metadata !354}
!354 = metadata !{metadata !355}
!355 = metadata !{metadata !"dec_nbh", metadata !12, metadata !"int", i32 0, i32 31}
!356 = metadata !{metadata !357, i32* @dec_ph}
!357 = metadata !{metadata !358}
!358 = metadata !{i32 0, i32 31, metadata !359}
!359 = metadata !{metadata !360}
!360 = metadata !{metadata !"dec_ph", metadata !12, metadata !"int", i32 0, i32 31}
!361 = metadata !{metadata !362, i32* @dec_ph1}
!362 = metadata !{metadata !363}
!363 = metadata !{i32 0, i32 31, metadata !364}
!364 = metadata !{metadata !365}
!365 = metadata !{metadata !"dec_ph1", metadata !12, metadata !"int", i32 0, i32 31}
!366 = metadata !{metadata !367, i32* @dec_ph2}
!367 = metadata !{metadata !368}
!368 = metadata !{i32 0, i32 31, metadata !369}
!369 = metadata !{metadata !370}
!370 = metadata !{metadata !"dec_ph2", metadata !12, metadata !"int", i32 0, i32 31}
!371 = metadata !{metadata !372, i32* @rh}
!372 = metadata !{metadata !373}
!373 = metadata !{i32 0, i32 31, metadata !374}
!374 = metadata !{metadata !375}
!375 = metadata !{metadata !"rh", metadata !12, metadata !"int", i32 0, i32 31}
!376 = metadata !{metadata !377, i32* @xd}
!377 = metadata !{metadata !378}
!378 = metadata !{i32 0, i32 31, metadata !379}
!379 = metadata !{metadata !380}
!380 = metadata !{metadata !"xd", metadata !12, metadata !"int", i32 0, i32 31}
!381 = metadata !{metadata !382, i32* @xs}
!382 = metadata !{metadata !383}
!383 = metadata !{i32 0, i32 31, metadata !384}
!384 = metadata !{metadata !385}
!385 = metadata !{metadata !"xs", metadata !12, metadata !"int", i32 0, i32 31}
!386 = metadata !{metadata !387, [11 x i32]* @accumc}
!387 = metadata !{metadata !388}
!388 = metadata !{i32 0, i32 31, metadata !389}
!389 = metadata !{metadata !390}
!390 = metadata !{metadata !"accumc", metadata !391, metadata !"int", i32 0, i32 31}
!391 = metadata !{metadata !392}
!392 = metadata !{i32 0, i32 10, i32 1}
!393 = metadata !{metadata !394, [11 x i32]* @accumd}
!394 = metadata !{metadata !395}
!395 = metadata !{i32 0, i32 31, metadata !396}
!396 = metadata !{metadata !397}
!397 = metadata !{metadata !"accumd", metadata !391, metadata !"int", i32 0, i32 31}
!398 = metadata !{metadata !399, i32* @xout1}
!399 = metadata !{metadata !400}
!400 = metadata !{i32 0, i32 31, metadata !401}
!401 = metadata !{metadata !402}
!402 = metadata !{metadata !"xout1", metadata !12, metadata !"int", i32 0, i32 31}
!403 = metadata !{metadata !404, i32* @xout2}
!404 = metadata !{metadata !405}
!405 = metadata !{i32 0, i32 31, metadata !406}
!406 = metadata !{metadata !407}
!407 = metadata !{metadata !"xout2", metadata !12, metadata !"int", i32 0, i32 31}
!408 = metadata !{metadata !409, [100 x i32]* @compressed}
!409 = metadata !{metadata !410}
!410 = metadata !{i32 0, i32 31, metadata !411}
!411 = metadata !{metadata !412}
!412 = metadata !{metadata !"compressed", metadata !413, metadata !"int", i32 0, i32 31}
!413 = metadata !{metadata !414}
!414 = metadata !{i32 0, i32 99, i32 1}
!415 = metadata !{metadata !416, [100 x i32]* @result}
!416 = metadata !{metadata !417}
!417 = metadata !{i32 0, i32 31, metadata !418}
!418 = metadata !{metadata !419}
!419 = metadata !{metadata !"result", metadata !413, metadata !"int", i32 0, i32 31}
!420 = metadata !{i32 786449, i32 0, i32 1, metadata !"/scratch/qijing.huang/firechip/hls_adpcm_encode/src/main/c/adpcm_prj/solution1/.autopilot/db/adpcm.pragma.2.c", metadata !"/scratch/qijing.huang/firechip/hls_adpcm_encode/src/main/c", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !421} ; [ DW_TAG_compile_unit ]
!421 = metadata !{metadata !422}
!422 = metadata !{metadata !423, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !458, metadata !459, metadata !463, metadata !464, metadata !465, metadata !466, metadata !470, metadata !472, metadata !473, metadata !477, metadata !478, metadata !479, metadata !483, metadata !484, metadata !485, metadata !486, metadata !490, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !540, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !552}
!423 = metadata !{i32 786484, i32 0, null, metadata !"h", metadata !"h", metadata !"h", metadata !424, i32 87, metadata !425, i32 0, i32 1, [24 x i15]* @h} ; [ DW_TAG_variable ]
!424 = metadata !{i32 786473, metadata !"adpcm.c", metadata !"/scratch/qijing.huang/firechip/hls_adpcm_encode/src/main/c", null} ; [ DW_TAG_file_type ]
!425 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 768, i64 32, i32 0, i32 0, metadata !426, metadata !428, i32 0, i32 0} ; [ DW_TAG_array_type ]
!426 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !427} ; [ DW_TAG_const_type ]
!427 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!428 = metadata !{metadata !429}
!429 = metadata !{i32 786465, i64 0, i64 23}      ; [ DW_TAG_subrange_type ]
!430 = metadata !{i32 786484, i32 0, null, metadata !"dec_al1", metadata !"dec_al1", metadata !"", metadata !424, i32 211, metadata !427, i32 0, i32 1, i32* @dec_al1} ; [ DW_TAG_variable ]
!431 = metadata !{i32 786484, i32 0, null, metadata !"ih", metadata !"ih", metadata !"", metadata !424, i32 188, metadata !427, i32 0, i32 1, i32* @ih} ; [ DW_TAG_variable ]
!432 = metadata !{i32 786484, i32 0, null, metadata !"dec_al2", metadata !"dec_al2", metadata !"", metadata !424, i32 211, metadata !427, i32 0, i32 1, i32* @dec_al2} ; [ DW_TAG_variable ]
!433 = metadata !{i32 786484, i32 0, null, metadata !"el", metadata !"el", metadata !"", metadata !424, i32 105, metadata !427, i32 0, i32 1, i32* @el} ; [ DW_TAG_variable ]
!434 = metadata !{i32 786484, i32 0, null, metadata !"wh_code_table", metadata !"wh_code_table", metadata !"", metadata !424, i32 183, metadata !435, i32 0, i32 1, [4 x i32]* @wh_code_table} ; [ DW_TAG_variable ]
!435 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !426, metadata !436, i32 0, i32 0} ; [ DW_TAG_array_type ]
!436 = metadata !{metadata !437}
!437 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!438 = metadata !{i32 786484, i32 0, null, metadata !"eh", metadata !"eh", metadata !"", metadata !424, i32 177, metadata !427, i32 0, i32 1, i32* @eh} ; [ DW_TAG_variable ]
!439 = metadata !{i32 786484, i32 0, null, metadata !"ph1", metadata !"ph1", metadata !"", metadata !424, i32 197, metadata !427, i32 0, i32 1, i32* @ph1} ; [ DW_TAG_variable ]
!440 = metadata !{i32 786484, i32 0, null, metadata !"rlt", metadata !"rlt", metadata !"", metadata !424, i32 144, metadata !427, i32 0, i32 1, i32* @rlt} ; [ DW_TAG_variable ]
!441 = metadata !{i32 786484, i32 0, null, metadata !"nbl", metadata !"nbl", metadata !"", metadata !424, i32 140, metadata !427, i32 0, i32 1, i32* @nbl} ; [ DW_TAG_variable ]
!442 = metadata !{i32 786484, i32 0, null, metadata !"dec_sph", metadata !"dec_sph", metadata !"", metadata !424, i32 224, metadata !427, i32 0, i32 1, i32* @dec_sph} ; [ DW_TAG_variable ]
!443 = metadata !{i32 786484, i32 0, null, metadata !"dec_sh", metadata !"dec_sh", metadata !"", metadata !424, i32 226, metadata !427, i32 0, i32 1, i32* @dec_sh} ; [ DW_TAG_variable ]
!444 = metadata !{i32 786484, i32 0, null, metadata !"delay_bpl", metadata !"delay_bpl", metadata !"", metadata !424, i32 124, metadata !445, i32 0, i32 1, [6 x i32]* @delay_bpl} ; [ DW_TAG_variable ]
!445 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 192, i64 32, i32 0, i32 0, metadata !427, metadata !446, i32 0, i32 0} ; [ DW_TAG_array_type ]
!446 = metadata !{metadata !447}
!447 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ]
!448 = metadata !{i32 786484, i32 0, null, metadata !"ah1", metadata !"ah1", metadata !"", metadata !424, i32 196, metadata !427, i32 0, i32 1, i32* @ah1} ; [ DW_TAG_variable ]
!449 = metadata !{i32 786484, i32 0, null, metadata !"ilr", metadata !"ilr", metadata !"", metadata !424, i32 201, metadata !427, i32 0, i32 1, i32* @ilr} ; [ DW_TAG_variable ]
!450 = metadata !{i32 786484, i32 0, null, metadata !"dec_szl", metadata !"dec_szl", metadata !"", metadata !424, i32 209, metadata !427, i32 0, i32 1, i32* @dec_szl} ; [ DW_TAG_variable ]
!451 = metadata !{i32 786484, i32 0, null, metadata !"deth", metadata !"deth", metadata !"", metadata !424, i32 175, metadata !427, i32 0, i32 1, i32* @deth} ; [ DW_TAG_variable ]
!452 = metadata !{i32 786484, i32 0, null, metadata !"ph2", metadata !"ph2", metadata !"", metadata !424, i32 197, metadata !427, i32 0, i32 1, i32* @ph2} ; [ DW_TAG_variable ]
!453 = metadata !{i32 786484, i32 0, null, metadata !"nbh", metadata !"nbh", metadata !"", metadata !424, i32 189, metadata !427, i32 0, i32 1, i32* @nbh} ; [ DW_TAG_variable ]
!454 = metadata !{i32 786484, i32 0, null, metadata !"quant26bt_pos", metadata !"quant26bt_pos", metadata !"quant26bt_pos", metadata !424, i32 158, metadata !455, i32 0, i32 1, [31 x i6]* @quant26bt_pos} ; [ DW_TAG_variable ]
!455 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 992, i64 32, i32 0, i32 0, metadata !426, metadata !456, i32 0, i32 0} ; [ DW_TAG_array_type ]
!456 = metadata !{metadata !457}
!457 = metadata !{i32 786465, i64 0, i64 30}      ; [ DW_TAG_subrange_type ]
!458 = metadata !{i32 786484, i32 0, null, metadata !"plt1", metadata !"plt1", metadata !"", metadata !424, i32 142, metadata !427, i32 0, i32 1, i32* @plt1} ; [ DW_TAG_variable ]
!459 = metadata !{i32 786484, i32 0, null, metadata !"qq6_code6_table", metadata !"qq6_code6_table", metadata !"", metadata !424, i32 113, metadata !460, i32 0, i32 1, [64 x i32]* @qq6_code6_table} ; [ DW_TAG_variable ]
!460 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !426, metadata !461, i32 0, i32 0} ; [ DW_TAG_array_type ]
!461 = metadata !{metadata !462}
!462 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!463 = metadata !{i32 786484, i32 0, null, metadata !"plt2", metadata !"plt2", metadata !"", metadata !424, i32 142, metadata !427, i32 0, i32 1, i32* @plt2} ; [ DW_TAG_variable ]
!464 = metadata !{i32 786484, i32 0, null, metadata !"dec_rh2", metadata !"dec_rh2", metadata !"", metadata !424, i32 222, metadata !427, i32 0, i32 1, i32* @dec_rh2} ; [ DW_TAG_variable ]
!465 = metadata !{i32 786484, i32 0, null, metadata !"dec_ah2", metadata !"dec_ah2", metadata !"", metadata !424, i32 223, metadata !427, i32 0, i32 1, i32* @dec_ah2} ; [ DW_TAG_variable ]
!466 = metadata !{i32 786484, i32 0, null, metadata !"test_result", metadata !"test_result", metadata !"", metadata !424, i32 813, metadata !467, i32 0, i32 1, [100 x i32]* @test_result} ; [ DW_TAG_variable ]
!467 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 3200, i64 32, i32 0, i32 0, metadata !426, metadata !468, i32 0, i32 0} ; [ DW_TAG_array_type ]
!468 = metadata !{metadata !469}
!469 = metadata !{i32 786465, i64 0, i64 99}      ; [ DW_TAG_subrange_type ]
!470 = metadata !{i32 786484, i32 0, null, metadata !"compressed", metadata !"compressed", metadata !"", metadata !424, i32 800, metadata !471, i32 0, i32 1, [100 x i32]* @compressed} ; [ DW_TAG_variable ]
!471 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 3200, i64 32, i32 0, i32 0, metadata !427, metadata !468, i32 0, i32 0} ; [ DW_TAG_array_type ]
!472 = metadata !{i32 786484, i32 0, null, metadata !"result", metadata !"result", metadata !"", metadata !424, i32 800, metadata !471, i32 0, i32 1, [100 x i32]* @result} ; [ DW_TAG_variable ]
!473 = metadata !{i32 786484, i32 0, null, metadata !"accumc", metadata !"accumc", metadata !"", metadata !424, i32 96, metadata !474, i32 0, i32 1, [11 x i32]* @accumc} ; [ DW_TAG_variable ]
!474 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 352, i64 32, i32 0, i32 0, metadata !427, metadata !475, i32 0, i32 0} ; [ DW_TAG_array_type ]
!475 = metadata !{metadata !476}
!476 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ]
!477 = metadata !{i32 786484, i32 0, null, metadata !"accumd", metadata !"accumd", metadata !"", metadata !424, i32 96, metadata !474, i32 0, i32 1, [11 x i32]* @accumd} ; [ DW_TAG_variable ]
!478 = metadata !{i32 786484, i32 0, null, metadata !"xout1", metadata !"xout1", metadata !"", metadata !424, i32 99, metadata !427, i32 0, i32 1, i32* @xout1} ; [ DW_TAG_variable ]
!479 = metadata !{i32 786484, i32 0, null, metadata !"decis_levl", metadata !"decis_levl", metadata !"decis_levl", metadata !424, i32 147, metadata !480, i32 0, i32 1, [30 x i15]* @decis_levl} ; [ DW_TAG_variable ]
!480 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 960, i64 32, i32 0, i32 0, metadata !426, metadata !481, i32 0, i32 0} ; [ DW_TAG_array_type ]
!481 = metadata !{metadata !482}
!482 = metadata !{i32 786465, i64 0, i64 29}      ; [ DW_TAG_subrange_type ]
!483 = metadata !{i32 786484, i32 0, null, metadata !"szh", metadata !"szh", metadata !"", metadata !424, i32 189, metadata !427, i32 0, i32 1, i32* @szh} ; [ DW_TAG_variable ]
!484 = metadata !{i32 786484, i32 0, null, metadata !"dec_del_bpl", metadata !"dec_del_bpl", metadata !"", metadata !424, i32 204, metadata !445, i32 0, i32 1, [6 x i32]* @dec_del_bpl} ; [ DW_TAG_variable ]
!485 = metadata !{i32 786484, i32 0, null, metadata !"quant26bt_neg", metadata !"quant26bt_neg", metadata !"quant26bt_neg", metadata !424, i32 167, metadata !455, i32 0, i32 1, [31 x i6]* @quant26bt_neg} ; [ DW_TAG_variable ]
!486 = metadata !{i32 786484, i32 0, null, metadata !"qq4_code4_table", metadata !"qq4_code4_table", metadata !"qq4_code4_table", metadata !424, i32 107, metadata !487, i32 0, i32 1, [16 x i16]* @qq4_code4_table} ; [ DW_TAG_variable ]
!487 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 32, i32 0, i32 0, metadata !426, metadata !488, i32 0, i32 0} ; [ DW_TAG_array_type ]
!488 = metadata !{metadata !489}
!489 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ]
!490 = metadata !{i32 786484, i32 0, null, metadata !"wl_code_table", metadata !"wl_code_table", metadata !"wl_code_table", metadata !424, i32 128, metadata !487, i32 0, i32 1, [16 x i13]* @wl_code_table} ; [ DW_TAG_variable ]
!491 = metadata !{i32 786484, i32 0, null, metadata !"dec_detl", metadata !"dec_detl", metadata !"", metadata !424, i32 202, metadata !427, i32 0, i32 1, i32* @dec_detl} ; [ DW_TAG_variable ]
!492 = metadata !{i32 786484, i32 0, null, metadata !"dec_dlt", metadata !"dec_dlt", metadata !"", metadata !424, i32 202, metadata !427, i32 0, i32 1, i32* @dec_dlt} ; [ DW_TAG_variable ]
!493 = metadata !{i32 786484, i32 0, null, metadata !"delay_bph", metadata !"delay_bph", metadata !"", metadata !424, i32 194, metadata !445, i32 0, i32 1, [6 x i32]* @delay_bph} ; [ DW_TAG_variable ]
!494 = metadata !{i32 786484, i32 0, null, metadata !"detl", metadata !"detl", metadata !"", metadata !424, i32 154, metadata !427, i32 0, i32 1, i32* @detl} ; [ DW_TAG_variable ]
!495 = metadata !{i32 786484, i32 0, null, metadata !"delay_dhx", metadata !"delay_dhx", metadata !"", metadata !424, i32 192, metadata !445, i32 0, i32 1, [6 x i32]* @delay_dhx} ; [ DW_TAG_variable ]
!496 = metadata !{i32 786484, i32 0, null, metadata !"tqmf", metadata !"tqmf", metadata !"", metadata !424, i32 83, metadata !497, i32 0, i32 1, [24 x i32]* @tqmf} ; [ DW_TAG_variable ]
!497 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 768, i64 32, i32 0, i32 0, metadata !427, metadata !428, i32 0, i32 0} ; [ DW_TAG_array_type ]
!498 = metadata !{i32 786484, i32 0, null, metadata !"il", metadata !"il", metadata !"", metadata !424, i32 105, metadata !427, i32 0, i32 1, i32* @il} ; [ DW_TAG_variable ]
!499 = metadata !{i32 786484, i32 0, null, metadata !"plt", metadata !"plt", metadata !"", metadata !424, i32 142, metadata !427, i32 0, i32 1, i32* @plt} ; [ DW_TAG_variable ]
!500 = metadata !{i32 786484, i32 0, null, metadata !"yh", metadata !"yh", metadata !"", metadata !424, i32 190, metadata !427, i32 0, i32 1, i32* @yh} ; [ DW_TAG_variable ]
!501 = metadata !{i32 786484, i32 0, null, metadata !"dec_del_dltx", metadata !"dec_del_dltx", metadata !"", metadata !424, i32 206, metadata !445, i32 0, i32 1, [6 x i32]* @dec_del_dltx} ; [ DW_TAG_variable ]
!502 = metadata !{i32 786484, i32 0, null, metadata !"sh", metadata !"sh", metadata !"", metadata !424, i32 176, metadata !427, i32 0, i32 1, i32* @sh} ; [ DW_TAG_variable ]
!503 = metadata !{i32 786484, i32 0, null, metadata !"dlt", metadata !"dlt", metadata !"", metadata !424, i32 143, metadata !427, i32 0, i32 1, i32* @dlt} ; [ DW_TAG_variable ]
!504 = metadata !{i32 786484, i32 0, null, metadata !"dh", metadata !"dh", metadata !"", metadata !424, i32 188, metadata !427, i32 0, i32 1, i32* @dh} ; [ DW_TAG_variable ]
!505 = metadata !{i32 786484, i32 0, null, metadata !"rh1", metadata !"rh1", metadata !"", metadata !424, i32 198, metadata !427, i32 0, i32 1, i32* @rh1} ; [ DW_TAG_variable ]
!506 = metadata !{i32 786484, i32 0, null, metadata !"dl", metadata !"dl", metadata !"", metadata !424, i32 212, metadata !427, i32 0, i32 1, i32* @dl} ; [ DW_TAG_variable ]
!507 = metadata !{i32 786484, i32 0, null, metadata !"rl", metadata !"rl", metadata !"", metadata !424, i32 201, metadata !427, i32 0, i32 1, i32* @rl} ; [ DW_TAG_variable ]
!508 = metadata !{i32 786484, i32 0, null, metadata !"dec_rh1", metadata !"dec_rh1", metadata !"", metadata !424, i32 222, metadata !427, i32 0, i32 1, i32* @dec_rh1} ; [ DW_TAG_variable ]
!509 = metadata !{i32 786484, i32 0, null, metadata !"dec_ah1", metadata !"dec_ah1", metadata !"", metadata !424, i32 223, metadata !427, i32 0, i32 1, i32* @dec_ah1} ; [ DW_TAG_variable ]
!510 = metadata !{i32 786484, i32 0, null, metadata !"rlt1", metadata !"rlt1", metadata !"", metadata !424, i32 144, metadata !427, i32 0, i32 1, i32* @rlt1} ; [ DW_TAG_variable ]
!511 = metadata !{i32 786484, i32 0, null, metadata !"szl", metadata !"szl", metadata !"", metadata !424, i32 105, metadata !427, i32 0, i32 1, i32* @szl} ; [ DW_TAG_variable ]
!512 = metadata !{i32 786484, i32 0, null, metadata !"xl", metadata !"xl", metadata !"", metadata !424, i32 93, metadata !427, i32 0, i32 1, i32* @xl} ; [ DW_TAG_variable ]
!513 = metadata !{i32 786484, i32 0, null, metadata !"xh", metadata !"xh", metadata !"", metadata !424, i32 93, metadata !427, i32 0, i32 1, i32* @xh} ; [ DW_TAG_variable ]
!514 = metadata !{i32 786484, i32 0, null, metadata !"qq2_code2_table", metadata !"qq2_code2_table", metadata !"", metadata !424, i32 179, metadata !435, i32 0, i32 1, [4 x i32]* @qq2_code2_table} ; [ DW_TAG_variable ]
!515 = metadata !{i32 786484, i32 0, null, metadata !"dec_nbl", metadata !"dec_nbl", metadata !"", metadata !424, i32 213, metadata !427, i32 0, i32 1, i32* @dec_nbl} ; [ DW_TAG_variable ]
!516 = metadata !{i32 786484, i32 0, null, metadata !"dec_plt", metadata !"dec_plt", metadata !"", metadata !424, i32 208, metadata !427, i32 0, i32 1, i32* @dec_plt} ; [ DW_TAG_variable ]
!517 = metadata !{i32 786484, i32 0, null, metadata !"rh2", metadata !"rh2", metadata !"", metadata !424, i32 198, metadata !427, i32 0, i32 1, i32* @rh2} ; [ DW_TAG_variable ]
!518 = metadata !{i32 786484, i32 0, null, metadata !"ph", metadata !"ph", metadata !"", metadata !424, i32 190, metadata !427, i32 0, i32 1, i32* @ph} ; [ DW_TAG_variable ]
!519 = metadata !{i32 786484, i32 0, null, metadata !"xout2", metadata !"xout2", metadata !"", metadata !424, i32 99, metadata !427, i32 0, i32 1, i32* @xout2} ; [ DW_TAG_variable ]
!520 = metadata !{i32 786484, i32 0, null, metadata !"test_data", metadata !"test_data", metadata !"", metadata !424, i32 778, metadata !467, i32 0, i32 1, [100 x i32]* @test_data} ; [ DW_TAG_variable ]
!521 = metadata !{i32 786484, i32 0, null, metadata !"test_compressed", metadata !"test_compressed", metadata !"", metadata !424, i32 801, metadata !467, i32 0, i32 1, [100 x i32]* @test_compressed} ; [ DW_TAG_variable ]
!522 = metadata !{i32 786484, i32 0, null, metadata !"dec_deth", metadata !"dec_deth", metadata !"", metadata !424, i32 202, metadata !427, i32 0, i32 1, i32* @dec_deth} ; [ DW_TAG_variable ]
!523 = metadata !{i32 786484, i32 0, null, metadata !"dec_dh", metadata !"dec_dh", metadata !"", metadata !424, i32 213, metadata !427, i32 0, i32 1, i32* @dec_dh} ; [ DW_TAG_variable ]
!524 = metadata !{i32 786484, i32 0, null, metadata !"dec_nbh", metadata !"dec_nbh", metadata !"", metadata !424, i32 213, metadata !427, i32 0, i32 1, i32* @dec_nbh} ; [ DW_TAG_variable ]
!525 = metadata !{i32 786484, i32 0, null, metadata !"dec_del_dhx", metadata !"dec_del_dhx", metadata !"", metadata !424, i32 218, metadata !445, i32 0, i32 1, [6 x i32]* @dec_del_dhx} ; [ DW_TAG_variable ]
!526 = metadata !{i32 786484, i32 0, null, metadata !"dec_szh", metadata !"dec_szh", metadata !"", metadata !424, i32 220, metadata !427, i32 0, i32 1, i32* @dec_szh} ; [ DW_TAG_variable ]
!527 = metadata !{i32 786484, i32 0, null, metadata !"dec_rlt2", metadata !"dec_rlt2", metadata !"", metadata !424, i32 210, metadata !427, i32 0, i32 1, i32* @dec_rlt2} ; [ DW_TAG_variable ]
!528 = metadata !{i32 786484, i32 0, null, metadata !"dec_ph", metadata !"dec_ph", metadata !"", metadata !424, i32 224, metadata !427, i32 0, i32 1, i32* @dec_ph} ; [ DW_TAG_variable ]
!529 = metadata !{i32 786484, i32 0, null, metadata !"dec_ph1", metadata !"dec_ph1", metadata !"", metadata !424, i32 228, metadata !427, i32 0, i32 1, i32* @dec_ph1} ; [ DW_TAG_variable ]
!530 = metadata !{i32 786484, i32 0, null, metadata !"dec_ph2", metadata !"dec_ph2", metadata !"", metadata !424, i32 228, metadata !427, i32 0, i32 1, i32* @dec_ph2} ; [ DW_TAG_variable ]
!531 = metadata !{i32 786484, i32 0, null, metadata !"dec_rlt", metadata !"dec_rlt", metadata !"", metadata !424, i32 210, metadata !427, i32 0, i32 1, i32* @dec_rlt} ; [ DW_TAG_variable ]
!532 = metadata !{i32 786484, i32 0, null, metadata !"dec_del_bph", metadata !"dec_del_bph", metadata !"", metadata !424, i32 216, metadata !445, i32 0, i32 1, [6 x i32]* @dec_del_bph} ; [ DW_TAG_variable ]
!533 = metadata !{i32 786484, i32 0, null, metadata !"rh", metadata !"rh", metadata !"", metadata !424, i32 190, metadata !427, i32 0, i32 1, i32* @rh} ; [ DW_TAG_variable ]
!534 = metadata !{i32 786484, i32 0, null, metadata !"xd", metadata !"xd", metadata !"", metadata !424, i32 101, metadata !427, i32 0, i32 1, i32* @xd} ; [ DW_TAG_variable ]
!535 = metadata !{i32 786484, i32 0, null, metadata !"xs", metadata !"xs", metadata !"", metadata !424, i32 101, metadata !427, i32 0, i32 1, i32* @xs} ; [ DW_TAG_variable ]
!536 = metadata !{i32 786484, i32 0, null, metadata !"al2", metadata !"al2", metadata !"", metadata !424, i32 141, metadata !427, i32 0, i32 1, i32* @al2} ; [ DW_TAG_variable ]
!537 = metadata !{i32 786484, i32 0, null, metadata !"delay_dltx", metadata !"delay_dltx", metadata !"", metadata !424, i32 126, metadata !445, i32 0, i32 1, [6 x i32]* @delay_dltx} ; [ DW_TAG_variable ]
!538 = metadata !{i32 786484, i32 0, null, metadata !"al1", metadata !"al1", metadata !"", metadata !424, i32 141, metadata !427, i32 0, i32 1, i32* @al1} ; [ DW_TAG_variable ]
!539 = metadata !{i32 786484, i32 0, null, metadata !"spl", metadata !"spl", metadata !"", metadata !424, i32 105, metadata !427, i32 0, i32 1, i32* @spl} ; [ DW_TAG_variable ]
!540 = metadata !{i32 786484, i32 0, null, metadata !"sl", metadata !"sl", metadata !"", metadata !424, i32 105, metadata !427, i32 0, i32 1, i32* @sl} ; [ DW_TAG_variable ]
!541 = metadata !{i32 786484, i32 0, null, metadata !"dec_rlt1", metadata !"dec_rlt1", metadata !"", metadata !424, i32 210, metadata !427, i32 0, i32 1, i32* @dec_rlt1} ; [ DW_TAG_variable ]
!542 = metadata !{i32 786484, i32 0, null, metadata !"rlt2", metadata !"rlt2", metadata !"", metadata !424, i32 144, metadata !427, i32 0, i32 1, i32* @rlt2} ; [ DW_TAG_variable ]
!543 = metadata !{i32 786484, i32 0, null, metadata !"dec_plt1", metadata !"dec_plt1", metadata !"", metadata !424, i32 208, metadata !427, i32 0, i32 1, i32* @dec_plt1} ; [ DW_TAG_variable ]
!544 = metadata !{i32 786484, i32 0, null, metadata !"dec_plt2", metadata !"dec_plt2", metadata !"", metadata !424, i32 208, metadata !427, i32 0, i32 1, i32* @dec_plt2} ; [ DW_TAG_variable ]
!545 = metadata !{i32 786484, i32 0, null, metadata !"dec_spl", metadata !"dec_spl", metadata !"", metadata !424, i32 209, metadata !427, i32 0, i32 1, i32* @dec_spl} ; [ DW_TAG_variable ]
!546 = metadata !{i32 786484, i32 0, null, metadata !"dec_sl", metadata !"dec_sl", metadata !"", metadata !424, i32 209, metadata !427, i32 0, i32 1, i32* @dec_sl} ; [ DW_TAG_variable ]
!547 = metadata !{i32 786484, i32 0, null, metadata !"sph", metadata !"sph", metadata !"", metadata !424, i32 190, metadata !427, i32 0, i32 1, i32* @sph} ; [ DW_TAG_variable ]
!548 = metadata !{i32 786484, i32 0, null, metadata !"ilb_table", metadata !"ilb_table", metadata !"ilb_table", metadata !424, i32 133, metadata !549, i32 0, i32 1, [32 x i12]* @ilb_table} ; [ DW_TAG_variable ]
!549 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !426, metadata !550, i32 0, i32 0} ; [ DW_TAG_array_type ]
!550 = metadata !{metadata !551}
!551 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!552 = metadata !{i32 786484, i32 0, null, metadata !"ah2", metadata !"ah2", metadata !"", metadata !424, i32 196, metadata !427, i32 0, i32 1, i32* @ah2} ; [ DW_TAG_variable ]
!553 = metadata !{metadata !554}
!554 = metadata !{i32 0, i32 31, metadata !555}
!555 = metadata !{metadata !556}
!556 = metadata !{metadata !"xin1", metadata !557, metadata !"int", i32 0, i32 31}
!557 = metadata !{metadata !558}
!558 = metadata !{i32 0, i32 0, i32 0}
!559 = metadata !{metadata !560}
!560 = metadata !{i32 0, i32 31, metadata !561}
!561 = metadata !{metadata !562}
!562 = metadata !{metadata !"xin2", metadata !557, metadata !"int", i32 0, i32 31}
!563 = metadata !{metadata !564}
!564 = metadata !{i32 0, i32 31, metadata !565}
!565 = metadata !{metadata !566}
!566 = metadata !{metadata !"return", metadata !567, metadata !"int", i32 0, i32 31}
!567 = metadata !{metadata !568}
!568 = metadata !{i32 0, i32 1, i32 0}
!569 = metadata !{i32 786689, metadata !570, metadata !"xin1", metadata !424, i32 16777464, metadata !427, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!570 = metadata !{i32 786478, i32 0, metadata !424, metadata !"encode", metadata !"encode", metadata !"", metadata !424, i32 248, metadata !571, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @encode, null, null, metadata !573, i32 249} ; [ DW_TAG_subprogram ]
!571 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !572, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!572 = metadata !{metadata !427, metadata !427, metadata !427}
!573 = metadata !{metadata !574}
!574 = metadata !{i32 786468}                     ; [ DW_TAG_base_type ]
!575 = metadata !{i32 248, i32 13, metadata !570, null}
!576 = metadata !{i32 786689, metadata !570, metadata !"xin2", metadata !424, i32 33554680, metadata !427, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!577 = metadata !{i32 248, i32 23, metadata !570, null}
!578 = metadata !{i32 259, i32 3, metadata !579, null}
!579 = metadata !{i32 786443, metadata !570, i32 249, i32 1, metadata !424, i32 1} ; [ DW_TAG_lexical_block ]
!580 = metadata !{i32 786688, metadata !579, metadata !"xa", metadata !424, i32 253, metadata !581, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!581 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!582 = metadata !{i32 260, i32 3, metadata !579, null}
!583 = metadata !{i32 786688, metadata !579, metadata !"xb", metadata !424, i32 253, metadata !581, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!584 = metadata !{i32 262, i32 8, metadata !585, null}
!585 = metadata !{i32 786443, metadata !579, i32 262, i32 3, metadata !424, i32 2} ; [ DW_TAG_lexical_block ]
!586 = metadata !{i32 264, i32 7, metadata !587, null}
!587 = metadata !{i32 786443, metadata !585, i32 263, i32 5, metadata !424, i32 3} ; [ DW_TAG_lexical_block ]
!588 = metadata !{i32 786688, metadata !579, metadata !"tqmf_ptr", metadata !424, i32 252, metadata !589, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!589 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !427} ; [ DW_TAG_pointer_type ]
!590 = metadata !{i32 786688, metadata !579, metadata !"h_ptr", metadata !424, i32 251, metadata !591, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!591 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !426} ; [ DW_TAG_pointer_type ]
!592 = metadata !{i32 265, i32 7, metadata !587, null}
!593 = metadata !{i32 262, i32 23, metadata !585, null}
!594 = metadata !{i32 786688, metadata !579, metadata !"i", metadata !424, i32 250, metadata !427, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!595 = metadata !{i32 268, i32 3, metadata !579, null}
!596 = metadata !{i32 269, i32 3, metadata !579, null}
!597 = metadata !{i32 273, i32 8, metadata !598, null}
!598 = metadata !{i32 786443, metadata !579, i32 273, i32 3, metadata !424, i32 4} ; [ DW_TAG_lexical_block ]
!599 = metadata !{i32 272, i32 3, metadata !579, null}
!600 = metadata !{i32 786688, metadata !579, metadata !"tqmf_ptr1", metadata !424, i32 252, metadata !589, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!601 = metadata !{i32 274, i32 5, metadata !598, null}
!602 = metadata !{i32 273, i32 23, metadata !598, null}
!603 = metadata !{i32 275, i32 3, metadata !579, null}
!604 = metadata !{i32 276, i32 3, metadata !579, null}
!605 = metadata !{i32 279, i32 3, metadata !579, null}
!606 = metadata !{i32 280, i32 3, metadata !579, null}
!607 = metadata !{i32 585, i32 3, metadata !608, metadata !612}
!608 = metadata !{i32 786443, metadata !609, i32 582, i32 1, metadata !424, i32 20} ; [ DW_TAG_lexical_block ]
!609 = metadata !{i32 786478, i32 0, metadata !424, metadata !"filtez", metadata !"filtez", metadata !"", metadata !424, i32 581, metadata !610, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !573, i32 582} ; [ DW_TAG_subprogram ]
!610 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !611, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!611 = metadata !{metadata !427, metadata !589, metadata !589}
!612 = metadata !{i32 287, i32 9, metadata !579, null}
!613 = metadata !{i32 786688, metadata !608, metadata !"zl", metadata !424, i32 584, metadata !581, i32 0, metadata !612} ; [ DW_TAG_auto_variable ]
!614 = metadata !{i32 586, i32 8, metadata !615, metadata !612}
!615 = metadata !{i32 786443, metadata !608, i32 586, i32 3, metadata !424, i32 21} ; [ DW_TAG_lexical_block ]
!616 = metadata !{i32 786689, metadata !609, metadata !"dlt", metadata !424, i32 33555013, metadata !589, i32 0, metadata !612} ; [ DW_TAG_arg_variable ]
!617 = metadata !{i32 786689, metadata !609, metadata !"bpl", metadata !424, i32 16777797, metadata !589, i32 0, metadata !612} ; [ DW_TAG_arg_variable ]
!618 = metadata !{i32 587, i32 5, metadata !615, metadata !612}
!619 = metadata !{i32 586, i32 22, metadata !615, metadata !612}
!620 = metadata !{i32 589, i32 3, metadata !608, metadata !612}
!621 = metadata !{i32 290, i32 9, metadata !579, null}
!622 = metadata !{i32 786689, metadata !623, metadata !"rlt1", metadata !424, i32 16777812, metadata !427, i32 0, metadata !621} ; [ DW_TAG_arg_variable ]
!623 = metadata !{i32 786478, i32 0, metadata !424, metadata !"filtep", metadata !"filtep", metadata !"", metadata !424, i32 596, metadata !624, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !573, i32 597} ; [ DW_TAG_subprogram ]
!624 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !625, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!625 = metadata !{metadata !427, metadata !427, metadata !427, metadata !427, metadata !427}
!626 = metadata !{i32 596, i32 13, metadata !623, metadata !621}
!627 = metadata !{i32 786689, metadata !623, metadata !"al1", metadata !424, i32 33555028, metadata !427, i32 0, metadata !621} ; [ DW_TAG_arg_variable ]
!628 = metadata !{i32 596, i32 23, metadata !623, metadata !621}
!629 = metadata !{i32 786689, metadata !623, metadata !"rlt2", metadata !424, i32 50332244, metadata !427, i32 0, metadata !621} ; [ DW_TAG_arg_variable ]
!630 = metadata !{i32 596, i32 32, metadata !623, metadata !621}
!631 = metadata !{i32 786689, metadata !623, metadata !"al2", metadata !424, i32 67109460, metadata !427, i32 0, metadata !621} ; [ DW_TAG_arg_variable ]
!632 = metadata !{i32 596, i32 42, metadata !623, metadata !621}
!633 = metadata !{i32 599, i32 3, metadata !634, metadata !621}
!634 = metadata !{i32 786443, metadata !623, i32 597, i32 1, metadata !424, i32 22} ; [ DW_TAG_lexical_block ]
!635 = metadata !{i32 786688, metadata !634, metadata !"pl", metadata !424, i32 598, metadata !581, i32 0, metadata !621} ; [ DW_TAG_auto_variable ]
!636 = metadata !{i32 600, i32 3, metadata !634, metadata !621}
!637 = metadata !{i32 601, i32 3, metadata !634, metadata !621}
!638 = metadata !{i32 786688, metadata !634, metadata !"pl2", metadata !424, i32 598, metadata !581, i32 0, metadata !621} ; [ DW_TAG_auto_variable ]
!639 = metadata !{i32 602, i32 3, metadata !634, metadata !621}
!640 = metadata !{i32 603, i32 3, metadata !634, metadata !621}
!641 = metadata !{i32 293, i32 3, metadata !579, null}
!642 = metadata !{i32 294, i32 3, metadata !579, null}
!643 = metadata !{i32 297, i32 8, metadata !579, null}
!644 = metadata !{i32 786689, metadata !645, metadata !"el", metadata !424, i32 16777824, metadata !427, i32 0, metadata !643} ; [ DW_TAG_arg_variable ]
!645 = metadata !{i32 786478, i32 0, metadata !424, metadata !"quantl", metadata !"quantl", metadata !"", metadata !424, i32 608, metadata !571, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !573, i32 609} ; [ DW_TAG_subprogram ]
!646 = metadata !{i32 608, i32 13, metadata !645, metadata !643}
!647 = metadata !{i32 786689, metadata !645, metadata !"detl", metadata !424, i32 33555040, metadata !427, i32 0, metadata !643} ; [ DW_TAG_arg_variable ]
!648 = metadata !{i32 608, i32 21, metadata !645, metadata !643}
!649 = metadata !{i32 786689, metadata !650, metadata !"n", metadata !424, i32 16777452, metadata !427, i32 0, metadata !653} ; [ DW_TAG_arg_variable ]
!650 = metadata !{i32 786478, i32 0, metadata !424, metadata !"abs", metadata !"abs", metadata !"", metadata !424, i32 236, metadata !651, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !573, i32 237} ; [ DW_TAG_subprogram ]
!651 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !652, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!652 = metadata !{metadata !427, metadata !427}
!653 = metadata !{i32 614, i32 8, metadata !654, metadata !643}
!654 = metadata !{i32 786443, metadata !645, i32 609, i32 1, metadata !424, i32 23} ; [ DW_TAG_lexical_block ]
!655 = metadata !{i32 236, i32 10, metadata !650, metadata !653}
!656 = metadata !{i32 240, i32 3, metadata !657, metadata !653}
!657 = metadata !{i32 786443, metadata !650, i32 237, i32 1, metadata !424, i32 0} ; [ DW_TAG_lexical_block ]
!658 = metadata !{i32 243, i32 5, metadata !657, metadata !653}
!659 = metadata !{i32 786688, metadata !657, metadata !"m", metadata !424, i32 238, metadata !427, i32 0, metadata !653} ; [ DW_TAG_auto_variable ]
!660 = metadata !{i32 616, i32 8, metadata !661, metadata !643}
!661 = metadata !{i32 786443, metadata !654, i32 616, i32 3, metadata !424, i32 24} ; [ DW_TAG_lexical_block ]
!662 = metadata !{i32 618, i32 7, metadata !663, metadata !643}
!663 = metadata !{i32 786443, metadata !661, i32 617, i32 5, metadata !424, i32 25} ; [ DW_TAG_lexical_block ]
!664 = metadata !{i32 619, i32 7, metadata !663, metadata !643}
!665 = metadata !{i32 616, i32 27, metadata !661, metadata !643}
!666 = metadata !{i32 786688, metadata !654, metadata !"mil", metadata !424, i32 610, metadata !427, i32 0, metadata !643} ; [ DW_TAG_auto_variable ]
!667 = metadata !{i32 624, i32 5, metadata !654, metadata !643}
!668 = metadata !{i32 786688, metadata !654, metadata !"ril", metadata !424, i32 610, metadata !427, i32 0, metadata !643} ; [ DW_TAG_auto_variable ]
!669 = metadata !{i32 626, i32 5, metadata !654, metadata !643}
!670 = metadata !{i32 634, i32 13, metadata !671, metadata !672}
!671 = metadata !{i32 786478, i32 0, metadata !424, metadata !"logscl", metadata !"logscl", metadata !"", metadata !424, i32 634, metadata !571, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !573, i32 635} ; [ DW_TAG_subprogram ]
!672 = metadata !{i32 304, i32 9, metadata !579, null}
!673 = metadata !{i32 301, i32 3, metadata !579, null}
!674 = metadata !{i32 786689, metadata !671, metadata !"il", metadata !424, i32 16777850, metadata !427, i32 0, metadata !672} ; [ DW_TAG_arg_variable ]
!675 = metadata !{i32 786689, metadata !671, metadata !"nbl", metadata !424, i32 33555066, metadata !427, i32 0, metadata !672} ; [ DW_TAG_arg_variable ]
!676 = metadata !{i32 634, i32 21, metadata !671, metadata !672}
!677 = metadata !{i32 637, i32 3, metadata !678, metadata !672}
!678 = metadata !{i32 786443, metadata !671, i32 635, i32 1, metadata !424, i32 26} ; [ DW_TAG_lexical_block ]
!679 = metadata !{i32 638, i32 3, metadata !678, metadata !672}
!680 = metadata !{i32 639, i32 3, metadata !678, metadata !672}
!681 = metadata !{i32 641, i32 3, metadata !678, metadata !672}
!682 = metadata !{i32 786689, metadata !683, metadata !"nbl", metadata !424, i32 16777865, metadata !427, i32 0, metadata !684} ; [ DW_TAG_arg_variable ]
!683 = metadata !{i32 786478, i32 0, metadata !424, metadata !"scalel", metadata !"scalel", metadata !"", metadata !424, i32 649, metadata !571, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !573, i32 650} ; [ DW_TAG_subprogram ]
!684 = metadata !{i32 308, i32 10, metadata !579, null}
!685 = metadata !{i32 649, i32 13, metadata !683, metadata !684}
!686 = metadata !{i32 652, i32 3, metadata !687, metadata !684}
!687 = metadata !{i32 786443, metadata !683, i32 650, i32 1, metadata !424, i32 27} ; [ DW_TAG_lexical_block ]
!688 = metadata !{i32 786688, metadata !687, metadata !"wd1", metadata !424, i32 651, metadata !427, i32 0, metadata !684} ; [ DW_TAG_auto_variable ]
!689 = metadata !{i32 653, i32 3, metadata !687, metadata !684}
!690 = metadata !{i32 654, i32 3, metadata !687, metadata !684}
!691 = metadata !{i32 786688, metadata !687, metadata !"wd3", metadata !424, i32 651, metadata !427, i32 0, metadata !684} ; [ DW_TAG_auto_variable ]
!692 = metadata !{i32 655, i32 3, metadata !687, metadata !684}
!693 = metadata !{i32 311, i32 3, metadata !579, null}
!694 = metadata !{i32 317, i32 3, metadata !579, null}
!695 = metadata !{i32 321, i32 9, metadata !579, null}
!696 = metadata !{i32 786689, metadata !697, metadata !"al1", metadata !424, i32 16777914, metadata !427, i32 0, metadata !695} ; [ DW_TAG_arg_variable ]
!697 = metadata !{i32 786478, i32 0, metadata !424, metadata !"uppol2", metadata !"uppol2", metadata !"", metadata !424, i32 698, metadata !698, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !573, i32 699} ; [ DW_TAG_subprogram ]
!698 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !699, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!699 = metadata !{metadata !427, metadata !427, metadata !427, metadata !427, metadata !427, metadata !427}
!700 = metadata !{i32 698, i32 13, metadata !697, metadata !695}
!701 = metadata !{i32 786689, metadata !697, metadata !"al2", metadata !424, i32 33555130, metadata !427, i32 0, metadata !695} ; [ DW_TAG_arg_variable ]
!702 = metadata !{i32 698, i32 22, metadata !697, metadata !695}
!703 = metadata !{i32 786689, metadata !697, metadata !"plt", metadata !424, i32 50332346, metadata !427, i32 0, metadata !695} ; [ DW_TAG_arg_variable ]
!704 = metadata !{i32 698, i32 31, metadata !697, metadata !695}
!705 = metadata !{i32 786689, metadata !697, metadata !"plt1", metadata !424, i32 67109562, metadata !427, i32 0, metadata !695} ; [ DW_TAG_arg_variable ]
!706 = metadata !{i32 698, i32 40, metadata !697, metadata !695}
!707 = metadata !{i32 786689, metadata !697, metadata !"plt2", metadata !424, i32 83886778, metadata !427, i32 0, metadata !695} ; [ DW_TAG_arg_variable ]
!708 = metadata !{i32 698, i32 50, metadata !697, metadata !695}
!709 = metadata !{i32 702, i32 3, metadata !710, metadata !695}
!710 = metadata !{i32 786443, metadata !697, i32 699, i32 1, metadata !424, i32 35} ; [ DW_TAG_lexical_block ]
!711 = metadata !{i32 786688, metadata !710, metadata !"wd2", metadata !424, i32 700, metadata !581, i32 0, metadata !695} ; [ DW_TAG_auto_variable ]
!712 = metadata !{i32 703, i32 3, metadata !710, metadata !695}
!713 = metadata !{i32 704, i32 5, metadata !710, metadata !695}
!714 = metadata !{i32 705, i32 3, metadata !710, metadata !695}
!715 = metadata !{i32 714, i32 3, metadata !710, metadata !695}
!716 = metadata !{i32 706, i32 3, metadata !710, metadata !695}
!717 = metadata !{i32 786688, metadata !710, metadata !"apl2", metadata !424, i32 701, metadata !427, i32 0, metadata !695} ; [ DW_TAG_auto_variable ]
!718 = metadata !{i32 717, i32 3, metadata !710, metadata !695}
!719 = metadata !{i32 719, i32 3, metadata !710, metadata !695}
!720 = metadata !{i32 786689, metadata !721, metadata !"al1", metadata !424, i32 16777944, metadata !427, i32 0, metadata !722} ; [ DW_TAG_arg_variable ]
!721 = metadata !{i32 786478, i32 0, metadata !424, metadata !"uppol1", metadata !"uppol1", metadata !"", metadata !424, i32 728, metadata !624, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !573, i32 729} ; [ DW_TAG_subprogram ]
!722 = metadata !{i32 325, i32 9, metadata !579, null}
!723 = metadata !{i32 728, i32 13, metadata !721, metadata !722}
!724 = metadata !{i32 786689, metadata !721, metadata !"apl2", metadata !424, i32 33555160, metadata !427, i32 0, metadata !722} ; [ DW_TAG_arg_variable ]
!725 = metadata !{i32 728, i32 22, metadata !721, metadata !722}
!726 = metadata !{i32 786689, metadata !721, metadata !"plt", metadata !424, i32 50332376, metadata !427, i32 0, metadata !722} ; [ DW_TAG_arg_variable ]
!727 = metadata !{i32 728, i32 32, metadata !721, metadata !722}
!728 = metadata !{i32 786689, metadata !721, metadata !"plt1", metadata !424, i32 67109592, metadata !427, i32 0, metadata !722} ; [ DW_TAG_arg_variable ]
!729 = metadata !{i32 728, i32 41, metadata !721, metadata !722}
!730 = metadata !{i32 732, i32 3, metadata !731, metadata !722}
!731 = metadata !{i32 786443, metadata !721, i32 729, i32 1, metadata !424, i32 38} ; [ DW_TAG_lexical_block ]
!732 = metadata !{i32 735, i32 7, metadata !733, metadata !722}
!733 = metadata !{i32 786443, metadata !731, i32 734, i32 5, metadata !424, i32 39} ; [ DW_TAG_lexical_block ]
!734 = metadata !{i32 786688, metadata !731, metadata !"apl1", metadata !424, i32 731, metadata !427, i32 0, metadata !722} ; [ DW_TAG_auto_variable ]
!735 = metadata !{i32 739, i32 7, metadata !736, metadata !722}
!736 = metadata !{i32 786443, metadata !731, i32 738, i32 5, metadata !424, i32 40} ; [ DW_TAG_lexical_block ]
!737 = metadata !{i32 742, i32 3, metadata !731, metadata !722}
!738 = metadata !{i32 744, i32 5, metadata !731, metadata !722}
!739 = metadata !{i32 786688, metadata !731, metadata !"wd3", metadata !424, i32 731, metadata !427, i32 0, metadata !722} ; [ DW_TAG_auto_variable ]
!740 = metadata !{i32 743, i32 3, metadata !731, metadata !722}
!741 = metadata !{i32 745, i32 3, metadata !731, metadata !722}
!742 = metadata !{i32 746, i32 5, metadata !731, metadata !722}
!743 = metadata !{i32 328, i32 3, metadata !579, null}
!744 = metadata !{i32 331, i32 3, metadata !579, null}
!745 = metadata !{i32 332, i32 3, metadata !579, null}
!746 = metadata !{i32 333, i32 3, metadata !579, null}
!747 = metadata !{i32 334, i32 3, metadata !579, null}
!748 = metadata !{i32 585, i32 3, metadata !608, metadata !749}
!749 = metadata !{i32 338, i32 9, metadata !579, null}
!750 = metadata !{i32 786688, metadata !608, metadata !"zl", metadata !424, i32 584, metadata !581, i32 0, metadata !749} ; [ DW_TAG_auto_variable ]
!751 = metadata !{i32 586, i32 8, metadata !615, metadata !749}
!752 = metadata !{i32 786689, metadata !609, metadata !"dlt", metadata !424, i32 33555013, metadata !589, i32 0, metadata !749} ; [ DW_TAG_arg_variable ]
!753 = metadata !{i32 786689, metadata !609, metadata !"bpl", metadata !424, i32 16777797, metadata !589, i32 0, metadata !749} ; [ DW_TAG_arg_variable ]
!754 = metadata !{i32 587, i32 5, metadata !615, metadata !749}
!755 = metadata !{i32 586, i32 22, metadata !615, metadata !749}
!756 = metadata !{i32 589, i32 3, metadata !608, metadata !749}
!757 = metadata !{i32 340, i32 9, metadata !579, null}
!758 = metadata !{i32 786689, metadata !623, metadata !"rlt1", metadata !424, i32 16777812, metadata !427, i32 0, metadata !757} ; [ DW_TAG_arg_variable ]
!759 = metadata !{i32 596, i32 13, metadata !623, metadata !757}
!760 = metadata !{i32 786689, metadata !623, metadata !"al1", metadata !424, i32 33555028, metadata !427, i32 0, metadata !757} ; [ DW_TAG_arg_variable ]
!761 = metadata !{i32 596, i32 23, metadata !623, metadata !757}
!762 = metadata !{i32 786689, metadata !623, metadata !"rlt2", metadata !424, i32 50332244, metadata !427, i32 0, metadata !757} ; [ DW_TAG_arg_variable ]
!763 = metadata !{i32 596, i32 32, metadata !623, metadata !757}
!764 = metadata !{i32 786689, metadata !623, metadata !"al2", metadata !424, i32 67109460, metadata !427, i32 0, metadata !757} ; [ DW_TAG_arg_variable ]
!765 = metadata !{i32 596, i32 42, metadata !623, metadata !757}
!766 = metadata !{i32 599, i32 3, metadata !634, metadata !757}
!767 = metadata !{i32 786688, metadata !634, metadata !"pl", metadata !424, i32 598, metadata !581, i32 0, metadata !757} ; [ DW_TAG_auto_variable ]
!768 = metadata !{i32 600, i32 3, metadata !634, metadata !757}
!769 = metadata !{i32 601, i32 3, metadata !634, metadata !757}
!770 = metadata !{i32 786688, metadata !634, metadata !"pl2", metadata !424, i32 598, metadata !581, i32 0, metadata !757} ; [ DW_TAG_auto_variable ]
!771 = metadata !{i32 602, i32 3, metadata !634, metadata !757}
!772 = metadata !{i32 603, i32 3, metadata !634, metadata !757}
!773 = metadata !{i32 343, i32 3, metadata !579, null}
!774 = metadata !{i32 345, i32 3, metadata !579, null}
!775 = metadata !{i32 349, i32 3, metadata !579, null}
!776 = metadata !{i32 351, i32 7, metadata !777, null}
!777 = metadata !{i32 786443, metadata !579, i32 350, i32 5, metadata !424, i32 5} ; [ DW_TAG_lexical_block ]
!778 = metadata !{i32 357, i32 3, metadata !579, null}
!779 = metadata !{i32 786688, metadata !579, metadata !"decis", metadata !424, i32 254, metadata !427, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!780 = metadata !{i32 786689, metadata !650, metadata !"n", metadata !424, i32 16777452, metadata !427, i32 0, metadata !781} ; [ DW_TAG_arg_variable ]
!781 = metadata !{i32 358, i32 7, metadata !579, null}
!782 = metadata !{i32 236, i32 10, metadata !650, metadata !781}
!783 = metadata !{i32 240, i32 3, metadata !657, metadata !781}
!784 = metadata !{i32 243, i32 5, metadata !657, metadata !781}
!785 = metadata !{i32 786688, metadata !657, metadata !"m", metadata !424, i32 238, metadata !427, i32 0, metadata !781} ; [ DW_TAG_auto_variable ]
!786 = metadata !{i32 359, i32 5, metadata !579, null}
!787 = metadata !{i32 362, i32 3, metadata !579, null}
!788 = metadata !{i32 365, i32 9, metadata !579, null}
!789 = metadata !{i32 786689, metadata !790, metadata !"ih", metadata !424, i32 16777970, metadata !427, i32 0, metadata !788} ; [ DW_TAG_arg_variable ]
!790 = metadata !{i32 786478, i32 0, metadata !424, metadata !"logsch", metadata !"logsch", metadata !"", metadata !424, i32 754, metadata !571, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !573, i32 755} ; [ DW_TAG_subprogram ]
!791 = metadata !{i32 754, i32 13, metadata !790, metadata !788}
!792 = metadata !{i32 786689, metadata !790, metadata !"nbh", metadata !424, i32 33555186, metadata !427, i32 0, metadata !788} ; [ DW_TAG_arg_variable ]
!793 = metadata !{i32 754, i32 21, metadata !790, metadata !788}
!794 = metadata !{i32 757, i32 3, metadata !795, metadata !788}
!795 = metadata !{i32 786443, metadata !790, i32 755, i32 1, metadata !424, i32 41} ; [ DW_TAG_lexical_block ]
!796 = metadata !{i32 786688, metadata !795, metadata !"wd", metadata !424, i32 756, metadata !427, i32 0, metadata !788} ; [ DW_TAG_auto_variable ]
!797 = metadata !{i32 758, i32 3, metadata !795, metadata !788}
!798 = metadata !{i32 759, i32 3, metadata !795, metadata !788}
!799 = metadata !{i32 761, i32 3, metadata !795, metadata !788}
!800 = metadata !{i32 786689, metadata !683, metadata !"nbl", metadata !424, i32 16777865, metadata !427, i32 0, metadata !801} ; [ DW_TAG_arg_variable ]
!801 = metadata !{i32 368, i32 10, metadata !579, null}
!802 = metadata !{i32 649, i32 13, metadata !683, metadata !801}
!803 = metadata !{i32 652, i32 3, metadata !687, metadata !801}
!804 = metadata !{i32 786688, metadata !687, metadata !"wd1", metadata !424, i32 651, metadata !427, i32 0, metadata !801} ; [ DW_TAG_auto_variable ]
!805 = metadata !{i32 653, i32 3, metadata !687, metadata !801}
!806 = metadata !{i32 654, i32 3, metadata !687, metadata !801}
!807 = metadata !{i32 786688, metadata !687, metadata !"wd3", metadata !424, i32 651, metadata !427, i32 0, metadata !801} ; [ DW_TAG_auto_variable ]
!808 = metadata !{i32 655, i32 3, metadata !687, metadata !801}
!809 = metadata !{i32 371, i32 3, metadata !579, null}
!810 = metadata !{i32 376, i32 3, metadata !579, null}
!811 = metadata !{i32 380, i32 9, metadata !579, null}
!812 = metadata !{i32 786689, metadata !697, metadata !"al1", metadata !424, i32 16777914, metadata !427, i32 0, metadata !811} ; [ DW_TAG_arg_variable ]
!813 = metadata !{i32 698, i32 13, metadata !697, metadata !811}
!814 = metadata !{i32 786689, metadata !697, metadata !"al2", metadata !424, i32 33555130, metadata !427, i32 0, metadata !811} ; [ DW_TAG_arg_variable ]
!815 = metadata !{i32 698, i32 22, metadata !697, metadata !811}
!816 = metadata !{i32 786689, metadata !697, metadata !"plt", metadata !424, i32 50332346, metadata !427, i32 0, metadata !811} ; [ DW_TAG_arg_variable ]
!817 = metadata !{i32 698, i32 31, metadata !697, metadata !811}
!818 = metadata !{i32 786689, metadata !697, metadata !"plt1", metadata !424, i32 67109562, metadata !427, i32 0, metadata !811} ; [ DW_TAG_arg_variable ]
!819 = metadata !{i32 698, i32 40, metadata !697, metadata !811}
!820 = metadata !{i32 786689, metadata !697, metadata !"plt2", metadata !424, i32 83886778, metadata !427, i32 0, metadata !811} ; [ DW_TAG_arg_variable ]
!821 = metadata !{i32 698, i32 50, metadata !697, metadata !811}
!822 = metadata !{i32 702, i32 3, metadata !710, metadata !811}
!823 = metadata !{i32 786688, metadata !710, metadata !"wd2", metadata !424, i32 700, metadata !581, i32 0, metadata !811} ; [ DW_TAG_auto_variable ]
!824 = metadata !{i32 703, i32 3, metadata !710, metadata !811}
!825 = metadata !{i32 704, i32 5, metadata !710, metadata !811}
!826 = metadata !{i32 705, i32 3, metadata !710, metadata !811}
!827 = metadata !{i32 714, i32 3, metadata !710, metadata !811}
!828 = metadata !{i32 706, i32 3, metadata !710, metadata !811}
!829 = metadata !{i32 786688, metadata !710, metadata !"apl2", metadata !424, i32 701, metadata !427, i32 0, metadata !811} ; [ DW_TAG_auto_variable ]
!830 = metadata !{i32 717, i32 3, metadata !710, metadata !811}
!831 = metadata !{i32 719, i32 3, metadata !710, metadata !811}
!832 = metadata !{i32 786689, metadata !721, metadata !"al1", metadata !424, i32 16777944, metadata !427, i32 0, metadata !833} ; [ DW_TAG_arg_variable ]
!833 = metadata !{i32 383, i32 9, metadata !579, null}
!834 = metadata !{i32 728, i32 13, metadata !721, metadata !833}
!835 = metadata !{i32 786689, metadata !721, metadata !"apl2", metadata !424, i32 33555160, metadata !427, i32 0, metadata !833} ; [ DW_TAG_arg_variable ]
!836 = metadata !{i32 728, i32 22, metadata !721, metadata !833}
!837 = metadata !{i32 786689, metadata !721, metadata !"plt", metadata !424, i32 50332376, metadata !427, i32 0, metadata !833} ; [ DW_TAG_arg_variable ]
!838 = metadata !{i32 728, i32 32, metadata !721, metadata !833}
!839 = metadata !{i32 786689, metadata !721, metadata !"plt1", metadata !424, i32 67109592, metadata !427, i32 0, metadata !833} ; [ DW_TAG_arg_variable ]
!840 = metadata !{i32 728, i32 41, metadata !721, metadata !833}
!841 = metadata !{i32 732, i32 3, metadata !731, metadata !833}
!842 = metadata !{i32 735, i32 7, metadata !733, metadata !833}
!843 = metadata !{i32 786688, metadata !731, metadata !"apl1", metadata !424, i32 731, metadata !427, i32 0, metadata !833} ; [ DW_TAG_auto_variable ]
!844 = metadata !{i32 739, i32 7, metadata !736, metadata !833}
!845 = metadata !{i32 742, i32 3, metadata !731, metadata !833}
!846 = metadata !{i32 744, i32 5, metadata !731, metadata !833}
!847 = metadata !{i32 786688, metadata !731, metadata !"wd3", metadata !424, i32 731, metadata !427, i32 0, metadata !833} ; [ DW_TAG_auto_variable ]
!848 = metadata !{i32 743, i32 3, metadata !731, metadata !833}
!849 = metadata !{i32 745, i32 3, metadata !731, metadata !833}
!850 = metadata !{i32 746, i32 5, metadata !731, metadata !833}
!851 = metadata !{i32 386, i32 3, metadata !579, null}
!852 = metadata !{i32 389, i32 3, metadata !579, null}
!853 = metadata !{i32 390, i32 3, metadata !579, null}
!854 = metadata !{i32 391, i32 3, metadata !579, null}
!855 = metadata !{i32 392, i32 3, metadata !579, null}
!856 = metadata !{i32 395, i32 3, metadata !579, null}
!857 = metadata !{i32 786689, metadata !858, metadata !"dlt", metadata !424, i32 16777878, metadata !427, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!858 = metadata !{i32 786478, i32 0, metadata !424, metadata !"upzero", metadata !"upzero", metadata !"", metadata !424, i32 662, metadata !859, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !573, i32 663} ; [ DW_TAG_subprogram ]
!859 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !860, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!860 = metadata !{null, metadata !427, metadata !589, metadata !589}
!861 = metadata !{i32 662, i32 13, metadata !858, null}
!862 = metadata !{i32 786689, metadata !858, metadata !"dlti", null, i32 662, metadata !445, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!863 = metadata !{i32 662, i32 23, metadata !858, null}
!864 = metadata !{i32 786689, metadata !858, metadata !"bli", null, i32 662, metadata !445, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!865 = metadata !{i32 662, i32 34, metadata !858, null}
!866 = metadata !{i32 666, i32 3, metadata !867, null}
!867 = metadata !{i32 786443, metadata !858, i32 663, i32 1, metadata !424, i32 28} ; [ DW_TAG_lexical_block ]
!868 = metadata !{i32 677, i32 4, metadata !869, null}
!869 = metadata !{i32 786443, metadata !870, i32 676, i32 2, metadata !424, i32 34} ; [ DW_TAG_lexical_block ]
!870 = metadata !{i32 786443, metadata !871, i32 675, i32 7, metadata !424, i32 33} ; [ DW_TAG_lexical_block ]
!871 = metadata !{i32 786443, metadata !867, i32 674, i32 5, metadata !424, i32 32} ; [ DW_TAG_lexical_block ]
!872 = metadata !{i32 675, i32 12, metadata !870, null}
!873 = metadata !{i32 668, i32 12, metadata !874, null}
!874 = metadata !{i32 786443, metadata !875, i32 668, i32 7, metadata !424, i32 30} ; [ DW_TAG_lexical_block ]
!875 = metadata !{i32 786443, metadata !867, i32 667, i32 5, metadata !424, i32 29} ; [ DW_TAG_lexical_block ]
!876 = metadata !{i32 670, i32 4, metadata !877, null}
!877 = metadata !{i32 786443, metadata !874, i32 669, i32 2, metadata !424, i32 31} ; [ DW_TAG_lexical_block ]
!878 = metadata !{i32 668, i32 26, metadata !874, null}
!879 = metadata !{i32 786688, metadata !867, metadata !"i", metadata !424, i32 664, metadata !427, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!880 = metadata !{i32 681, i32 4, metadata !869, null}
!881 = metadata !{i32 786688, metadata !867, metadata !"wd3", metadata !424, i32 664, metadata !427, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!882 = metadata !{i32 682, i32 4, metadata !869, null}
!883 = metadata !{i32 675, i32 26, metadata !870, null}
!884 = metadata !{i32 686, i32 3, metadata !867, null}
!885 = metadata !{i32 687, i32 3, metadata !867, null}
!886 = metadata !{i32 688, i32 3, metadata !867, null}
!887 = metadata !{i32 689, i32 3, metadata !867, null}
!888 = metadata !{i32 690, i32 3, metadata !867, null}
!889 = metadata !{i32 691, i32 3, metadata !867, null}
!890 = metadata !{i32 692, i32 1, metadata !867, null}
