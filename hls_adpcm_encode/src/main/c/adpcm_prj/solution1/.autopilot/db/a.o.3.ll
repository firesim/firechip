; ModuleID = '/scratch/qijing.huang/firechip/hls_adpcm_encode/src/main/c/adpcm_prj/solution1/.autopilot/db/a.o.3.bc'
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
@encode_str = internal unnamed_addr constant [7 x i8] c"encode\00" ; [#uses=1 type=[7 x i8]*]
@qq2_code2_table_0 = constant i32 -7408           ; [#uses=0 type=i32*]
@qq2_code2_table_1 = constant i32 -1616           ; [#uses=0 type=i32*]
@qq2_code2_table_2 = constant i32 7408            ; [#uses=0 type=i32*]
@qq2_code2_table_3 = constant i32 1616            ; [#uses=0 type=i32*]
@wh_code_table_0 = constant i32 798               ; [#uses=0 type=i32*]
@wh_code_table_1 = constant i32 -214              ; [#uses=0 type=i32*]
@wh_code_table_2 = constant i32 798               ; [#uses=0 type=i32*]
@wh_code_table_3 = constant i32 -214              ; [#uses=0 type=i32*]
@h = constant [24 x i15] [i15 12, i15 -44, i15 -44, i15 212, i15 48, i15 -624, i15 128, i15 1448, i15 -840, i15 -3220, i15 3804, i15 15504, i15 15504, i15 3804, i15 -3220, i15 -840, i15 1448, i15 128, i15 -624, i15 48, i15 212, i15 -44, i15 -44, i15 12] ; [#uses=2 type=[24 x i15]*]
@decis_levl = constant [30 x i15] [i15 280, i15 576, i15 880, i15 1200, i15 1520, i15 1864, i15 2208, i15 2584, i15 2960, i15 3376, i15 3784, i15 4240, i15 4696, i15 5200, i15 5712, i15 6288, i15 6864, i15 7520, i15 8184, i15 8968, i15 9752, i15 10712, i15 11664, i15 12896, i15 14120, i15 15840, i15 -15208, i15 -12312, i15 -9416, i15 -1] ; [#uses=1 type=[30 x i15]*]
@quant26bt_pos = constant [31 x i6] [i6 -3, i6 -4, i6 -5, i6 -6, i6 -7, i6 -8, i6 -9, i6 -10, i6 -11, i6 -12, i6 -13, i6 -14, i6 -15, i6 -16, i6 -17, i6 -18, i6 -19, i6 -20, i6 -21, i6 -22, i6 -23, i6 -24, i6 -25, i6 -26, i6 -27, i6 -28, i6 -29, i6 -30, i6 -31, i6 -32, i6 -32] ; [#uses=1 type=[31 x i6]*]
@quant26bt_neg = constant [31 x i6] [i6 -1, i6 -2, i6 31, i6 30, i6 29, i6 28, i6 27, i6 26, i6 25, i6 24, i6 23, i6 22, i6 21, i6 20, i6 19, i6 18, i6 17, i6 16, i6 15, i6 14, i6 13, i6 12, i6 11, i6 10, i6 9, i6 8, i6 7, i6 6, i6 5, i6 4, i6 4] ; [#uses=1 type=[31 x i6]*]
@qq4_code4_table = constant [16 x i16] [i16 0, i16 -20456, i16 -12896, i16 -8968, i16 -6288, i16 -4240, i16 -2584, i16 -1200, i16 20456, i16 12896, i16 8968, i16 6288, i16 4240, i16 2584, i16 1200, i16 0] ; [#uses=1 type=[16 x i16]*]
@wl_code_table = constant [16 x i13] [i13 -60, i13 3042, i13 1198, i13 538, i13 334, i13 172, i13 58, i13 -30, i13 3042, i13 1198, i13 538, i13 334, i13 172, i13 58, i13 -30, i13 -60] ; [#uses=1 type=[16 x i13]*]
@ilb_table = constant [32 x i12] [i12 -2048, i12 -2003, i12 -1957, i12 -1910, i12 -1863, i12 -1814, i12 -1764, i12 -1713, i12 -1661, i12 -1607, i12 -1553, i12 -1497, i12 -1440, i12 -1382, i12 -1322, i12 -1262, i12 -1200, i12 -1136, i12 -1071, i12 -1005, i12 -938, i12 -868, i12 -798, i12 -725, i12 -652, i12 -576, i12 -499, i12 -420, i12 -340, i12 -258, i12 -174, i12 -88] ; [#uses=2 type=[32 x i12]*]

; [#uses=0]
define i32 @encode(i32 %xin1, i32 %xin2) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %xin1) nounwind, !map !420
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %xin2) nounwind, !map !426
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !430
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @encode_str) nounwind
  %xin2_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %xin2) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %xin2_read}, i64 0, metadata !436), !dbg !444 ; [debug line = 248:23] [debug variable = xin2]
  %xin1_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %xin1) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %xin1_read}, i64 0, metadata !445), !dbg !446 ; [debug line = 248:13] [debug variable = xin1]
  call void @llvm.dbg.value(metadata !{i32 %xin1}, i64 0, metadata !445), !dbg !446 ; [debug line = 248:13] [debug variable = xin1]
  call void @llvm.dbg.value(metadata !{i32 %xin2}, i64 0, metadata !436), !dbg !444 ; [debug line = 248:23] [debug variable = xin2]
  %tqmf_load = load i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 0), align 16, !dbg !447 ; [#uses=2 type=i32] [debug line = 259:3]
  %p_shl = call i36 @_ssdm_op_BitConcatenate.i36.i32.i4(i32 %tqmf_load, i4 0), !dbg !447 ; [#uses=1 type=i36] [debug line = 259:3]
  %p_shl_cast = sext i36 %p_shl to i37, !dbg !447 ; [#uses=1 type=i37] [debug line = 259:3]
  %p_shl1 = call i34 @_ssdm_op_BitConcatenate.i34.i32.i2(i32 %tqmf_load, i2 0), !dbg !447 ; [#uses=1 type=i34] [debug line = 259:3]
  %p_shl1_cast = sext i34 %p_shl1 to i37, !dbg !447 ; [#uses=1 type=i37] [debug line = 259:3]
  %xa = sub i37 %p_shl_cast, %p_shl1_cast, !dbg !447 ; [#uses=1 type=i37] [debug line = 259:3]
  %xa_cast = sext i37 %xa to i50, !dbg !447       ; [#uses=1 type=i50] [debug line = 259:3]
  call void @llvm.dbg.value(metadata !{i37 %xa}, i64 0, metadata !449), !dbg !447 ; [debug line = 259:3] [debug variable = xa]
  %tqmf_load_1 = load i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 1), align 4, !dbg !451 ; [#uses=1 type=i32] [debug line = 260:3]
  %tmp_3_cast = sext i32 %tqmf_load_1 to i39, !dbg !451 ; [#uses=1 type=i39] [debug line = 260:3]
  %xb = mul i39 %tmp_3_cast, -44, !dbg !451       ; [#uses=1 type=i39] [debug line = 260:3]
  %xb_cast = sext i39 %xb to i50, !dbg !451       ; [#uses=1 type=i50] [debug line = 260:3]
  call void @llvm.dbg.value(metadata !{i39 %xb}, i64 0, metadata !452), !dbg !451 ; [debug line = 260:3] [debug variable = xb]
  br label %1, !dbg !453                          ; [debug line = 262:8]

; <label>:1                                       ; preds = %2, %0
  %tqmf_ptr_0_rec = phi i5 [ 2, %0 ], [ %phitmp, %2 ] ; [#uses=3 type=i5]
  %i = phi i4 [ 0, %0 ], [ %i_2, %2 ]             ; [#uses=2 type=i4]
  %xa1 = phi i50 [ %xa_cast, %0 ], [ %xa_2, %2 ]  ; [#uses=2 type=i50]
  %xb1 = phi i50 [ %xb_cast, %0 ], [ %xb_2, %2 ]  ; [#uses=2 type=i50]
  %tqmf_ptr_0_rec_cast = zext i5 %tqmf_ptr_0_rec to i64 ; [#uses=2 type=i64]
  %h_addr = getelementptr [24 x i15]* @h, i64 0, i64 %tqmf_ptr_0_rec_cast ; [#uses=1 type=i15*]
  %tqmf_addr = getelementptr [24 x i32]* @tqmf, i64 0, i64 %tqmf_ptr_0_rec_cast ; [#uses=1 type=i32*]
  %exitcond2 = icmp eq i4 %i, -6, !dbg !453       ; [#uses=1 type=i1] [debug line = 262:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  %i_2 = add i4 %i, 1, !dbg !455                  ; [#uses=1 type=i4] [debug line = 262:23]
  br i1 %exitcond2, label %3, label %2, !dbg !453 ; [debug line = 262:8]

; <label>:2                                       ; preds = %1
  %tqmf_ptr_0_sum1 = or i5 %tqmf_ptr_0_rec, 1, !dbg !456 ; [#uses=1 type=i5] [debug line = 264:7]
  %tqmf_ptr_0_sum1_cast = zext i5 %tqmf_ptr_0_sum1 to i64, !dbg !456 ; [#uses=2 type=i64] [debug line = 264:7]
  %tqmf_ptr = getelementptr [24 x i32]* @tqmf, i64 0, i64 %tqmf_ptr_0_sum1_cast, !dbg !456 ; [#uses=1 type=i32*] [debug line = 264:7]
  call void @llvm.dbg.value(metadata !{i32* %tqmf_ptr}, i64 0, metadata !458), !dbg !456 ; [debug line = 264:7] [debug variable = tqmf_ptr]
  %tqmf_load_4 = load i32* %tqmf_addr, align 8, !dbg !456 ; [#uses=1 type=i32] [debug line = 264:7]
  %tmp_cast = sext i32 %tqmf_load_4 to i46, !dbg !456 ; [#uses=1 type=i46] [debug line = 264:7]
  %h_ptr = getelementptr [24 x i15]* @h, i64 0, i64 %tqmf_ptr_0_sum1_cast, !dbg !456 ; [#uses=1 type=i15*] [debug line = 264:7]
  call void @llvm.dbg.value(metadata !{i15* %h_ptr}, i64 0, metadata !460), !dbg !456 ; [debug line = 264:7] [debug variable = h_ptr]
  %h_load = load i15* %h_addr, align 4, !dbg !456 ; [#uses=1 type=i15] [debug line = 264:7]
  %tmp_1_cast = sext i15 %h_load to i46, !dbg !456 ; [#uses=1 type=i46] [debug line = 264:7]
  %tmp_2 = mul i46 %tmp_1_cast, %tmp_cast, !dbg !456 ; [#uses=1 type=i46] [debug line = 264:7]
  %tmp_2_cast = sext i46 %tmp_2 to i50, !dbg !456 ; [#uses=1 type=i50] [debug line = 264:7]
  %xa_2 = add i50 %tmp_2_cast, %xa1, !dbg !456    ; [#uses=1 type=i50] [debug line = 264:7]
  call void @llvm.dbg.value(metadata !{i50 %xa_2}, i64 0, metadata !449), !dbg !456 ; [debug line = 264:7] [debug variable = xa]
  %tqmf_ptr_load = load i32* %tqmf_ptr, align 4, !dbg !463 ; [#uses=1 type=i32] [debug line = 265:7]
  %tmp_4_cast = sext i32 %tqmf_ptr_load to i46, !dbg !463 ; [#uses=1 type=i46] [debug line = 265:7]
  %h_ptr_load = load i15* %h_ptr, align 2, !dbg !463 ; [#uses=1 type=i15] [debug line = 265:7]
  %tmp_7_cast = sext i15 %h_ptr_load to i46, !dbg !463 ; [#uses=1 type=i46] [debug line = 265:7]
  %tmp_s = mul i46 %tmp_7_cast, %tmp_4_cast, !dbg !463 ; [#uses=1 type=i46] [debug line = 265:7]
  %tmp_10_cast = sext i46 %tmp_s to i50, !dbg !463 ; [#uses=1 type=i50] [debug line = 265:7]
  %xb_2 = add i50 %tmp_10_cast, %xb1, !dbg !463   ; [#uses=1 type=i50] [debug line = 265:7]
  call void @llvm.dbg.value(metadata !{i50 %xb_2}, i64 0, metadata !452), !dbg !463 ; [debug line = 265:7] [debug variable = xb]
  call void @llvm.dbg.value(metadata !{i4 %i_2}, i64 0, metadata !464), !dbg !455 ; [debug line = 262:23] [debug variable = i]
  %phitmp = add i5 %tqmf_ptr_0_rec, 2, !dbg !455  ; [#uses=1 type=i5] [debug line = 262:23]
  br label %1, !dbg !455                          ; [debug line = 262:23]

; <label>:3                                       ; preds = %1
  %tqmf_load_2 = load i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 22), align 8, !dbg !465 ; [#uses=1 type=i32] [debug line = 268:3]
  %tmp_5_cast = sext i32 %tqmf_load_2 to i39, !dbg !465 ; [#uses=1 type=i39] [debug line = 268:3]
  %tmp_6 = mul i39 -44, %tmp_5_cast, !dbg !465    ; [#uses=1 type=i39] [debug line = 268:3]
  %tmp_6_cast = sext i39 %tmp_6 to i50, !dbg !465 ; [#uses=1 type=i50] [debug line = 268:3]
  %xa_1 = add i50 %xa1, %tmp_6_cast, !dbg !465    ; [#uses=2 type=i50] [debug line = 268:3]
  %xa_1_cast1 = zext i50 %xa_1 to i51, !dbg !465  ; [#uses=1 type=i51] [debug line = 268:3]
  %tmp = trunc i50 %xa_1 to i47, !dbg !465        ; [#uses=1 type=i47] [debug line = 268:3]
  call void @llvm.dbg.value(metadata !{i50 %xa_1}, i64 0, metadata !449), !dbg !465 ; [debug line = 268:3] [debug variable = xa]
  %tqmf_load_3 = load i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 23), align 4, !dbg !466 ; [#uses=2 type=i32] [debug line = 269:3]
  %p_shl2 = call i36 @_ssdm_op_BitConcatenate.i36.i32.i4(i32 %tqmf_load_3, i4 0), !dbg !466 ; [#uses=1 type=i36] [debug line = 269:3]
  %p_shl2_cast = sext i36 %p_shl2 to i37, !dbg !466 ; [#uses=1 type=i37] [debug line = 269:3]
  %p_shl3 = call i34 @_ssdm_op_BitConcatenate.i34.i32.i2(i32 %tqmf_load_3, i2 0), !dbg !466 ; [#uses=1 type=i34] [debug line = 269:3]
  %p_shl3_cast = sext i34 %p_shl3 to i37, !dbg !466 ; [#uses=1 type=i37] [debug line = 269:3]
  %tmp_9 = sub i37 %p_shl2_cast, %p_shl3_cast, !dbg !466 ; [#uses=1 type=i37] [debug line = 269:3]
  %tmp_9_cast = sext i37 %tmp_9 to i50, !dbg !466 ; [#uses=1 type=i50] [debug line = 269:3]
  %xb_1 = add i50 %xb1, %tmp_9_cast, !dbg !466    ; [#uses=2 type=i50] [debug line = 269:3]
  %xb_1_cast1 = zext i50 %xb_1 to i51, !dbg !466  ; [#uses=1 type=i51] [debug line = 269:3]
  %tmp_3 = trunc i50 %xb_1 to i47, !dbg !466      ; [#uses=1 type=i47] [debug line = 269:3]
  call void @llvm.dbg.value(metadata !{i50 %xb_1}, i64 0, metadata !452), !dbg !466 ; [debug line = 269:3] [debug variable = xb]
  br label %4, !dbg !467                          ; [debug line = 273:8]

; <label>:4                                       ; preds = %5, %3
  %tqmf_ptr_0_pn_rec = phi i6 [ 0, %3 ], [ %tqmf_ptr1_0_rec, %5 ] ; [#uses=3 type=i6]
  %i_1 = phi i5 [ 0, %3 ], [ %i_3, %5 ]           ; [#uses=2 type=i5]
  %tmp_15 = trunc i6 %tqmf_ptr_0_pn_rec to i5     ; [#uses=1 type=i5]
  %p_sum = add i5 -9, %tmp_15                     ; [#uses=1 type=i5]
  %p_sum_cast = zext i5 %p_sum to i64             ; [#uses=1 type=i64]
  %tqmf_addr_2 = getelementptr [24 x i32]* @tqmf, i64 0, i64 %p_sum_cast ; [#uses=1 type=i32*]
  %tqmf_ptr1_0_rec = add i6 -1, %tqmf_ptr_0_pn_rec, !dbg !469 ; [#uses=1 type=i6] [debug line = 272:3]
  %tqmf_ptr_0_sum = add i6 21, %tqmf_ptr_0_pn_rec, !dbg !469 ; [#uses=1 type=i6] [debug line = 272:3]
  %tqmf_ptr_0_sum_cast = zext i6 %tqmf_ptr_0_sum to i64, !dbg !469 ; [#uses=1 type=i64] [debug line = 272:3]
  %tqmf_ptr1 = getelementptr [24 x i32]* @tqmf, i64 0, i64 %tqmf_ptr_0_sum_cast, !dbg !469 ; [#uses=1 type=i32*] [debug line = 272:3]
  call void @llvm.dbg.value(metadata !{i32* %tqmf_ptr1}, i64 0, metadata !470), !dbg !469 ; [debug line = 272:3] [debug variable = tqmf_ptr1]
  %exitcond = icmp eq i5 %i_1, -10, !dbg !467     ; [#uses=1 type=i1] [debug line = 273:8]
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 22, i64 22, i64 22) nounwind ; [#uses=0 type=i32]
  %i_3 = add i5 1, %i_1, !dbg !471                ; [#uses=1 type=i5] [debug line = 273:23]
  br i1 %exitcond, label %6, label %5, !dbg !467  ; [debug line = 273:8]

; <label>:5                                       ; preds = %4
  %tqmf_ptr1_load = load i32* %tqmf_ptr1, align 4, !dbg !472 ; [#uses=1 type=i32] [debug line = 274:5]
  store i32 %tqmf_ptr1_load, i32* %tqmf_addr_2, align 4, !dbg !472 ; [debug line = 274:5]
  call void @llvm.dbg.value(metadata !{i5 %i_3}, i64 0, metadata !464), !dbg !471 ; [debug line = 273:23] [debug variable = i]
  br label %4, !dbg !471                          ; [debug line = 273:23]

; <label>:6                                       ; preds = %4
  store i32 %xin1_read, i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 1), align 4, !dbg !473 ; [debug line = 275:3]
  store i32 %xin2_read, i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 0), align 16, !dbg !474 ; [debug line = 276:3]
  %tmp_1 = add i51 %xa_1_cast1, %xb_1_cast1, !dbg !475 ; [#uses=1 type=i51] [debug line = 279:3]
  %tmp_4 = call i32 @_ssdm_op_PartSelect.i32.i51.i32.i32(i51 %tmp_1, i32 15, i32 46), !dbg !475 ; [#uses=2 type=i32] [debug line = 279:3]
  store i32 %tmp_4, i32* @xl, align 4, !dbg !475  ; [debug line = 279:3]
  %tmp_5 = sub i47 %tmp, %tmp_3, !dbg !476        ; [#uses=1 type=i47] [debug line = 280:3]
  %tmp_8 = call i32 @_ssdm_op_PartSelect.i32.i47.i32.i32(i47 %tmp_5, i32 15, i32 46), !dbg !476 ; [#uses=1 type=i32] [debug line = 280:3]
  store i32 %tmp_8, i32* @xh, align 4, !dbg !476  ; [debug line = 280:3]
  %delay_bpl_load = load i32* getelementptr inbounds ([6 x i32]* @delay_bpl, i64 0, i64 0), align 16, !dbg !477 ; [#uses=1 type=i32] [debug line = 585:3@287:9]
  %tmp_i = sext i32 %delay_bpl_load to i64, !dbg !477 ; [#uses=1 type=i64] [debug line = 585:3@287:9]
  %delay_dltx_load = load i32* getelementptr inbounds ([6 x i32]* @delay_dltx, i64 0, i64 0), align 16, !dbg !477 ; [#uses=1 type=i32] [debug line = 585:3@287:9]
  %tmp_i_23 = sext i32 %delay_dltx_load to i64, !dbg !477 ; [#uses=1 type=i64] [debug line = 585:3@287:9]
  %zl = mul nsw i64 %tmp_i_23, %tmp_i, !dbg !477  ; [#uses=1 type=i64] [debug line = 585:3@287:9]
  call void @llvm.dbg.value(metadata !{i64 %zl}, i64 0, metadata !483) nounwind, !dbg !477 ; [debug line = 585:3@287:9] [debug variable = zl]
  br label %7, !dbg !484                          ; [debug line = 586:8@287:9]

; <label>:7                                       ; preds = %8, %6
  %zl1_i = phi i64 [ %zl, %6 ], [ %zl_1, %8 ]     ; [#uses=2 type=i64]
  %dlt_pn_rec_i = phi i3 [ 0, %6 ], [ %p_01_rec_i, %8 ] ; [#uses=2 type=i3]
  %p_01_rec_i = add i3 %dlt_pn_rec_i, 1, !dbg !477 ; [#uses=2 type=i3] [debug line = 585:3@287:9]
  %p_01_rec_i_cast = zext i3 %p_01_rec_i to i64, !dbg !477 ; [#uses=2 type=i64] [debug line = 585:3@287:9]
  %delay_dltx_addr = getelementptr [6 x i32]* @delay_dltx, i64 0, i64 %p_01_rec_i_cast, !dbg !477 ; [#uses=1 type=i32*] [debug line = 585:3@287:9]
  call void @llvm.dbg.value(metadata !{i32* %delay_dltx_addr}, i64 0, metadata !486) nounwind, !dbg !477 ; [debug line = 585:3@287:9] [debug variable = dlt]
  %delay_bpl_addr = getelementptr [6 x i32]* @delay_bpl, i64 0, i64 %p_01_rec_i_cast, !dbg !477 ; [#uses=1 type=i32*] [debug line = 585:3@287:9]
  call void @llvm.dbg.value(metadata !{i32* %delay_bpl_addr}, i64 0, metadata !487) nounwind, !dbg !477 ; [debug line = 585:3@287:9] [debug variable = bpl]
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind ; [#uses=0 type=i32]
  %exitcond3 = icmp eq i3 %dlt_pn_rec_i, -3, !dbg !484 ; [#uses=1 type=i1] [debug line = 586:8@287:9]
  br i1 %exitcond3, label %filtez.exit, label %8, !dbg !484 ; [debug line = 586:8@287:9]

; <label>:8                                       ; preds = %7
  %delay_bpl_load_1 = load i32* %delay_bpl_addr, align 4, !dbg !488 ; [#uses=1 type=i32] [debug line = 587:5@287:9]
  %tmp_64_i = sext i32 %delay_bpl_load_1 to i64, !dbg !488 ; [#uses=1 type=i64] [debug line = 587:5@287:9]
  %delay_dltx_load_1 = load i32* %delay_dltx_addr, align 4, !dbg !488 ; [#uses=1 type=i32] [debug line = 587:5@287:9]
  %tmp_65_i = sext i32 %delay_dltx_load_1 to i64, !dbg !488 ; [#uses=1 type=i64] [debug line = 587:5@287:9]
  %tmp_66_i = mul nsw i64 %tmp_65_i, %tmp_64_i, !dbg !488 ; [#uses=1 type=i64] [debug line = 587:5@287:9]
  %zl_1 = add nsw i64 %tmp_66_i, %zl1_i, !dbg !488 ; [#uses=1 type=i64] [debug line = 587:5@287:9]
  call void @llvm.dbg.value(metadata !{i64 %zl_1}, i64 0, metadata !483) nounwind, !dbg !488 ; [debug line = 587:5@287:9] [debug variable = zl]
  br label %7, !dbg !489                          ; [debug line = 586:22@287:9]

filtez.exit:                                      ; preds = %7
  %tmp_63_i = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %zl1_i, i32 14, i32 45), !dbg !490 ; [#uses=3 type=i32] [debug line = 589:3@287:9]
  store i32 %tmp_63_i, i32* @szl, align 4, !dbg !482 ; [debug line = 287:9]
  %rlt1_load_1 = load i32* @rlt1, align 4, !dbg !491 ; [#uses=1 type=i32] [debug line = 290:9]
  %al1_load = load i32* @al1, align 4, !dbg !491  ; [#uses=1 type=i32] [debug line = 290:9]
  %rlt2_load = load i32* @rlt2, align 4, !dbg !491 ; [#uses=1 type=i32] [debug line = 290:9]
  %al2_load = load i32* @al2, align 4, !dbg !491  ; [#uses=1 type=i32] [debug line = 290:9]
  call void @llvm.dbg.value(metadata !{i32 %rlt1_load_1}, i64 0, metadata !492), !dbg !496 ; [debug line = 596:13@290:9] [debug variable = rlt1]
  call void @llvm.dbg.value(metadata !{i32 %al1_load}, i64 0, metadata !497), !dbg !498 ; [debug line = 596:23@290:9] [debug variable = al1]
  call void @llvm.dbg.value(metadata !{i32 %rlt2_load}, i64 0, metadata !499), !dbg !500 ; [debug line = 596:32@290:9] [debug variable = rlt2]
  call void @llvm.dbg.value(metadata !{i32 %al2_load}, i64 0, metadata !501), !dbg !502 ; [debug line = 596:42@290:9] [debug variable = al2]
  %tmp_19 = shl i32 %rlt1_load_1, 1, !dbg !503    ; [#uses=1 type=i32] [debug line = 599:3@290:9]
  %pl = sext i32 %tmp_19 to i64, !dbg !503        ; [#uses=1 type=i64] [debug line = 599:3@290:9]
  call void @llvm.dbg.value(metadata !{i64 %pl}, i64 0, metadata !505), !dbg !503 ; [debug line = 599:3@290:9] [debug variable = pl]
  %tmp_i1 = sext i32 %al1_load to i64, !dbg !506  ; [#uses=1 type=i64] [debug line = 600:3@290:9]
  %pl_1 = mul nsw i64 %tmp_i1, %pl, !dbg !506     ; [#uses=1 type=i64] [debug line = 600:3@290:9]
  call void @llvm.dbg.value(metadata !{i64 %pl_1}, i64 0, metadata !505), !dbg !506 ; [debug line = 600:3@290:9] [debug variable = pl]
  %tmp_22 = shl i32 %rlt2_load, 1, !dbg !507      ; [#uses=1 type=i32] [debug line = 601:3@290:9]
  %pl2 = sext i32 %tmp_22 to i64, !dbg !507       ; [#uses=1 type=i64] [debug line = 601:3@290:9]
  call void @llvm.dbg.value(metadata !{i64 %pl2}, i64 0, metadata !508), !dbg !507 ; [debug line = 601:3@290:9] [debug variable = pl2]
  %tmp_63_i1 = sext i32 %al2_load to i64, !dbg !509 ; [#uses=1 type=i64] [debug line = 602:3@290:9]
  %tmp_64_i1 = mul nsw i64 %tmp_63_i1, %pl2, !dbg !509 ; [#uses=1 type=i64] [debug line = 602:3@290:9]
  %pl_2 = add nsw i64 %tmp_64_i1, %pl_1, !dbg !509 ; [#uses=1 type=i64] [debug line = 602:3@290:9]
  call void @llvm.dbg.value(metadata !{i64 %pl_2}, i64 0, metadata !505), !dbg !509 ; [debug line = 602:3@290:9] [debug variable = pl]
  %tmp_66_i1 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %pl_2, i32 15, i32 46), !dbg !510 ; [#uses=2 type=i32] [debug line = 603:3@290:9]
  store i32 %tmp_66_i1, i32* @spl, align 4, !dbg !491 ; [debug line = 290:9]
  %tmp_7 = add nsw i32 %tmp_66_i1, %tmp_63_i, !dbg !511 ; [#uses=2 type=i32] [debug line = 293:3]
  store i32 %tmp_7, i32* @sl, align 4, !dbg !511  ; [debug line = 293:3]
  %el_assign = sub nsw i32 %tmp_4, %tmp_7, !dbg !512 ; [#uses=4 type=i32] [debug line = 294:3]
  store i32 %el_assign, i32* @el, align 4, !dbg !512 ; [debug line = 294:3]
  %detl_load = load i32* @detl, align 4, !dbg !513 ; [#uses=1 type=i32] [debug line = 297:8]
  call void @llvm.dbg.value(metadata !{i32 %el_assign}, i64 0, metadata !514) nounwind, !dbg !516 ; [debug line = 608:13@297:8] [debug variable = el]
  call void @llvm.dbg.value(metadata !{i32 %detl_load}, i64 0, metadata !517) nounwind, !dbg !518 ; [debug line = 608:21@297:8] [debug variable = detl]
  call void @llvm.dbg.value(metadata !{i32 %el_assign}, i64 0, metadata !519) nounwind, !dbg !525 ; [debug line = 236:10@614:8@297:8] [debug variable = n]
  %tmp_23 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %el_assign, i32 31), !dbg !526 ; [#uses=2 type=i1] [debug line = 240:3@614:8@297:8]
  %m = sub nsw i32 0, %el_assign, !dbg !528       ; [#uses=1 type=i32] [debug line = 243:5@614:8@297:8]
  call void @llvm.dbg.value(metadata !{i32 %m}, i64 0, metadata !529) nounwind, !dbg !528 ; [debug line = 243:5@614:8@297:8] [debug variable = m]
  %n_assign_1 = select i1 %tmp_23, i32 %m, i32 %el_assign, !dbg !526 ; [#uses=1 type=i32] [debug line = 240:3@614:8@297:8]
  call void @llvm.dbg.value(metadata !{i32 %n_assign_1}, i64 0, metadata !519) nounwind, !dbg !526 ; [debug line = 240:3@614:8@297:8] [debug variable = n]
  %tmp_i2_cast = sext i32 %detl_load to i47, !dbg !530 ; [#uses=2 type=i47] [debug line = 616:8@297:8]
  br label %9, !dbg !530                          ; [debug line = 616:8@297:8]

; <label>:9                                       ; preds = %10, %filtez.exit
  %mil_i = phi i5 [ 0, %filtez.exit ], [ %mil, %10 ] ; [#uses=4 type=i5]
  %tmp_67_i = icmp ult i5 %mil_i, -2, !dbg !530   ; [#uses=1 type=i1] [debug line = 616:8@297:8]
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 30, i64 15) nounwind ; [#uses=0 type=i32]
  %mil = add i5 %mil_i, 1, !dbg !532              ; [#uses=1 type=i5] [debug line = 616:27@297:8]
  call void @llvm.dbg.value(metadata !{i5 %mil}, i64 0, metadata !533) nounwind, !dbg !532 ; [debug line = 616:27@297:8] [debug variable = mil]
  br i1 %tmp_67_i, label %10, label %.loopexit.i_ifconv, !dbg !530 ; [debug line = 616:8@297:8]

; <label>:10                                      ; preds = %9
  %tmp_68_i = zext i5 %mil_i to i64, !dbg !534    ; [#uses=1 type=i64] [debug line = 618:7@297:8]
  %decis_levl_addr = getelementptr [30 x i15]* @decis_levl, i64 0, i64 %tmp_68_i, !dbg !534 ; [#uses=1 type=i15*] [debug line = 618:7@297:8]
  %decis_levl_load = load i15* %decis_levl_addr, align 2, !dbg !534 ; [#uses=1 type=i15] [debug line = 618:7@297:8]
  %tmp_69_i_cast = zext i15 %decis_levl_load to i47, !dbg !534 ; [#uses=1 type=i47] [debug line = 618:7@297:8]
  %tmp_70_i = mul i47 %tmp_69_i_cast, %tmp_i2_cast, !dbg !534 ; [#uses=1 type=i47] [debug line = 618:7@297:8]
  %tmp_10 = call i32 @_ssdm_op_PartSelect.i32.i47.i32.i32(i47 %tmp_70_i, i32 15, i32 46), !dbg !534 ; [#uses=1 type=i32] [debug line = 618:7@297:8]
  %tmp_71_i = icmp sgt i32 %n_assign_1, %tmp_10, !dbg !536 ; [#uses=1 type=i1] [debug line = 619:7@297:8]
  br i1 %tmp_71_i, label %9, label %.loopexit.i_ifconv, !dbg !536 ; [debug line = 619:7@297:8]

.loopexit.i_ifconv:                               ; preds = %10, %9
  %tmp_73_i = zext i5 %mil_i to i64, !dbg !537    ; [#uses=2 type=i64] [debug line = 624:5@297:8]
  %quant26bt_pos_addr = getelementptr [31 x i6]* @quant26bt_pos, i64 0, i64 %tmp_73_i, !dbg !537 ; [#uses=1 type=i6*] [debug line = 624:5@297:8]
  %ril = load i6* %quant26bt_pos_addr, align 1, !dbg !537 ; [#uses=1 type=i6] [debug line = 624:5@297:8]
  call void @llvm.dbg.value(metadata !{i6 %ril}, i64 0, metadata !538) nounwind, !dbg !537 ; [debug line = 624:5@297:8] [debug variable = ril]
  %quant26bt_neg_addr = getelementptr [31 x i6]* @quant26bt_neg, i64 0, i64 %tmp_73_i, !dbg !539 ; [#uses=1 type=i6*] [debug line = 626:5@297:8]
  %ril_1 = load i6* %quant26bt_neg_addr, align 1, !dbg !539 ; [#uses=1 type=i6] [debug line = 626:5@297:8]
  call void @llvm.dbg.value(metadata !{i6 %ril_1}, i64 0, metadata !538) nounwind, !dbg !539 ; [debug line = 626:5@297:8] [debug variable = ril]
  %ril_2 = select i1 %tmp_23, i6 %ril_1, i6 %ril, !dbg !540 ; [#uses=2 type=i6] [debug line = 634:13@304:9]
  %il_assign_cast = zext i6 %ril_2 to i32, !dbg !540 ; [#uses=1 type=i32] [debug line = 634:13@304:9]
  call void @llvm.dbg.value(metadata !{i6 %ril_2}, i64 0, metadata !538) nounwind, !dbg !539 ; [debug line = 626:5@297:8] [debug variable = ril]
  store i32 %il_assign_cast, i32* @il, align 4, !dbg !513 ; [debug line = 297:8]
  %tmp_11 = call i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6 %ril_2, i32 2, i32 5), !dbg !543 ; [#uses=1 type=i4] [debug line = 301:3]
  %tmp_12 = zext i4 %tmp_11 to i64, !dbg !543     ; [#uses=2 type=i64] [debug line = 301:3]
  %qq4_code4_table_addr = getelementptr [16 x i16]* @qq4_code4_table, i64 0, i64 %tmp_12, !dbg !543 ; [#uses=1 type=i16*] [debug line = 301:3]
  %qq4_code4_table_load = load i16* %qq4_code4_table_addr, align 2, !dbg !543 ; [#uses=1 type=i16] [debug line = 301:3]
  %tmp_23_cast = sext i16 %qq4_code4_table_load to i47, !dbg !543 ; [#uses=1 type=i47] [debug line = 301:3]
  %tmp_13 = mul i47 %tmp_i2_cast, %tmp_23_cast, !dbg !543 ; [#uses=1 type=i47] [debug line = 301:3]
  %tmp_14 = call i32 @_ssdm_op_PartSelect.i32.i47.i32.i32(i47 %tmp_13, i32 15, i32 46), !dbg !543 ; [#uses=3 type=i32] [debug line = 301:3]
  store i32 %tmp_14, i32* @dlt, align 4, !dbg !543 ; [debug line = 301:3]
  %nbl_load = load i32* @nbl, align 4, !dbg !542  ; [#uses=2 type=i32] [debug line = 304:9]
  call void @llvm.dbg.value(metadata !{i6 %ril_2}, i64 0, metadata !544) nounwind, !dbg !540 ; [debug line = 634:13@304:9] [debug variable = il]
  call void @llvm.dbg.value(metadata !{i32 %nbl_load}, i64 0, metadata !545) nounwind, !dbg !546 ; [debug line = 634:21@304:9] [debug variable = nbl]
  %tmp_i2_cast_26 = sext i32 %nbl_load to i40, !dbg !547 ; [#uses=1 type=i40] [debug line = 637:3@304:9]
  %p_shl_i = call i39 @_ssdm_op_BitConcatenate.i39.i32.i7(i32 %nbl_load, i7 0), !dbg !547 ; [#uses=1 type=i39] [debug line = 637:3@304:9]
  %p_shl_i_cast = zext i39 %p_shl_i to i40, !dbg !547 ; [#uses=1 type=i40] [debug line = 637:3@304:9]
  %tmp_i3 = sub i40 %p_shl_i_cast, %tmp_i2_cast_26, !dbg !547 ; [#uses=1 type=i40] [debug line = 637:3@304:9]
  %tmp_75_i = call i32 @_ssdm_op_PartSelect.i32.i40.i32.i32(i40 %tmp_i3, i32 7, i32 38), !dbg !549 ; [#uses=1 type=i32] [debug line = 638:3@304:9]
  %wl_code_table_addr = getelementptr [16 x i13]* @wl_code_table, i64 0, i64 %tmp_12, !dbg !549 ; [#uses=1 type=i13*] [debug line = 638:3@304:9]
  %wl_code_table_load = load i13* %wl_code_table_addr, align 2, !dbg !549 ; [#uses=1 type=i13] [debug line = 638:3@304:9]
  %wl_code_table_load_cast = sext i13 %wl_code_table_load to i32, !dbg !549 ; [#uses=1 type=i32] [debug line = 638:3@304:9]
  %nbl_assign_1 = add nsw i32 %tmp_75_i, %wl_code_table_load_cast, !dbg !549 ; [#uses=2 type=i32] [debug line = 638:3@304:9]
  %tmp_26 = trunc i32 %nbl_assign_1 to i31, !dbg !549 ; [#uses=1 type=i31] [debug line = 638:3@304:9]
  call void @llvm.dbg.value(metadata !{i32 %nbl_assign_1}, i64 0, metadata !545) nounwind, !dbg !549 ; [debug line = 638:3@304:9] [debug variable = nbl]
  %tmp_32 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %nbl_assign_1, i32 31), !dbg !550 ; [#uses=1 type=i1] [debug line = 639:3@304:9]
  %p_i = select i1 %tmp_32, i31 0, i31 %tmp_26, !dbg !550 ; [#uses=2 type=i31] [debug line = 639:3@304:9]
  %tmp_36 = trunc i31 %p_i to i15, !dbg !550      ; [#uses=1 type=i15] [debug line = 639:3@304:9]
  %tmp_78_i = icmp ugt i31 %p_i, 18432, !dbg !551 ; [#uses=1 type=i1] [debug line = 641:3@304:9]
  %nbl_assign_2 = select i1 %tmp_78_i, i15 -14336, i15 %tmp_36, !dbg !551 ; [#uses=3 type=i15] [debug line = 641:3@304:9]
  %nbl_assign_2_cast = zext i15 %nbl_assign_2 to i32, !dbg !551 ; [#uses=1 type=i32] [debug line = 641:3@304:9]
  store i32 %nbl_assign_2_cast, i32* @nbl, align 4, !dbg !542 ; [debug line = 304:9]
  call void @llvm.dbg.value(metadata !{i15 %nbl_assign_2}, i64 0, metadata !552) nounwind, !dbg !555 ; [debug line = 649:13@308:10] [debug variable = nbl]
  %wd1 = call i5 @_ssdm_op_PartSelect.i5.i15.i32.i32(i15 %nbl_assign_2, i32 6, i32 10), !dbg !556 ; [#uses=1 type=i5] [debug line = 652:3@308:10]
  call void @llvm.dbg.value(metadata !{i5 %wd1}, i64 0, metadata !558) nounwind, !dbg !556 ; [debug line = 652:3@308:10] [debug variable = wd1]
  %wd2_cast = call i4 @_ssdm_op_PartSelect.i4.i15.i32.i32(i15 %nbl_assign_2, i32 11, i32 14), !dbg !559 ; [#uses=1 type=i4] [debug line = 653:3@308:10]
  %tmp_i4 = zext i5 %wd1 to i64, !dbg !560        ; [#uses=1 type=i64] [debug line = 654:3@308:10]
  %ilb_table_addr = getelementptr [32 x i12]* @ilb_table, i64 0, i64 %tmp_i4, !dbg !560 ; [#uses=1 type=i12*] [debug line = 654:3@308:10]
  %ilb_table_load = load i12* %ilb_table_addr, align 2, !dbg !560 ; [#uses=1 type=i12] [debug line = 654:3@308:10]
  %tmp_80_i = sub i4 -7, %wd2_cast, !dbg !560     ; [#uses=1 type=i4] [debug line = 654:3@308:10]
  %tmp_80_i_cast_cast = zext i4 %tmp_80_i to i12, !dbg !560 ; [#uses=1 type=i12] [debug line = 654:3@308:10]
  %wd3 = lshr i12 %ilb_table_load, %tmp_80_i_cast_cast, !dbg !560 ; [#uses=1 type=i12] [debug line = 654:3@308:10]
  call void @llvm.dbg.value(metadata !{i12 %wd3}, i64 0, metadata !561) nounwind, !dbg !560 ; [debug line = 654:3@308:10] [debug variable = wd3]
  %tmp_81_i = call i15 @_ssdm_op_BitConcatenate.i15.i12.i3(i12 %wd3, i3 0), !dbg !562 ; [#uses=1 type=i15] [debug line = 655:3@308:10]
  %tmp_81_i_cast = zext i15 %tmp_81_i to i32, !dbg !562 ; [#uses=1 type=i32] [debug line = 655:3@308:10]
  store i32 %tmp_81_i_cast, i32* @detl, align 4, !dbg !554 ; [debug line = 308:10]
  %tmp_16 = add nsw i32 %tmp_14, %tmp_63_i, !dbg !563 ; [#uses=1 type=i32] [debug line = 311:3]
  store i32 %tmp_16, i32* @plt, align 4, !dbg !563 ; [debug line = 311:3]
  call fastcc void @encode_upzero(i32 %tmp_14, [6 x i32]* @delay_dltx, [6 x i32]* @delay_bpl) nounwind, !dbg !564 ; [debug line = 317:3]
  %al1_load_1 = load i32* @al1, align 4, !dbg !565 ; [#uses=4 type=i32] [debug line = 321:9]
  %al2_load_1 = load i32* @al2, align 4, !dbg !565 ; [#uses=2 type=i32] [debug line = 321:9]
  %plt_load = load i32* @plt, align 4, !dbg !565  ; [#uses=2 type=i32] [debug line = 321:9]
  %plt1_load = load i32* @plt1, align 4, !dbg !565 ; [#uses=2 type=i32] [debug line = 321:9]
  %plt2_load = load i32* @plt2, align 4, !dbg !565 ; [#uses=1 type=i32] [debug line = 321:9]
  call void @llvm.dbg.value(metadata !{i32 %al1_load_1}, i64 0, metadata !566), !dbg !570 ; [debug line = 698:13@321:9] [debug variable = al1]
  call void @llvm.dbg.value(metadata !{i32 %al2_load_1}, i64 0, metadata !571), !dbg !572 ; [debug line = 698:22@321:9] [debug variable = al2]
  call void @llvm.dbg.value(metadata !{i32 %plt_load}, i64 0, metadata !573), !dbg !574 ; [debug line = 698:31@321:9] [debug variable = plt]
  call void @llvm.dbg.value(metadata !{i32 %plt1_load}, i64 0, metadata !575), !dbg !576 ; [debug line = 698:40@321:9] [debug variable = plt1]
  call void @llvm.dbg.value(metadata !{i32 %plt2_load}, i64 0, metadata !577), !dbg !578 ; [debug line = 698:50@321:9] [debug variable = plt2]
  %tmp_i4_cast1 = sext i32 %al1_load_1 to i41, !dbg !579 ; [#uses=1 type=i41] [debug line = 702:3@321:9]
  %wd2 = call i34 @_ssdm_op_BitConcatenate.i34.i32.i2(i32 %al1_load_1, i2 0), !dbg !579 ; [#uses=1 type=i34] [debug line = 702:3@321:9]
  %wd2_1_cast = sext i34 %wd2 to i35, !dbg !579   ; [#uses=1 type=i35] [debug line = 702:3@321:9]
  call void @llvm.dbg.value(metadata !{i34 %wd2}, i64 0, metadata !581), !dbg !579 ; [debug line = 702:3@321:9] [debug variable = wd2]
  %tmp_i5 = sext i32 %plt_load to i64, !dbg !582  ; [#uses=2 type=i64] [debug line = 703:3@321:9]
  %tmp_82_i = sext i32 %plt1_load to i64, !dbg !582 ; [#uses=1 type=i64] [debug line = 703:3@321:9]
  %tmp_83_i = mul nsw i64 %tmp_82_i, %tmp_i5, !dbg !582 ; [#uses=1 type=i64] [debug line = 703:3@321:9]
  %tmp_39 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %tmp_83_i, i32 63), !dbg !582 ; [#uses=2 type=i1] [debug line = 703:3@321:9]
  %wd2_1 = sub i35 0, %wd2_1_cast, !dbg !583      ; [#uses=1 type=i35] [debug line = 704:5@321:9]
  call void @llvm.dbg.value(metadata !{i35 %wd2_1}, i64 0, metadata !581), !dbg !583 ; [debug line = 704:5@321:9] [debug variable = wd2]
  %tmp_17 = call i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32 %al1_load_1, i32 5, i32 31), !dbg !584 ; [#uses=1 type=i27] [debug line = 705:3@321:9]
  %tmp_18 = sext i27 %tmp_17 to i28, !dbg !584    ; [#uses=1 type=i28] [debug line = 705:3@321:9]
  %tmp_42 = call i28 @_ssdm_op_PartSelect.i28.i35.i32.i32(i35 %wd2_1, i32 7, i32 34), !dbg !585 ; [#uses=1 type=i28] [debug line = 706:3@321:9]
  %tmp_43 = select i1 %tmp_39, i28 %tmp_18, i28 %tmp_42, !dbg !582 ; [#uses=1 type=i28] [debug line = 703:3@321:9]
  %tmp_85_i_cast_cast = sext i28 %tmp_43 to i29, !dbg !585 ; [#uses=1 type=i29] [debug line = 706:3@321:9]
  %tmp_86_i = sext i32 %plt2_load to i64, !dbg !585 ; [#uses=1 type=i64] [debug line = 706:3@321:9]
  %tmp_87_i = mul nsw i64 %tmp_86_i, %tmp_i5, !dbg !585 ; [#uses=1 type=i64] [debug line = 706:3@321:9]
  %tmp_44 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %tmp_87_i, i32 63), !dbg !585 ; [#uses=1 type=i1] [debug line = 706:3@321:9]
  %tmp_88_i_cast_cast = select i1 %tmp_44, i29 -128, i29 128, !dbg !586 ; [#uses=1 type=i29] [debug line = 714:3@321:9]
  %tmp_89_i_cast = sext i32 %al2_load_1 to i40, !dbg !586 ; [#uses=1 type=i40] [debug line = 714:3@321:9]
  %p_shl_i1 = call i39 @_ssdm_op_BitConcatenate.i39.i32.i7(i32 %al2_load_1, i7 0), !dbg !586 ; [#uses=1 type=i39] [debug line = 714:3@321:9]
  %p_shl_i1_cast = zext i39 %p_shl_i1 to i40, !dbg !586 ; [#uses=1 type=i40] [debug line = 714:3@321:9]
  %tmp_90_i = sub i40 %p_shl_i1_cast, %tmp_89_i_cast, !dbg !586 ; [#uses=1 type=i40] [debug line = 714:3@321:9]
  %tmp_91_i_cast_cast = call i32 @_ssdm_op_PartSelect.i32.i40.i32.i32(i40 %tmp_90_i, i32 7, i32 38), !dbg !586 ; [#uses=1 type=i32] [debug line = 714:3@321:9]
  %tmp4 = add i29 %tmp_88_i_cast_cast, %tmp_85_i_cast_cast, !dbg !586 ; [#uses=1 type=i29] [debug line = 714:3@321:9]
  %tmp4_cast = sext i29 %tmp4 to i32, !dbg !586   ; [#uses=1 type=i32] [debug line = 714:3@321:9]
  %apl2 = add i32 %tmp_91_i_cast_cast, %tmp4_cast, !dbg !586 ; [#uses=2 type=i32] [debug line = 714:3@321:9]
  call void @llvm.dbg.value(metadata !{i32 %apl2}, i64 0, metadata !587), !dbg !586 ; [debug line = 714:3@321:9] [debug variable = apl2]
  %tmp_93_i = icmp sgt i32 %apl2, 12288, !dbg !588 ; [#uses=1 type=i1] [debug line = 717:3@321:9]
  %p_i1 = select i1 %tmp_93_i, i32 12288, i32 %apl2, !dbg !588 ; [#uses=2 type=i32] [debug line = 717:3@321:9]
  %tmp_45 = trunc i32 %p_i1 to i15, !dbg !589     ; [#uses=1 type=i15] [debug line = 719:3@321:9]
  %tmp_94_i = icmp slt i32 %p_i1, -12288, !dbg !589 ; [#uses=1 type=i1] [debug line = 719:3@321:9]
  %apl2_assign = select i1 %tmp_94_i, i15 -12288, i15 %tmp_45, !dbg !589 ; [#uses=2 type=i15] [debug line = 719:3@321:9]
  %apl2_assign_cast = sext i15 %apl2_assign to i32, !dbg !589 ; [#uses=1 type=i32] [debug line = 719:3@321:9]
  store i32 %apl2_assign_cast, i32* @al2, align 4, !dbg !565 ; [debug line = 321:9]
  call void @llvm.dbg.value(metadata !{i32 %al1_load_1}, i64 0, metadata !590), !dbg !593 ; [debug line = 728:13@325:9] [debug variable = al1]
  call void @llvm.dbg.value(metadata !{i15 %apl2_assign}, i64 0, metadata !594), !dbg !595 ; [debug line = 728:22@325:9] [debug variable = apl2]
  call void @llvm.dbg.value(metadata !{i32 %plt_load}, i64 0, metadata !596), !dbg !597 ; [debug line = 728:32@325:9] [debug variable = plt]
  call void @llvm.dbg.value(metadata !{i32 %plt1_load}, i64 0, metadata !598), !dbg !599 ; [debug line = 728:41@325:9] [debug variable = plt1]
  %p_shl_i2 = call i40 @_ssdm_op_BitConcatenate.i40.i32.i8(i32 %al1_load_1, i8 0), !dbg !600 ; [#uses=1 type=i40] [debug line = 732:3@325:9]
  %p_shl_i2_cast = zext i40 %p_shl_i2 to i41, !dbg !600 ; [#uses=1 type=i41] [debug line = 732:3@325:9]
  %tmp_i6 = sub i41 %p_shl_i2_cast, %tmp_i4_cast1, !dbg !600 ; [#uses=1 type=i41] [debug line = 732:3@325:9]
  %tmp_99_i = call i32 @_ssdm_op_PartSelect.i32.i41.i32.i32(i41 %tmp_i6, i32 8, i32 39), !dbg !602 ; [#uses=1 type=i32] [debug line = 735:7@325:9]
  %apl_i_v_cast_cast = select i1 %tmp_39, i32 -192, i32 192 ; [#uses=1 type=i32]
  %apl1 = add i32 %apl_i_v_cast_cast, %tmp_99_i   ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %apl1}, i64 0, metadata !604), !dbg !605 ; [debug line = 739:7@325:9] [debug variable = apl1]
  %apl1_8 = sub i15 15360, %apl2_assign, !dbg !607 ; [#uses=2 type=i15] [debug line = 742:3@325:9]
  %apl1_10_cast1 = zext i15 %apl1_8 to i16, !dbg !607 ; [#uses=1 type=i16] [debug line = 742:3@325:9]
  %apl1_10_cast = zext i15 %apl1_8 to i32, !dbg !607 ; [#uses=2 type=i32] [debug line = 742:3@325:9]
  call void @llvm.dbg.value(metadata !{i15 %apl1_8}, i64 0, metadata !604), !dbg !608 ; [debug line = 744:5@325:9] [debug variable = apl1]
  call void @llvm.dbg.value(metadata !{i15 %apl1_8}, i64 0, metadata !609), !dbg !607 ; [debug line = 742:3@325:9] [debug variable = wd3]
  %tmp_101_i = icmp sgt i32 %apl1, %apl1_10_cast, !dbg !610 ; [#uses=1 type=i1] [debug line = 743:3@325:9]
  %wd3_0_apl1_i = select i1 %tmp_101_i, i32 %apl1_10_cast, i32 %apl1, !dbg !610 ; [#uses=2 type=i32] [debug line = 743:3@325:9]
  %tmp_46 = trunc i32 %wd3_0_apl1_i to i16, !dbg !611 ; [#uses=1 type=i16] [debug line = 745:3@325:9]
  %apl1_2 = sub i16 0, %apl1_10_cast1, !dbg !611  ; [#uses=2 type=i16] [debug line = 745:3@325:9]
  %apl1_3_cast = sext i16 %apl1_2 to i32, !dbg !611 ; [#uses=1 type=i32] [debug line = 745:3@325:9]
  %tmp_102_i = icmp slt i32 %wd3_0_apl1_i, %apl1_3_cast, !dbg !611 ; [#uses=1 type=i1] [debug line = 745:3@325:9]
  call void @llvm.dbg.value(metadata !{i16 %apl1_2}, i64 0, metadata !604), !dbg !612 ; [debug line = 746:5@325:9] [debug variable = apl1]
  %apl1_3 = select i1 %tmp_102_i, i16 %apl1_2, i16 %tmp_46, !dbg !611 ; [#uses=1 type=i16] [debug line = 745:3@325:9]
  %apl1_4_cast = sext i16 %apl1_3 to i32, !dbg !611 ; [#uses=1 type=i32] [debug line = 745:3@325:9]
  call void @llvm.dbg.value(metadata !{i16 %apl1_3}, i64 0, metadata !604), !dbg !611 ; [debug line = 745:3@325:9] [debug variable = apl1]
  store i32 %apl1_4_cast, i32* @al1, align 4, !dbg !592 ; [debug line = 325:9]
  %sl_load = load i32* @sl, align 4, !dbg !613    ; [#uses=1 type=i32] [debug line = 328:3]
  %dlt_load = load i32* @dlt, align 4, !dbg !613  ; [#uses=1 type=i32] [debug line = 328:3]
  %tmp_20 = add nsw i32 %dlt_load, %sl_load, !dbg !613 ; [#uses=2 type=i32] [debug line = 328:3]
  store i32 %tmp_20, i32* @rlt, align 4, !dbg !613 ; [debug line = 328:3]
  %rlt1_load = load i32* @rlt1, align 4, !dbg !614 ; [#uses=1 type=i32] [debug line = 331:3]
  store i32 %rlt1_load, i32* @rlt2, align 4, !dbg !614 ; [debug line = 331:3]
  store i32 %tmp_20, i32* @rlt1, align 4, !dbg !615 ; [debug line = 332:3]
  store i32 %plt1_load, i32* @plt2, align 4, !dbg !616 ; [debug line = 333:3]
  store i32 %plt_load, i32* @plt1, align 4, !dbg !617 ; [debug line = 334:3]
  %delay_bph_load = load i32* getelementptr inbounds ([6 x i32]* @delay_bph, i64 0, i64 0), align 16, !dbg !618 ; [#uses=1 type=i32] [debug line = 585:3@338:9]
  %tmp_i6_27 = sext i32 %delay_bph_load to i64, !dbg !618 ; [#uses=1 type=i64] [debug line = 585:3@338:9]
  %delay_dhx_load = load i32* getelementptr inbounds ([6 x i32]* @delay_dhx, i64 0, i64 0), align 16, !dbg !618 ; [#uses=1 type=i32] [debug line = 585:3@338:9]
  %tmp_i7 = sext i32 %delay_dhx_load to i64, !dbg !618 ; [#uses=1 type=i64] [debug line = 585:3@338:9]
  %zl_2 = mul nsw i64 %tmp_i6_27, %tmp_i7, !dbg !618 ; [#uses=1 type=i64] [debug line = 585:3@338:9]
  call void @llvm.dbg.value(metadata !{i64 %zl_2}, i64 0, metadata !620) nounwind, !dbg !618 ; [debug line = 585:3@338:9] [debug variable = zl]
  br label %11, !dbg !621                         ; [debug line = 586:8@338:9]

; <label>:11                                      ; preds = %12, %.loopexit.i_ifconv
  %zl1_i1 = phi i64 [ %zl_2, %.loopexit.i_ifconv ], [ %zl_3, %12 ] ; [#uses=2 type=i64]
  %dlt_pn_rec_i1 = phi i3 [ 0, %.loopexit.i_ifconv ], [ %p_01_rec_i1, %12 ] ; [#uses=2 type=i3]
  %p_01_rec_i1 = add i3 %dlt_pn_rec_i1, 1, !dbg !618 ; [#uses=2 type=i3] [debug line = 585:3@338:9]
  %p_01_rec_i1_cast = zext i3 %p_01_rec_i1 to i64, !dbg !618 ; [#uses=2 type=i64] [debug line = 585:3@338:9]
  %delay_dhx_addr = getelementptr [6 x i32]* @delay_dhx, i64 0, i64 %p_01_rec_i1_cast, !dbg !618 ; [#uses=1 type=i32*] [debug line = 585:3@338:9]
  call void @llvm.dbg.value(metadata !{i32* %delay_dhx_addr}, i64 0, metadata !622) nounwind, !dbg !618 ; [debug line = 585:3@338:9] [debug variable = dlt]
  %delay_bph_addr = getelementptr [6 x i32]* @delay_bph, i64 0, i64 %p_01_rec_i1_cast, !dbg !618 ; [#uses=1 type=i32*] [debug line = 585:3@338:9]
  call void @llvm.dbg.value(metadata !{i32* %delay_bph_addr}, i64 0, metadata !623) nounwind, !dbg !618 ; [debug line = 585:3@338:9] [debug variable = bpl]
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind ; [#uses=0 type=i32]
  %exitcond1 = icmp eq i3 %dlt_pn_rec_i1, -3, !dbg !621 ; [#uses=1 type=i1] [debug line = 586:8@338:9]
  br i1 %exitcond1, label %filtez.exit52, label %12, !dbg !621 ; [debug line = 586:8@338:9]

; <label>:12                                      ; preds = %11
  %delay_bph_load_1 = load i32* %delay_bph_addr, align 4, !dbg !624 ; [#uses=1 type=i32] [debug line = 587:5@338:9]
  %tmp_64_i3 = sext i32 %delay_bph_load_1 to i64, !dbg !624 ; [#uses=1 type=i64] [debug line = 587:5@338:9]
  %delay_dhx_load_1 = load i32* %delay_dhx_addr, align 4, !dbg !624 ; [#uses=1 type=i32] [debug line = 587:5@338:9]
  %tmp_65_i3 = sext i32 %delay_dhx_load_1 to i64, !dbg !624 ; [#uses=1 type=i64] [debug line = 587:5@338:9]
  %tmp_66_i3 = mul nsw i64 %tmp_65_i3, %tmp_64_i3, !dbg !624 ; [#uses=1 type=i64] [debug line = 587:5@338:9]
  %zl_3 = add nsw i64 %tmp_66_i3, %zl1_i1, !dbg !624 ; [#uses=1 type=i64] [debug line = 587:5@338:9]
  call void @llvm.dbg.value(metadata !{i64 %zl_3}, i64 0, metadata !620) nounwind, !dbg !624 ; [debug line = 587:5@338:9] [debug variable = zl]
  br label %11, !dbg !625                         ; [debug line = 586:22@338:9]

filtez.exit52:                                    ; preds = %11
  %tmp_63_i2 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %zl1_i1, i32 14, i32 45), !dbg !626 ; [#uses=3 type=i32] [debug line = 589:3@338:9]
  store i32 %tmp_63_i2, i32* @szh, align 4, !dbg !619 ; [debug line = 338:9]
  %rh1_load_1 = load i32* @rh1, align 4, !dbg !627 ; [#uses=1 type=i32] [debug line = 340:9]
  %ah1_load = load i32* @ah1, align 4, !dbg !627  ; [#uses=1 type=i32] [debug line = 340:9]
  %rh2_load = load i32* @rh2, align 4, !dbg !627  ; [#uses=1 type=i32] [debug line = 340:9]
  %ah2_load = load i32* @ah2, align 4, !dbg !627  ; [#uses=1 type=i32] [debug line = 340:9]
  call void @llvm.dbg.value(metadata !{i32 %rh1_load_1}, i64 0, metadata !628), !dbg !629 ; [debug line = 596:13@340:9] [debug variable = rlt1]
  call void @llvm.dbg.value(metadata !{i32 %ah1_load}, i64 0, metadata !630), !dbg !631 ; [debug line = 596:23@340:9] [debug variable = al1]
  call void @llvm.dbg.value(metadata !{i32 %rh2_load}, i64 0, metadata !632), !dbg !633 ; [debug line = 596:32@340:9] [debug variable = rlt2]
  call void @llvm.dbg.value(metadata !{i32 %ah2_load}, i64 0, metadata !634), !dbg !635 ; [debug line = 596:42@340:9] [debug variable = al2]
  %tmp_47 = shl i32 %rh1_load_1, 1, !dbg !636     ; [#uses=1 type=i32] [debug line = 599:3@340:9]
  %pl_3 = sext i32 %tmp_47 to i64, !dbg !636      ; [#uses=1 type=i64] [debug line = 599:3@340:9]
  call void @llvm.dbg.value(metadata !{i64 %pl_3}, i64 0, metadata !637), !dbg !636 ; [debug line = 599:3@340:9] [debug variable = pl]
  %tmp_i8 = sext i32 %ah1_load to i64, !dbg !638  ; [#uses=1 type=i64] [debug line = 600:3@340:9]
  %pl_4 = mul nsw i64 %tmp_i8, %pl_3, !dbg !638   ; [#uses=1 type=i64] [debug line = 600:3@340:9]
  call void @llvm.dbg.value(metadata !{i64 %pl_4}, i64 0, metadata !637), !dbg !638 ; [debug line = 600:3@340:9] [debug variable = pl]
  %tmp_48 = shl i32 %rh2_load, 1, !dbg !639       ; [#uses=1 type=i32] [debug line = 601:3@340:9]
  %pl2_1 = sext i32 %tmp_48 to i64, !dbg !639     ; [#uses=1 type=i64] [debug line = 601:3@340:9]
  call void @llvm.dbg.value(metadata !{i64 %pl2_1}, i64 0, metadata !640), !dbg !639 ; [debug line = 601:3@340:9] [debug variable = pl2]
  %tmp_63_i3 = sext i32 %ah2_load to i64, !dbg !641 ; [#uses=1 type=i64] [debug line = 602:3@340:9]
  %tmp_64_i2 = mul nsw i64 %tmp_63_i3, %pl2_1, !dbg !641 ; [#uses=1 type=i64] [debug line = 602:3@340:9]
  %pl_5 = add nsw i64 %tmp_64_i2, %pl_4, !dbg !641 ; [#uses=1 type=i64] [debug line = 602:3@340:9]
  call void @llvm.dbg.value(metadata !{i64 %pl_5}, i64 0, metadata !637), !dbg !641 ; [debug line = 602:3@340:9] [debug variable = pl]
  %tmp_66_i2 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %pl_5, i32 15, i32 46), !dbg !642 ; [#uses=2 type=i32] [debug line = 603:3@340:9]
  store i32 %tmp_66_i2, i32* @sph, align 4, !dbg !627 ; [debug line = 340:9]
  %tmp_21 = add nsw i32 %tmp_66_i2, %tmp_63_i2, !dbg !643 ; [#uses=2 type=i32] [debug line = 343:3]
  store i32 %tmp_21, i32* @sh, align 4, !dbg !643 ; [debug line = 343:3]
  %xh_load = load i32* @xh, align 4, !dbg !644    ; [#uses=1 type=i32] [debug line = 345:3]
  %n_assign_2 = sub nsw i32 %xh_load, %tmp_21, !dbg !644 ; [#uses=5 type=i32] [debug line = 345:3]
  store i32 %n_assign_2, i32* @eh, align 4, !dbg !644 ; [debug line = 345:3]
  %tmp_49 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %n_assign_2, i32 31), !dbg !645 ; [#uses=4 type=i1] [debug line = 349:3]
  %tmp_24 = select i1 %tmp_49, i2 1, i2 -1        ; [#uses=1 type=i2]
  %tmp_33_cast_cast = select i1 %tmp_49, i32 1, i32 3 ; [#uses=1 type=i32]
  store i32 %tmp_33_cast_cast, i32* @ih, align 4, !dbg !646 ; [debug line = 351:7]
  %deth_load = load i32* @deth, align 4, !dbg !648 ; [#uses=2 type=i32] [debug line = 357:3]
  %tmp_34_cast1 = sext i32 %deth_load to i47, !dbg !648 ; [#uses=1 type=i47] [debug line = 357:3]
  %tmp_34_cast = sext i32 %deth_load to i42, !dbg !648 ; [#uses=1 type=i42] [debug line = 357:3]
  %tmp_25 = mul i42 564, %tmp_34_cast, !dbg !648  ; [#uses=1 type=i42] [debug line = 357:3]
  %tmp_27 = call i30 @_ssdm_op_PartSelect.i30.i42.i32.i32(i42 %tmp_25, i32 12, i32 41), !dbg !648 ; [#uses=1 type=i30] [debug line = 357:3]
  %decis = sext i30 %tmp_27 to i32, !dbg !648     ; [#uses=1 type=i32] [debug line = 357:3]
  call void @llvm.dbg.value(metadata !{i32 %decis}, i64 0, metadata !649), !dbg !648 ; [debug line = 357:3] [debug variable = decis]
  call void @llvm.dbg.value(metadata !{i32 %n_assign_2}, i64 0, metadata !650), !dbg !652 ; [debug line = 236:10@358:7] [debug variable = n]
  %tmp_50 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %n_assign_2, i32 31), !dbg !653 ; [#uses=1 type=i1] [debug line = 240:3@358:7]
  %m_1 = sub nsw i32 0, %n_assign_2, !dbg !654    ; [#uses=1 type=i32] [debug line = 243:5@358:7]
  call void @llvm.dbg.value(metadata !{i32 %m_1}, i64 0, metadata !655), !dbg !654 ; [debug line = 243:5@358:7] [debug variable = m]
  %n_assign_3 = select i1 %tmp_50, i32 %m_1, i32 %n_assign_2, !dbg !653 ; [#uses=1 type=i32] [debug line = 240:3@358:7]
  call void @llvm.dbg.value(metadata !{i32 %n_assign_3}, i64 0, metadata !650), !dbg !653 ; [debug line = 240:3@358:7] [debug variable = n]
  %tmp_28 = icmp sgt i32 %n_assign_3, %decis, !dbg !651 ; [#uses=1 type=i1] [debug line = 358:7]
  br i1 %tmp_28, label %13, label %._crit_edge_ifconv, !dbg !651 ; [debug line = 358:7]

; <label>:13                                      ; preds = %filtez.exit52
  %tmp_29 = select i1 %tmp_49, i2 0, i2 -2        ; [#uses=1 type=i2]
  %tmp_38_cast_cast = select i1 %tmp_49, i32 0, i32 2 ; [#uses=1 type=i32]
  store i32 %tmp_38_cast_cast, i32* @ih, align 4, !dbg !656 ; [debug line = 359:5]
  br label %._crit_edge_ifconv, !dbg !656         ; [debug line = 359:5]

._crit_edge_ifconv:                               ; preds = %13, %filtez.exit52
  %ih_assign = phi i2 [ %tmp_29, %13 ], [ %tmp_24, %filtez.exit52 ] ; [#uses=2 type=i2]
  %tmp_30 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 -7408, i32 -1616, i32 7408, i32 1616, i2 %ih_assign) nounwind ; [#uses=1 type=i32]
  %tmp_40_cast = sext i32 %tmp_30 to i47, !dbg !657 ; [#uses=1 type=i47] [debug line = 362:3]
  %tmp_31 = mul i47 %tmp_40_cast, %tmp_34_cast1, !dbg !657 ; [#uses=1 type=i47] [debug line = 362:3]
  %tmp_33 = call i32 @_ssdm_op_PartSelect.i32.i47.i32.i32(i47 %tmp_31, i32 15, i32 46), !dbg !657 ; [#uses=3 type=i32] [debug line = 362:3]
  store i32 %tmp_33, i32* @dh, align 4, !dbg !657 ; [debug line = 362:3]
  %nbh_load = load i32* @nbh, align 4, !dbg !658  ; [#uses=2 type=i32] [debug line = 365:9]
  call void @llvm.dbg.value(metadata !{i2 %ih_assign}, i64 0, metadata !659) nounwind, !dbg !661 ; [debug line = 754:13@365:9] [debug variable = ih]
  call void @llvm.dbg.value(metadata !{i32 %nbh_load}, i64 0, metadata !662) nounwind, !dbg !663 ; [debug line = 754:21@365:9] [debug variable = nbh]
  %tmp_i9_cast = sext i32 %nbh_load to i40, !dbg !664 ; [#uses=1 type=i40] [debug line = 757:3@365:9]
  %p_shl_i3 = call i39 @_ssdm_op_BitConcatenate.i39.i32.i7(i32 %nbh_load, i7 0), !dbg !664 ; [#uses=1 type=i39] [debug line = 757:3@365:9]
  %p_shl_i3_cast = zext i39 %p_shl_i3 to i40, !dbg !664 ; [#uses=1 type=i40] [debug line = 757:3@365:9]
  %tmp_i9 = sub i40 %p_shl_i3_cast, %tmp_i9_cast, !dbg !664 ; [#uses=1 type=i40] [debug line = 757:3@365:9]
  %wd = call i32 @_ssdm_op_PartSelect.i32.i40.i32.i32(i40 %tmp_i9, i32 7, i32 38), !dbg !664 ; [#uses=1 type=i32] [debug line = 757:3@365:9]
  call void @llvm.dbg.value(metadata !{i32 %wd}, i64 0, metadata !666) nounwind, !dbg !664 ; [debug line = 757:3@365:9] [debug variable = wd]
  %tmp_34 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 798, i32 -214, i32 798, i32 -214, i2 %ih_assign) nounwind ; [#uses=1 type=i32]
  %nbh_assign_1 = add nsw i32 %wd, %tmp_34, !dbg !667 ; [#uses=2 type=i32] [debug line = 758:3@365:9]
  %tmp_51 = trunc i32 %nbh_assign_1 to i31, !dbg !667 ; [#uses=1 type=i31] [debug line = 758:3@365:9]
  call void @llvm.dbg.value(metadata !{i32 %nbh_assign_1}, i64 0, metadata !662) nounwind, !dbg !667 ; [debug line = 758:3@365:9] [debug variable = nbh]
  %tmp_52 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %nbh_assign_1, i32 31), !dbg !668 ; [#uses=1 type=i1] [debug line = 759:3@365:9]
  %p_i2 = select i1 %tmp_52, i31 0, i31 %tmp_51, !dbg !668 ; [#uses=2 type=i31] [debug line = 759:3@365:9]
  %tmp_53 = trunc i31 %p_i2 to i15, !dbg !668     ; [#uses=1 type=i15] [debug line = 759:3@365:9]
  %tmp_105_i = icmp ugt i31 %p_i2, 22528, !dbg !669 ; [#uses=1 type=i1] [debug line = 761:3@365:9]
  %nbl_assign_3 = select i1 %tmp_105_i, i15 -10240, i15 %tmp_53, !dbg !669 ; [#uses=3 type=i15] [debug line = 761:3@365:9]
  %nbl_assign_3_cast = zext i15 %nbl_assign_3 to i32, !dbg !669 ; [#uses=1 type=i32] [debug line = 761:3@365:9]
  store i32 %nbl_assign_3_cast, i32* @nbh, align 4, !dbg !658 ; [debug line = 365:9]
  call void @llvm.dbg.value(metadata !{i15 %nbl_assign_3}, i64 0, metadata !670) nounwind, !dbg !672 ; [debug line = 649:13@368:10] [debug variable = nbl]
  %wd1_1 = call i5 @_ssdm_op_PartSelect.i5.i15.i32.i32(i15 %nbl_assign_3, i32 6, i32 10), !dbg !673 ; [#uses=1 type=i5] [debug line = 652:3@368:10]
  call void @llvm.dbg.value(metadata !{i5 %wd1_1}, i64 0, metadata !674) nounwind, !dbg !673 ; [debug line = 652:3@368:10] [debug variable = wd1]
  %wd2_4_cast = call i4 @_ssdm_op_PartSelect.i4.i15.i32.i32(i15 %nbl_assign_3, i32 11, i32 14), !dbg !675 ; [#uses=1 type=i4] [debug line = 653:3@368:10]
  %tmp_i2 = zext i5 %wd1_1 to i64, !dbg !676      ; [#uses=1 type=i64] [debug line = 654:3@368:10]
  %ilb_table_addr_1 = getelementptr [32 x i12]* @ilb_table, i64 0, i64 %tmp_i2, !dbg !676 ; [#uses=1 type=i12*] [debug line = 654:3@368:10]
  %ilb_table_load_1 = load i12* %ilb_table_addr_1, align 2, !dbg !676 ; [#uses=1 type=i12] [debug line = 654:3@368:10]
  %tmp_80_i1 = sub i4 -5, %wd2_4_cast, !dbg !676  ; [#uses=1 type=i4] [debug line = 654:3@368:10]
  %tmp_80_i1_cast_cast = zext i4 %tmp_80_i1 to i12, !dbg !676 ; [#uses=1 type=i12] [debug line = 654:3@368:10]
  %wd3_2 = lshr i12 %ilb_table_load_1, %tmp_80_i1_cast_cast, !dbg !676 ; [#uses=1 type=i12] [debug line = 654:3@368:10]
  call void @llvm.dbg.value(metadata !{i12 %wd3_2}, i64 0, metadata !677) nounwind, !dbg !676 ; [debug line = 654:3@368:10] [debug variable = wd3]
  %tmp_81_i1 = call i15 @_ssdm_op_BitConcatenate.i15.i12.i3(i12 %wd3_2, i3 0), !dbg !678 ; [#uses=1 type=i15] [debug line = 655:3@368:10]
  %tmp_81_i1_cast = zext i15 %tmp_81_i1 to i32, !dbg !678 ; [#uses=1 type=i32] [debug line = 655:3@368:10]
  store i32 %tmp_81_i1_cast, i32* @deth, align 4, !dbg !671 ; [debug line = 368:10]
  %tmp_35 = add nsw i32 %tmp_63_i2, %tmp_33, !dbg !679 ; [#uses=1 type=i32] [debug line = 371:3]
  store i32 %tmp_35, i32* @ph, align 4, !dbg !679 ; [debug line = 371:3]
  call fastcc void @encode_upzero(i32 %tmp_33, [6 x i32]* @delay_dhx, [6 x i32]* @delay_bph) nounwind, !dbg !680 ; [debug line = 376:3]
  %ah1_load_1 = load i32* @ah1, align 4, !dbg !681 ; [#uses=4 type=i32] [debug line = 380:9]
  %ah2_load_1 = load i32* @ah2, align 4, !dbg !681 ; [#uses=2 type=i32] [debug line = 380:9]
  %ph_load = load i32* @ph, align 4, !dbg !681    ; [#uses=2 type=i32] [debug line = 380:9]
  %ph1_load = load i32* @ph1, align 4, !dbg !681  ; [#uses=2 type=i32] [debug line = 380:9]
  %ph2_load = load i32* @ph2, align 4, !dbg !681  ; [#uses=1 type=i32] [debug line = 380:9]
  call void @llvm.dbg.value(metadata !{i32 %ah1_load_1}, i64 0, metadata !682), !dbg !683 ; [debug line = 698:13@380:9] [debug variable = al1]
  call void @llvm.dbg.value(metadata !{i32 %ah2_load_1}, i64 0, metadata !684), !dbg !685 ; [debug line = 698:22@380:9] [debug variable = al2]
  call void @llvm.dbg.value(metadata !{i32 %ph_load}, i64 0, metadata !686), !dbg !687 ; [debug line = 698:31@380:9] [debug variable = plt]
  call void @llvm.dbg.value(metadata !{i32 %ph1_load}, i64 0, metadata !688), !dbg !689 ; [debug line = 698:40@380:9] [debug variable = plt1]
  call void @llvm.dbg.value(metadata !{i32 %ph2_load}, i64 0, metadata !690), !dbg !691 ; [debug line = 698:50@380:9] [debug variable = plt2]
  %tmp_i11_cast8 = sext i32 %ah1_load_1 to i41, !dbg !692 ; [#uses=1 type=i41] [debug line = 702:3@380:9]
  %wd2_2 = call i34 @_ssdm_op_BitConcatenate.i34.i32.i2(i32 %ah1_load_1, i2 0), !dbg !692 ; [#uses=1 type=i34] [debug line = 702:3@380:9]
  %wd2_5_cast = sext i34 %wd2_2 to i35, !dbg !692 ; [#uses=1 type=i35] [debug line = 702:3@380:9]
  call void @llvm.dbg.value(metadata !{i34 %wd2_2}, i64 0, metadata !693), !dbg !692 ; [debug line = 702:3@380:9] [debug variable = wd2]
  %tmp_i10 = sext i32 %ph_load to i64, !dbg !694  ; [#uses=2 type=i64] [debug line = 703:3@380:9]
  %tmp_82_i1 = sext i32 %ph1_load to i64, !dbg !694 ; [#uses=1 type=i64] [debug line = 703:3@380:9]
  %tmp_83_i1 = mul nsw i64 %tmp_82_i1, %tmp_i10, !dbg !694 ; [#uses=1 type=i64] [debug line = 703:3@380:9]
  %tmp_54 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %tmp_83_i1, i32 63), !dbg !694 ; [#uses=2 type=i1] [debug line = 703:3@380:9]
  %wd2_3 = sub i35 0, %wd2_5_cast, !dbg !695      ; [#uses=1 type=i35] [debug line = 704:5@380:9]
  call void @llvm.dbg.value(metadata !{i35 %wd2_3}, i64 0, metadata !693), !dbg !695 ; [debug line = 704:5@380:9] [debug variable = wd2]
  %tmp_37 = call i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32 %ah1_load_1, i32 5, i32 31), !dbg !696 ; [#uses=1 type=i27] [debug line = 705:3@380:9]
  %tmp_41 = sext i27 %tmp_37 to i28, !dbg !696    ; [#uses=1 type=i28] [debug line = 705:3@380:9]
  %tmp_55 = call i28 @_ssdm_op_PartSelect.i28.i35.i32.i32(i35 %wd2_3, i32 7, i32 34), !dbg !697 ; [#uses=1 type=i28] [debug line = 706:3@380:9]
  %tmp_56 = select i1 %tmp_54, i28 %tmp_41, i28 %tmp_55, !dbg !694 ; [#uses=1 type=i28] [debug line = 703:3@380:9]
  %tmp_85_i1_cast_cast = sext i28 %tmp_56 to i29, !dbg !697 ; [#uses=1 type=i29] [debug line = 706:3@380:9]
  %tmp_86_i1 = sext i32 %ph2_load to i64, !dbg !697 ; [#uses=1 type=i64] [debug line = 706:3@380:9]
  %tmp_87_i1 = mul nsw i64 %tmp_86_i1, %tmp_i10, !dbg !697 ; [#uses=1 type=i64] [debug line = 706:3@380:9]
  %tmp_57 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %tmp_87_i1, i32 63), !dbg !697 ; [#uses=1 type=i1] [debug line = 706:3@380:9]
  %tmp_88_i1_cast_cast = select i1 %tmp_57, i29 -128, i29 128, !dbg !698 ; [#uses=1 type=i29] [debug line = 714:3@380:9]
  %tmp_89_i1_cast7 = sext i32 %ah2_load_1 to i40, !dbg !698 ; [#uses=1 type=i40] [debug line = 714:3@380:9]
  %p_shl_i4 = call i39 @_ssdm_op_BitConcatenate.i39.i32.i7(i32 %ah2_load_1, i7 0), !dbg !698 ; [#uses=1 type=i39] [debug line = 714:3@380:9]
  %p_shl_i4_cast = zext i39 %p_shl_i4 to i40, !dbg !698 ; [#uses=1 type=i40] [debug line = 714:3@380:9]
  %tmp_90_i1 = sub i40 %p_shl_i4_cast, %tmp_89_i1_cast7, !dbg !698 ; [#uses=1 type=i40] [debug line = 714:3@380:9]
  %tmp_91_i1_cast_cast = call i32 @_ssdm_op_PartSelect.i32.i40.i32.i32(i40 %tmp_90_i1, i32 7, i32 38), !dbg !698 ; [#uses=1 type=i32] [debug line = 714:3@380:9]
  %tmp5 = add i29 %tmp_88_i1_cast_cast, %tmp_85_i1_cast_cast, !dbg !698 ; [#uses=1 type=i29] [debug line = 714:3@380:9]
  %tmp5_cast = sext i29 %tmp5 to i32, !dbg !698   ; [#uses=1 type=i32] [debug line = 714:3@380:9]
  %apl2_1 = add i32 %tmp_91_i1_cast_cast, %tmp5_cast, !dbg !698 ; [#uses=2 type=i32] [debug line = 714:3@380:9]
  call void @llvm.dbg.value(metadata !{i32 %apl2_1}, i64 0, metadata !699), !dbg !698 ; [debug line = 714:3@380:9] [debug variable = apl2]
  %tmp_93_i1 = icmp sgt i32 %apl2_1, 12288, !dbg !700 ; [#uses=1 type=i1] [debug line = 717:3@380:9]
  %p_i3 = select i1 %tmp_93_i1, i32 12288, i32 %apl2_1, !dbg !700 ; [#uses=2 type=i32] [debug line = 717:3@380:9]
  %tmp_58 = trunc i32 %p_i3 to i15, !dbg !701     ; [#uses=1 type=i15] [debug line = 719:3@380:9]
  %tmp_94_i1 = icmp slt i32 %p_i3, -12288, !dbg !701 ; [#uses=1 type=i1] [debug line = 719:3@380:9]
  %apl2_assign_1 = select i1 %tmp_94_i1, i15 -12288, i15 %tmp_58, !dbg !701 ; [#uses=2 type=i15] [debug line = 719:3@380:9]
  %apl2_assign_1_cast = sext i15 %apl2_assign_1 to i32, !dbg !701 ; [#uses=1 type=i32] [debug line = 719:3@380:9]
  store i32 %apl2_assign_1_cast, i32* @ah2, align 4, !dbg !681 ; [debug line = 380:9]
  call void @llvm.dbg.value(metadata !{i32 %ah1_load_1}, i64 0, metadata !702), !dbg !704 ; [debug line = 728:13@383:9] [debug variable = al1]
  call void @llvm.dbg.value(metadata !{i15 %apl2_assign_1}, i64 0, metadata !705), !dbg !706 ; [debug line = 728:22@383:9] [debug variable = apl2]
  call void @llvm.dbg.value(metadata !{i32 %ph_load}, i64 0, metadata !707), !dbg !708 ; [debug line = 728:32@383:9] [debug variable = plt]
  call void @llvm.dbg.value(metadata !{i32 %ph1_load}, i64 0, metadata !709), !dbg !710 ; [debug line = 728:41@383:9] [debug variable = plt1]
  %p_shl_i5 = call i40 @_ssdm_op_BitConcatenate.i40.i32.i8(i32 %ah1_load_1, i8 0), !dbg !711 ; [#uses=1 type=i40] [debug line = 732:3@383:9]
  %p_shl_i5_cast = zext i40 %p_shl_i5 to i41, !dbg !711 ; [#uses=1 type=i41] [debug line = 732:3@383:9]
  %tmp_i11 = sub i41 %p_shl_i5_cast, %tmp_i11_cast8, !dbg !711 ; [#uses=1 type=i41] [debug line = 732:3@383:9]
  %tmp_99_i1 = call i32 @_ssdm_op_PartSelect.i32.i41.i32.i32(i41 %tmp_i11, i32 8, i32 39), !dbg !712 ; [#uses=1 type=i32] [debug line = 735:7@383:9]
  %apl_i1_v_cast_cast = select i1 %tmp_54, i32 -192, i32 192 ; [#uses=1 type=i32]
  %apl1_4 = add i32 %apl_i1_v_cast_cast, %tmp_99_i1 ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %apl1_4}, i64 0, metadata !713), !dbg !714 ; [debug line = 739:7@383:9] [debug variable = apl1]
  %apl1_9 = sub i15 15360, %apl2_assign_1, !dbg !715 ; [#uses=2 type=i15] [debug line = 742:3@383:9]
  %apl1_11_cast6 = zext i15 %apl1_9 to i16, !dbg !715 ; [#uses=1 type=i16] [debug line = 742:3@383:9]
  %apl1_11_cast = zext i15 %apl1_9 to i32, !dbg !715 ; [#uses=2 type=i32] [debug line = 742:3@383:9]
  call void @llvm.dbg.value(metadata !{i15 %apl1_9}, i64 0, metadata !713), !dbg !716 ; [debug line = 744:5@383:9] [debug variable = apl1]
  call void @llvm.dbg.value(metadata !{i15 %apl1_9}, i64 0, metadata !717), !dbg !715 ; [debug line = 742:3@383:9] [debug variable = wd3]
  %tmp_101_i1 = icmp sgt i32 %apl1_4, %apl1_11_cast, !dbg !718 ; [#uses=1 type=i1] [debug line = 743:3@383:9]
  %wd3_0_apl1_i1 = select i1 %tmp_101_i1, i32 %apl1_11_cast, i32 %apl1_4, !dbg !718 ; [#uses=2 type=i32] [debug line = 743:3@383:9]
  %tmp_59 = trunc i32 %wd3_0_apl1_i1 to i16, !dbg !719 ; [#uses=1 type=i16] [debug line = 745:3@383:9]
  %apl1_6 = sub i16 0, %apl1_11_cast6, !dbg !719  ; [#uses=2 type=i16] [debug line = 745:3@383:9]
  %apl1_8_cast = sext i16 %apl1_6 to i32, !dbg !719 ; [#uses=1 type=i32] [debug line = 745:3@383:9]
  %tmp_102_i1 = icmp slt i32 %wd3_0_apl1_i1, %apl1_8_cast, !dbg !719 ; [#uses=1 type=i1] [debug line = 745:3@383:9]
  call void @llvm.dbg.value(metadata !{i16 %apl1_6}, i64 0, metadata !713), !dbg !720 ; [debug line = 746:5@383:9] [debug variable = apl1]
  %apl1_7 = select i1 %tmp_102_i1, i16 %apl1_6, i16 %tmp_59, !dbg !719 ; [#uses=1 type=i16] [debug line = 745:3@383:9]
  %apl1_9_cast = sext i16 %apl1_7 to i32, !dbg !719 ; [#uses=1 type=i32] [debug line = 745:3@383:9]
  call void @llvm.dbg.value(metadata !{i16 %apl1_7}, i64 0, metadata !713), !dbg !719 ; [debug line = 745:3@383:9] [debug variable = apl1]
  store i32 %apl1_9_cast, i32* @ah1, align 4, !dbg !703 ; [debug line = 383:9]
  %sh_load = load i32* @sh, align 4, !dbg !721    ; [#uses=1 type=i32] [debug line = 386:3]
  %dh_load = load i32* @dh, align 4, !dbg !721    ; [#uses=1 type=i32] [debug line = 386:3]
  %tmp_38 = add nsw i32 %sh_load, %dh_load, !dbg !721 ; [#uses=2 type=i32] [debug line = 386:3]
  store i32 %tmp_38, i32* @yh, align 4, !dbg !721 ; [debug line = 386:3]
  %rh1_load = load i32* @rh1, align 4, !dbg !722  ; [#uses=1 type=i32] [debug line = 389:3]
  store i32 %rh1_load, i32* @rh2, align 4, !dbg !722 ; [debug line = 389:3]
  store i32 %tmp_38, i32* @rh1, align 4, !dbg !723 ; [debug line = 390:3]
  store i32 %ph1_load, i32* @ph2, align 4, !dbg !724 ; [debug line = 391:3]
  store i32 %ph_load, i32* @ph1, align 4, !dbg !725 ; [debug line = 392:3]
  %il_load = load i32* @il, align 4, !dbg !726    ; [#uses=1 type=i32] [debug line = 395:3]
  %ih_load = load i32* @ih, align 4, !dbg !726    ; [#uses=1 type=i32] [debug line = 395:3]
  %tmp_60 = shl i32 %ih_load, 6, !dbg !726        ; [#uses=1 type=i32] [debug line = 395:3]
  %tmp_40 = or i32 %il_load, %tmp_60, !dbg !726   ; [#uses=1 type=i32] [debug line = 395:3]
  ret i32 %tmp_40, !dbg !726                      ; [debug line = 395:3]
}

; [#uses=106]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define internal fastcc void @encode_upzero(i32 %dlt, [6 x i32]* nocapture %dlti, [6 x i32]* nocapture %bli) {
  %dlt_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %dlt) ; [#uses=3 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %dlt_read}, i64 0, metadata !727), !dbg !731 ; [debug line = 662:13] [debug variable = dlt]
  %dlti_addr = getelementptr [6 x i32]* %dlti, i64 0, i64 0 ; [#uses=2 type=i32*]
  call void @llvm.dbg.value(metadata !{i32 %dlt}, i64 0, metadata !727), !dbg !731 ; [debug line = 662:13] [debug variable = dlt]
  call void @llvm.dbg.value(metadata !{[6 x i32]* %dlti}, i64 0, metadata !732), !dbg !736 ; [debug line = 662:23] [debug variable = dlti]
  call void @llvm.dbg.value(metadata !{[6 x i32]* %bli}, i64 0, metadata !737), !dbg !738 ; [debug line = 662:34] [debug variable = bli]
  %tmp = icmp eq i32 %dlt_read, 0, !dbg !739      ; [#uses=1 type=i1] [debug line = 666:3]
  br i1 %tmp, label %.preheader2, label %.preheader.preheader, !dbg !739 ; [debug line = 666:3]

.preheader.preheader:                             ; preds = %0
  %tmp_s = sext i32 %dlt_read to i64, !dbg !741   ; [#uses=1 type=i64] [debug line = 677:4]
  br label %.preheader, !dbg !745                 ; [debug line = 675:12]

.preheader2:                                      ; preds = %1, %0
  %i = phi i3 [ %i_4, %1 ], [ 0, %0 ]             ; [#uses=3 type=i3]
  %exitcond1 = icmp eq i3 %i, -2, !dbg !746       ; [#uses=1 type=i1] [debug line = 668:12]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) ; [#uses=0 type=i32]
  %i_4 = add i3 %i, 1, !dbg !749                  ; [#uses=1 type=i3] [debug line = 668:26]
  br i1 %exitcond1, label %.loopexit, label %1, !dbg !746 ; [debug line = 668:12]

; <label>:1                                       ; preds = %.preheader2
  %tmp_41 = zext i3 %i to i64, !dbg !750          ; [#uses=1 type=i64] [debug line = 670:4]
  %bli_addr = getelementptr [6 x i32]* %bli, i64 0, i64 %tmp_41, !dbg !750 ; [#uses=2 type=i32*] [debug line = 670:4]
  %bli_load = load i32* %bli_addr, align 4, !dbg !750 ; [#uses=2 type=i32] [debug line = 670:4]
  %tmp_49_cast = sext i32 %bli_load to i40, !dbg !750 ; [#uses=1 type=i40] [debug line = 670:4]
  %p_shl = call i40 @_ssdm_op_BitConcatenate.i40.i32.i8(i32 %bli_load, i8 0), !dbg !750 ; [#uses=1 type=i40] [debug line = 670:4]
  %tmp_42 = sub i40 %p_shl, %tmp_49_cast, !dbg !750 ; [#uses=1 type=i40] [debug line = 670:4]
  %tmp_43 = call i32 @_ssdm_op_PartSelect.i32.i40.i32.i32(i40 %tmp_42, i32 8, i32 39), !dbg !750 ; [#uses=1 type=i32] [debug line = 670:4]
  store i32 %tmp_43, i32* %bli_addr, align 4, !dbg !750 ; [debug line = 670:4]
  call void @llvm.dbg.value(metadata !{i3 %i_4}, i64 0, metadata !752), !dbg !749 ; [debug line = 668:26] [debug variable = i]
  br label %.preheader2, !dbg !749                ; [debug line = 668:26]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %i_1 = phi i3 [ %i_5, %2 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i3]
  %exitcond = icmp eq i3 %i_1, -2, !dbg !745      ; [#uses=1 type=i1] [debug line = 675:12]
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) ; [#uses=0 type=i32]
  %i_5 = add i3 %i_1, 1, !dbg !753                ; [#uses=1 type=i3] [debug line = 675:26]
  br i1 %exitcond, label %.loopexit, label %2, !dbg !745 ; [debug line = 675:12]

; <label>:2                                       ; preds = %.preheader
  %tmp_44 = zext i3 %i_1 to i64, !dbg !741        ; [#uses=2 type=i64] [debug line = 677:4]
  %dlti_addr_6 = getelementptr [6 x i32]* %dlti, i64 0, i64 %tmp_44, !dbg !741 ; [#uses=1 type=i32*] [debug line = 677:4]
  %dlti_load = load i32* %dlti_addr_6, align 4, !dbg !741 ; [#uses=1 type=i32] [debug line = 677:4]
  %tmp_45 = sext i32 %dlti_load to i64, !dbg !741 ; [#uses=1 type=i64] [debug line = 677:4]
  %tmp_46 = mul nsw i64 %tmp_s, %tmp_45, !dbg !741 ; [#uses=1 type=i64] [debug line = 677:4]
  %tmp_61 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %tmp_46, i32 63), !dbg !741 ; [#uses=1 type=i1] [debug line = 677:4]
  %wd2_cast_cast = select i1 %tmp_61, i32 -128, i32 128, !dbg !741 ; [#uses=1 type=i32] [debug line = 677:4]
  %bli_addr_1 = getelementptr [6 x i32]* %bli, i64 0, i64 %tmp_44, !dbg !754 ; [#uses=2 type=i32*] [debug line = 681:4]
  %bli_load_1 = load i32* %bli_addr_1, align 4, !dbg !754 ; [#uses=2 type=i32] [debug line = 681:4]
  %tmp_57_cast = sext i32 %bli_load_1 to i40, !dbg !754 ; [#uses=1 type=i40] [debug line = 681:4]
  %p_shl1 = call i40 @_ssdm_op_BitConcatenate.i40.i32.i8(i32 %bli_load_1, i8 0), !dbg !754 ; [#uses=1 type=i40] [debug line = 681:4]
  %tmp_47 = sub i40 %p_shl1, %tmp_57_cast, !dbg !754 ; [#uses=1 type=i40] [debug line = 681:4]
  %wd3 = call i32 @_ssdm_op_PartSelect.i32.i40.i32.i32(i40 %tmp_47, i32 8, i32 39), !dbg !754 ; [#uses=1 type=i32] [debug line = 681:4]
  call void @llvm.dbg.value(metadata !{i32 %wd3}, i64 0, metadata !755), !dbg !754 ; [debug line = 681:4] [debug variable = wd3]
  %tmp_48 = add nsw i32 %wd2_cast_cast, %wd3, !dbg !756 ; [#uses=1 type=i32] [debug line = 682:4]
  store i32 %tmp_48, i32* %bli_addr_1, align 4, !dbg !756 ; [debug line = 682:4]
  call void @llvm.dbg.value(metadata !{i3 %i_5}, i64 0, metadata !752), !dbg !753 ; [debug line = 675:26] [debug variable = i]
  br label %.preheader, !dbg !753                 ; [debug line = 675:26]

.loopexit:                                        ; preds = %.preheader, %.preheader2
  %dlti_addr_1 = getelementptr [6 x i32]* %dlti, i64 0, i64 4, !dbg !757 ; [#uses=2 type=i32*] [debug line = 686:3]
  %dlti_load_1 = load i32* %dlti_addr_1, align 4, !dbg !757 ; [#uses=1 type=i32] [debug line = 686:3]
  %dlti_addr_2 = getelementptr [6 x i32]* %dlti, i64 0, i64 5, !dbg !757 ; [#uses=1 type=i32*] [debug line = 686:3]
  store i32 %dlti_load_1, i32* %dlti_addr_2, align 4, !dbg !757 ; [debug line = 686:3]
  %dlti_addr_3 = getelementptr [6 x i32]* %dlti, i64 0, i64 3, !dbg !758 ; [#uses=2 type=i32*] [debug line = 687:3]
  %dlti_load_2 = load i32* %dlti_addr_3, align 4, !dbg !758 ; [#uses=1 type=i32] [debug line = 687:3]
  store i32 %dlti_load_2, i32* %dlti_addr_1, align 4, !dbg !758 ; [debug line = 687:3]
  %dlti_addr_4 = getelementptr [6 x i32]* %dlti, i64 0, i64 2, !dbg !759 ; [#uses=2 type=i32*] [debug line = 688:3]
  %dlti_load_3 = load i32* %dlti_addr_4, align 4, !dbg !759 ; [#uses=1 type=i32] [debug line = 688:3]
  store i32 %dlti_load_3, i32* %dlti_addr_3, align 4, !dbg !759 ; [debug line = 688:3]
  %dlti_addr_5 = getelementptr [6 x i32]* %dlti, i64 0, i64 1, !dbg !760 ; [#uses=2 type=i32*] [debug line = 689:3]
  %dlti_load_4 = load i32* %dlti_addr_5, align 4, !dbg !760 ; [#uses=1 type=i32] [debug line = 689:3]
  store i32 %dlti_load_4, i32* %dlti_addr_4, align 4, !dbg !760 ; [debug line = 689:3]
  %dlti_load_5 = load i32* %dlti_addr, align 4, !dbg !761 ; [#uses=1 type=i32] [debug line = 690:3]
  store i32 %dlti_load_5, i32* %dlti_addr_5, align 4, !dbg !761 ; [debug line = 690:3]
  store i32 %dlt_read, i32* %dlti_addr, align 4, !dbg !762 ; [debug line = 691:3]
  ret void, !dbg !763                             ; [debug line = 692:1]
}

; [#uses=7]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32, i32, i32, i32, i2) {
entry:
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %case3, %case2, %case1, %entry
  %merge = phi i32 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ] ; [#uses=1 type=i32]
  ret i32 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0
}

; [#uses=4]
define weak i34 @_ssdm_op_BitConcatenate.i34.i32.i2(i32, i2) nounwind readnone {
entry:
  %empty = zext i32 %0 to i34                     ; [#uses=1 type=i34]
  %empty_30 = zext i2 %1 to i34                   ; [#uses=1 type=i34]
  %empty_31 = shl i34 %empty, 2                   ; [#uses=1 type=i34]
  %empty_32 = or i34 %empty_31, %empty_30         ; [#uses=1 type=i34]
  ret i34 %empty_32
}

; [#uses=2]
define weak i36 @_ssdm_op_BitConcatenate.i36.i32.i4(i32, i4) nounwind readnone {
entry:
  %empty = zext i32 %0 to i36                     ; [#uses=1 type=i36]
  %empty_33 = zext i4 %1 to i36                   ; [#uses=1 type=i36]
  %empty_34 = shl i36 %empty, 4                   ; [#uses=1 type=i36]
  %empty_35 = or i36 %empty_34, %empty_33         ; [#uses=1 type=i36]
  ret i36 %empty_35
}

; [#uses=4]
define weak i32 @_ssdm_op_PartSelect.i32.i47.i32.i32(i47, i32, i32) nounwind readnone {
entry:
  %empty = call i47 @llvm.part.select.i47(i47 %0, i32 %1, i32 %2) ; [#uses=1 type=i47]
  %empty_36 = trunc i47 %empty to i32             ; [#uses=1 type=i32]
  ret i32 %empty_36
}

; [#uses=1]
define weak i32 @_ssdm_op_PartSelect.i32.i51.i32.i32(i51, i32, i32) nounwind readnone {
entry:
  %empty = call i51 @llvm.part.select.i51(i51 %0, i32 %1, i32 %2) ; [#uses=1 type=i51]
  %empty_37 = trunc i51 %empty to i32             ; [#uses=1 type=i32]
  ret i32 %empty_37
}

; [#uses=4]
define weak i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2) ; [#uses=1 type=i64]
  %empty_38 = trunc i64 %empty to i32             ; [#uses=1 type=i32]
  ret i32 %empty_38
}

; [#uses=2]
define weak i32 @_ssdm_op_PartSelect.i32.i41.i32.i32(i41, i32, i32) nounwind readnone {
entry:
  %empty = call i41 @llvm.part.select.i41(i41 %0, i32 %1, i32 %2) ; [#uses=1 type=i41]
  %empty_39 = trunc i41 %empty to i32             ; [#uses=1 type=i32]
  ret i32 %empty_39
}

; [#uses=6]
define weak i32 @_ssdm_op_PartSelect.i32.i40.i32.i32(i40, i32, i32) nounwind readnone {
entry:
  %empty = call i40 @llvm.part.select.i40(i40 %0, i32 %1, i32 %2) ; [#uses=1 type=i40]
  %empty_40 = trunc i40 %empty to i32             ; [#uses=1 type=i32]
  ret i32 %empty_40
}

; [#uses=4]
define weak i40 @_ssdm_op_BitConcatenate.i40.i32.i8(i32, i8) nounwind readnone {
entry:
  %empty = zext i32 %0 to i40                     ; [#uses=1 type=i40]
  %empty_41 = zext i8 %1 to i40                   ; [#uses=1 type=i40]
  %empty_42 = shl i40 %empty, 8                   ; [#uses=1 type=i40]
  %empty_43 = or i40 %empty_42, %empty_41         ; [#uses=1 type=i40]
  ret i40 %empty_43
}

; [#uses=4]
define weak i39 @_ssdm_op_BitConcatenate.i39.i32.i7(i32, i7) nounwind readnone {
entry:
  %empty = zext i32 %0 to i39                     ; [#uses=1 type=i39]
  %empty_44 = zext i7 %1 to i39                   ; [#uses=1 type=i39]
  %empty_45 = shl i39 %empty, 7                   ; [#uses=1 type=i39]
  %empty_46 = or i39 %empty_45, %empty_44         ; [#uses=1 type=i39]
  ret i39 %empty_46
}

; [#uses=2]
define weak i28 @_ssdm_op_PartSelect.i28.i35.i32.i32(i35, i32, i32) nounwind readnone {
entry:
  %empty = call i35 @llvm.part.select.i35(i35 %0, i32 %1, i32 %2) ; [#uses=1 type=i35]
  %empty_47 = trunc i35 %empty to i28             ; [#uses=1 type=i28]
  ret i28 %empty_47
}

; [#uses=2]
define weak i15 @_ssdm_op_BitConcatenate.i15.i12.i3(i12, i3) nounwind readnone {
entry:
  %empty = zext i12 %0 to i15                     ; [#uses=1 type=i15]
  %empty_48 = zext i3 %1 to i15                   ; [#uses=1 type=i15]
  %empty_49 = shl i15 %empty, 3                   ; [#uses=1 type=i15]
  %empty_50 = or i15 %empty_49, %empty_48         ; [#uses=1 type=i15]
  ret i15 %empty_50
}

; [#uses=2]
define weak i4 @_ssdm_op_PartSelect.i4.i15.i32.i32(i15, i32, i32) nounwind readnone {
entry:
  %empty = call i15 @llvm.part.select.i15(i15 %0, i32 %1, i32 %2) ; [#uses=1 type=i15]
  %empty_51 = trunc i15 %empty to i4              ; [#uses=1 type=i4]
  ret i4 %empty_51
}

; [#uses=1]
define weak i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2) ; [#uses=1 type=i6]
  %empty_52 = trunc i6 %empty to i4               ; [#uses=1 type=i4]
  ret i4 %empty_52
}

; [#uses=2]
define weak i5 @_ssdm_op_PartSelect.i5.i15.i32.i32(i15, i32, i32) nounwind readnone {
entry:
  %empty = call i15 @llvm.part.select.i15(i15 %0, i32 %1, i32 %2) ; [#uses=1 type=i15]
  %empty_53 = trunc i15 %empty to i5              ; [#uses=1 type=i5]
  ret i5 %empty_53
}

; [#uses=2]
define weak i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_54 = trunc i32 %empty to i27             ; [#uses=1 type=i27]
  ret i27 %empty_54
}

; [#uses=1]
define weak i30 @_ssdm_op_PartSelect.i30.i42.i32.i32(i42, i32, i32) nounwind readnone {
entry:
  %empty = call i42 @llvm.part.select.i42(i42 %0, i32 %1, i32 %2) ; [#uses=1 type=i42]
  %empty_55 = trunc i42 %empty to i30             ; [#uses=1 type=i30]
  ret i30 %empty_55
}

; [#uses=3]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=5]
define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1                          ; [#uses=1 type=i32]
  %empty_56 = and i32 %0, %empty                  ; [#uses=1 type=i32]
  %empty_57 = icmp ne i32 %empty_56, 0            ; [#uses=1 type=i1]
  ret i1 %empty_57
}

; [#uses=5]
define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64                     ; [#uses=1 type=i64]
  %empty_58 = shl i64 1, %empty                   ; [#uses=1 type=i64]
  %empty_59 = and i64 %0, %empty_58               ; [#uses=1 type=i64]
  %empty_60 = icmp ne i64 %empty_59, 0            ; [#uses=1 type=i1]
  ret i1 %empty_60
}

; [#uses=1]
declare i47 @llvm.part.select.i47(i47, i32, i32) nounwind readnone

; [#uses=1]
declare i51 @llvm.part.select.i51(i51, i32, i32) nounwind readnone

; [#uses=1]
declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

; [#uses=1]
declare i41 @llvm.part.select.i41(i41, i32, i32) nounwind readnone

; [#uses=1]
declare i40 @llvm.part.select.i40(i40, i32, i32) nounwind readnone

; [#uses=1]
declare i35 @llvm.part.select.i35(i35, i32, i32) nounwind readnone

; [#uses=2]
declare i15 @llvm.part.select.i15(i15, i32, i32) nounwind readnone

; [#uses=1]
declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i42 @llvm.part.select.i42(i42, i32, i32) nounwind readnone

; [#uses=0]
declare i47 @_ssdm_op_PartSelect.i47.i50.i32.i32(i50, i32, i32) nounwind readnone

; [#uses=0]
declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

; [#uses=0]
declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

; [#uses=0]
declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i15 @_ssdm_op_PartSelect.i15.i31.i32.i32(i31, i32, i32) nounwind readnone

; [#uses=0]
declare i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i26.i6(i26, i6) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0, !7, !14, !19, !26, !31, !36, !41, !46, !51, !56, !61, !66, !71, !76, !81, !86, !91, !96, !101, !106, !111, !116, !121, !126, !131, !136, !141, !146, !151, !156, !161, !166, !171, !176, !181, !186, !191, !196, !201, !206, !211, !216, !221, !226, !231, !236, !241, !246, !251, !256, !261, !266, !271, !276, !281, !286, !291, !296, !301, !306, !311, !316, !321, !326, !331, !336, !341, !346, !351, !356, !361, !366, !371, !376, !381, !386, !393, !398, !403, !408, !415}

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
!420 = metadata !{metadata !421}
!421 = metadata !{i32 0, i32 31, metadata !422}
!422 = metadata !{metadata !423}
!423 = metadata !{metadata !"xin1", metadata !424, metadata !"int", i32 0, i32 31}
!424 = metadata !{metadata !425}
!425 = metadata !{i32 0, i32 0, i32 0}
!426 = metadata !{metadata !427}
!427 = metadata !{i32 0, i32 31, metadata !428}
!428 = metadata !{metadata !429}
!429 = metadata !{metadata !"xin2", metadata !424, metadata !"int", i32 0, i32 31}
!430 = metadata !{metadata !431}
!431 = metadata !{i32 0, i32 31, metadata !432}
!432 = metadata !{metadata !433}
!433 = metadata !{metadata !"return", metadata !434, metadata !"int", i32 0, i32 31}
!434 = metadata !{metadata !435}
!435 = metadata !{i32 0, i32 1, i32 0}
!436 = metadata !{i32 786689, metadata !437, metadata !"xin2", metadata !438, i32 33554680, metadata !441, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!437 = metadata !{i32 786478, i32 0, metadata !438, metadata !"encode", metadata !"encode", metadata !"", metadata !438, i32 248, metadata !439, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @encode, null, null, metadata !442, i32 249} ; [ DW_TAG_subprogram ]
!438 = metadata !{i32 786473, metadata !"adpcm.c", metadata !"/scratch/qijing.huang/firechip/hls_adpcm_encode/src/main/c", null} ; [ DW_TAG_file_type ]
!439 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !440, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!440 = metadata !{metadata !441, metadata !441, metadata !441}
!441 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!442 = metadata !{metadata !443}
!443 = metadata !{i32 786468}                     ; [ DW_TAG_base_type ]
!444 = metadata !{i32 248, i32 23, metadata !437, null}
!445 = metadata !{i32 786689, metadata !437, metadata !"xin1", metadata !438, i32 16777464, metadata !441, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!446 = metadata !{i32 248, i32 13, metadata !437, null}
!447 = metadata !{i32 259, i32 3, metadata !448, null}
!448 = metadata !{i32 786443, metadata !437, i32 249, i32 1, metadata !438, i32 1} ; [ DW_TAG_lexical_block ]
!449 = metadata !{i32 786688, metadata !448, metadata !"xa", metadata !438, i32 253, metadata !450, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!450 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!451 = metadata !{i32 260, i32 3, metadata !448, null}
!452 = metadata !{i32 786688, metadata !448, metadata !"xb", metadata !438, i32 253, metadata !450, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!453 = metadata !{i32 262, i32 8, metadata !454, null}
!454 = metadata !{i32 786443, metadata !448, i32 262, i32 3, metadata !438, i32 2} ; [ DW_TAG_lexical_block ]
!455 = metadata !{i32 262, i32 23, metadata !454, null}
!456 = metadata !{i32 264, i32 7, metadata !457, null}
!457 = metadata !{i32 786443, metadata !454, i32 263, i32 5, metadata !438, i32 3} ; [ DW_TAG_lexical_block ]
!458 = metadata !{i32 786688, metadata !448, metadata !"tqmf_ptr", metadata !438, i32 252, metadata !459, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!459 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !441} ; [ DW_TAG_pointer_type ]
!460 = metadata !{i32 786688, metadata !448, metadata !"h_ptr", metadata !438, i32 251, metadata !461, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!461 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !462} ; [ DW_TAG_pointer_type ]
!462 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !441} ; [ DW_TAG_const_type ]
!463 = metadata !{i32 265, i32 7, metadata !457, null}
!464 = metadata !{i32 786688, metadata !448, metadata !"i", metadata !438, i32 250, metadata !441, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!465 = metadata !{i32 268, i32 3, metadata !448, null}
!466 = metadata !{i32 269, i32 3, metadata !448, null}
!467 = metadata !{i32 273, i32 8, metadata !468, null}
!468 = metadata !{i32 786443, metadata !448, i32 273, i32 3, metadata !438, i32 4} ; [ DW_TAG_lexical_block ]
!469 = metadata !{i32 272, i32 3, metadata !448, null}
!470 = metadata !{i32 786688, metadata !448, metadata !"tqmf_ptr1", metadata !438, i32 252, metadata !459, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!471 = metadata !{i32 273, i32 23, metadata !468, null}
!472 = metadata !{i32 274, i32 5, metadata !468, null}
!473 = metadata !{i32 275, i32 3, metadata !448, null}
!474 = metadata !{i32 276, i32 3, metadata !448, null}
!475 = metadata !{i32 279, i32 3, metadata !448, null}
!476 = metadata !{i32 280, i32 3, metadata !448, null}
!477 = metadata !{i32 585, i32 3, metadata !478, metadata !482}
!478 = metadata !{i32 786443, metadata !479, i32 582, i32 1, metadata !438, i32 20} ; [ DW_TAG_lexical_block ]
!479 = metadata !{i32 786478, i32 0, metadata !438, metadata !"filtez", metadata !"filtez", metadata !"", metadata !438, i32 581, metadata !480, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !442, i32 582} ; [ DW_TAG_subprogram ]
!480 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !481, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!481 = metadata !{metadata !441, metadata !459, metadata !459}
!482 = metadata !{i32 287, i32 9, metadata !448, null}
!483 = metadata !{i32 786688, metadata !478, metadata !"zl", metadata !438, i32 584, metadata !450, i32 0, metadata !482} ; [ DW_TAG_auto_variable ]
!484 = metadata !{i32 586, i32 8, metadata !485, metadata !482}
!485 = metadata !{i32 786443, metadata !478, i32 586, i32 3, metadata !438, i32 21} ; [ DW_TAG_lexical_block ]
!486 = metadata !{i32 786689, metadata !479, metadata !"dlt", metadata !438, i32 33555013, metadata !459, i32 0, metadata !482} ; [ DW_TAG_arg_variable ]
!487 = metadata !{i32 786689, metadata !479, metadata !"bpl", metadata !438, i32 16777797, metadata !459, i32 0, metadata !482} ; [ DW_TAG_arg_variable ]
!488 = metadata !{i32 587, i32 5, metadata !485, metadata !482}
!489 = metadata !{i32 586, i32 22, metadata !485, metadata !482}
!490 = metadata !{i32 589, i32 3, metadata !478, metadata !482}
!491 = metadata !{i32 290, i32 9, metadata !448, null}
!492 = metadata !{i32 786689, metadata !493, metadata !"rlt1", metadata !438, i32 16777812, metadata !441, i32 0, metadata !491} ; [ DW_TAG_arg_variable ]
!493 = metadata !{i32 786478, i32 0, metadata !438, metadata !"filtep", metadata !"filtep", metadata !"", metadata !438, i32 596, metadata !494, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !442, i32 597} ; [ DW_TAG_subprogram ]
!494 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !495, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!495 = metadata !{metadata !441, metadata !441, metadata !441, metadata !441, metadata !441}
!496 = metadata !{i32 596, i32 13, metadata !493, metadata !491}
!497 = metadata !{i32 786689, metadata !493, metadata !"al1", metadata !438, i32 33555028, metadata !441, i32 0, metadata !491} ; [ DW_TAG_arg_variable ]
!498 = metadata !{i32 596, i32 23, metadata !493, metadata !491}
!499 = metadata !{i32 786689, metadata !493, metadata !"rlt2", metadata !438, i32 50332244, metadata !441, i32 0, metadata !491} ; [ DW_TAG_arg_variable ]
!500 = metadata !{i32 596, i32 32, metadata !493, metadata !491}
!501 = metadata !{i32 786689, metadata !493, metadata !"al2", metadata !438, i32 67109460, metadata !441, i32 0, metadata !491} ; [ DW_TAG_arg_variable ]
!502 = metadata !{i32 596, i32 42, metadata !493, metadata !491}
!503 = metadata !{i32 599, i32 3, metadata !504, metadata !491}
!504 = metadata !{i32 786443, metadata !493, i32 597, i32 1, metadata !438, i32 22} ; [ DW_TAG_lexical_block ]
!505 = metadata !{i32 786688, metadata !504, metadata !"pl", metadata !438, i32 598, metadata !450, i32 0, metadata !491} ; [ DW_TAG_auto_variable ]
!506 = metadata !{i32 600, i32 3, metadata !504, metadata !491}
!507 = metadata !{i32 601, i32 3, metadata !504, metadata !491}
!508 = metadata !{i32 786688, metadata !504, metadata !"pl2", metadata !438, i32 598, metadata !450, i32 0, metadata !491} ; [ DW_TAG_auto_variable ]
!509 = metadata !{i32 602, i32 3, metadata !504, metadata !491}
!510 = metadata !{i32 603, i32 3, metadata !504, metadata !491}
!511 = metadata !{i32 293, i32 3, metadata !448, null}
!512 = metadata !{i32 294, i32 3, metadata !448, null}
!513 = metadata !{i32 297, i32 8, metadata !448, null}
!514 = metadata !{i32 786689, metadata !515, metadata !"el", metadata !438, i32 16777824, metadata !441, i32 0, metadata !513} ; [ DW_TAG_arg_variable ]
!515 = metadata !{i32 786478, i32 0, metadata !438, metadata !"quantl", metadata !"quantl", metadata !"", metadata !438, i32 608, metadata !439, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !442, i32 609} ; [ DW_TAG_subprogram ]
!516 = metadata !{i32 608, i32 13, metadata !515, metadata !513}
!517 = metadata !{i32 786689, metadata !515, metadata !"detl", metadata !438, i32 33555040, metadata !441, i32 0, metadata !513} ; [ DW_TAG_arg_variable ]
!518 = metadata !{i32 608, i32 21, metadata !515, metadata !513}
!519 = metadata !{i32 786689, metadata !520, metadata !"n", metadata !438, i32 16777452, metadata !441, i32 0, metadata !523} ; [ DW_TAG_arg_variable ]
!520 = metadata !{i32 786478, i32 0, metadata !438, metadata !"abs", metadata !"abs", metadata !"", metadata !438, i32 236, metadata !521, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !442, i32 237} ; [ DW_TAG_subprogram ]
!521 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !522, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!522 = metadata !{metadata !441, metadata !441}
!523 = metadata !{i32 614, i32 8, metadata !524, metadata !513}
!524 = metadata !{i32 786443, metadata !515, i32 609, i32 1, metadata !438, i32 23} ; [ DW_TAG_lexical_block ]
!525 = metadata !{i32 236, i32 10, metadata !520, metadata !523}
!526 = metadata !{i32 240, i32 3, metadata !527, metadata !523}
!527 = metadata !{i32 786443, metadata !520, i32 237, i32 1, metadata !438, i32 0} ; [ DW_TAG_lexical_block ]
!528 = metadata !{i32 243, i32 5, metadata !527, metadata !523}
!529 = metadata !{i32 786688, metadata !527, metadata !"m", metadata !438, i32 238, metadata !441, i32 0, metadata !523} ; [ DW_TAG_auto_variable ]
!530 = metadata !{i32 616, i32 8, metadata !531, metadata !513}
!531 = metadata !{i32 786443, metadata !524, i32 616, i32 3, metadata !438, i32 24} ; [ DW_TAG_lexical_block ]
!532 = metadata !{i32 616, i32 27, metadata !531, metadata !513}
!533 = metadata !{i32 786688, metadata !524, metadata !"mil", metadata !438, i32 610, metadata !441, i32 0, metadata !513} ; [ DW_TAG_auto_variable ]
!534 = metadata !{i32 618, i32 7, metadata !535, metadata !513}
!535 = metadata !{i32 786443, metadata !531, i32 617, i32 5, metadata !438, i32 25} ; [ DW_TAG_lexical_block ]
!536 = metadata !{i32 619, i32 7, metadata !535, metadata !513}
!537 = metadata !{i32 624, i32 5, metadata !524, metadata !513}
!538 = metadata !{i32 786688, metadata !524, metadata !"ril", metadata !438, i32 610, metadata !441, i32 0, metadata !513} ; [ DW_TAG_auto_variable ]
!539 = metadata !{i32 626, i32 5, metadata !524, metadata !513}
!540 = metadata !{i32 634, i32 13, metadata !541, metadata !542}
!541 = metadata !{i32 786478, i32 0, metadata !438, metadata !"logscl", metadata !"logscl", metadata !"", metadata !438, i32 634, metadata !439, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !442, i32 635} ; [ DW_TAG_subprogram ]
!542 = metadata !{i32 304, i32 9, metadata !448, null}
!543 = metadata !{i32 301, i32 3, metadata !448, null}
!544 = metadata !{i32 786689, metadata !541, metadata !"il", metadata !438, i32 16777850, metadata !441, i32 0, metadata !542} ; [ DW_TAG_arg_variable ]
!545 = metadata !{i32 786689, metadata !541, metadata !"nbl", metadata !438, i32 33555066, metadata !441, i32 0, metadata !542} ; [ DW_TAG_arg_variable ]
!546 = metadata !{i32 634, i32 21, metadata !541, metadata !542}
!547 = metadata !{i32 637, i32 3, metadata !548, metadata !542}
!548 = metadata !{i32 786443, metadata !541, i32 635, i32 1, metadata !438, i32 26} ; [ DW_TAG_lexical_block ]
!549 = metadata !{i32 638, i32 3, metadata !548, metadata !542}
!550 = metadata !{i32 639, i32 3, metadata !548, metadata !542}
!551 = metadata !{i32 641, i32 3, metadata !548, metadata !542}
!552 = metadata !{i32 786689, metadata !553, metadata !"nbl", metadata !438, i32 16777865, metadata !441, i32 0, metadata !554} ; [ DW_TAG_arg_variable ]
!553 = metadata !{i32 786478, i32 0, metadata !438, metadata !"scalel", metadata !"scalel", metadata !"", metadata !438, i32 649, metadata !439, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !442, i32 650} ; [ DW_TAG_subprogram ]
!554 = metadata !{i32 308, i32 10, metadata !448, null}
!555 = metadata !{i32 649, i32 13, metadata !553, metadata !554}
!556 = metadata !{i32 652, i32 3, metadata !557, metadata !554}
!557 = metadata !{i32 786443, metadata !553, i32 650, i32 1, metadata !438, i32 27} ; [ DW_TAG_lexical_block ]
!558 = metadata !{i32 786688, metadata !557, metadata !"wd1", metadata !438, i32 651, metadata !441, i32 0, metadata !554} ; [ DW_TAG_auto_variable ]
!559 = metadata !{i32 653, i32 3, metadata !557, metadata !554}
!560 = metadata !{i32 654, i32 3, metadata !557, metadata !554}
!561 = metadata !{i32 786688, metadata !557, metadata !"wd3", metadata !438, i32 651, metadata !441, i32 0, metadata !554} ; [ DW_TAG_auto_variable ]
!562 = metadata !{i32 655, i32 3, metadata !557, metadata !554}
!563 = metadata !{i32 311, i32 3, metadata !448, null}
!564 = metadata !{i32 317, i32 3, metadata !448, null}
!565 = metadata !{i32 321, i32 9, metadata !448, null}
!566 = metadata !{i32 786689, metadata !567, metadata !"al1", metadata !438, i32 16777914, metadata !441, i32 0, metadata !565} ; [ DW_TAG_arg_variable ]
!567 = metadata !{i32 786478, i32 0, metadata !438, metadata !"uppol2", metadata !"uppol2", metadata !"", metadata !438, i32 698, metadata !568, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !442, i32 699} ; [ DW_TAG_subprogram ]
!568 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !569, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!569 = metadata !{metadata !441, metadata !441, metadata !441, metadata !441, metadata !441, metadata !441}
!570 = metadata !{i32 698, i32 13, metadata !567, metadata !565}
!571 = metadata !{i32 786689, metadata !567, metadata !"al2", metadata !438, i32 33555130, metadata !441, i32 0, metadata !565} ; [ DW_TAG_arg_variable ]
!572 = metadata !{i32 698, i32 22, metadata !567, metadata !565}
!573 = metadata !{i32 786689, metadata !567, metadata !"plt", metadata !438, i32 50332346, metadata !441, i32 0, metadata !565} ; [ DW_TAG_arg_variable ]
!574 = metadata !{i32 698, i32 31, metadata !567, metadata !565}
!575 = metadata !{i32 786689, metadata !567, metadata !"plt1", metadata !438, i32 67109562, metadata !441, i32 0, metadata !565} ; [ DW_TAG_arg_variable ]
!576 = metadata !{i32 698, i32 40, metadata !567, metadata !565}
!577 = metadata !{i32 786689, metadata !567, metadata !"plt2", metadata !438, i32 83886778, metadata !441, i32 0, metadata !565} ; [ DW_TAG_arg_variable ]
!578 = metadata !{i32 698, i32 50, metadata !567, metadata !565}
!579 = metadata !{i32 702, i32 3, metadata !580, metadata !565}
!580 = metadata !{i32 786443, metadata !567, i32 699, i32 1, metadata !438, i32 35} ; [ DW_TAG_lexical_block ]
!581 = metadata !{i32 786688, metadata !580, metadata !"wd2", metadata !438, i32 700, metadata !450, i32 0, metadata !565} ; [ DW_TAG_auto_variable ]
!582 = metadata !{i32 703, i32 3, metadata !580, metadata !565}
!583 = metadata !{i32 704, i32 5, metadata !580, metadata !565}
!584 = metadata !{i32 705, i32 3, metadata !580, metadata !565}
!585 = metadata !{i32 706, i32 3, metadata !580, metadata !565}
!586 = metadata !{i32 714, i32 3, metadata !580, metadata !565}
!587 = metadata !{i32 786688, metadata !580, metadata !"apl2", metadata !438, i32 701, metadata !441, i32 0, metadata !565} ; [ DW_TAG_auto_variable ]
!588 = metadata !{i32 717, i32 3, metadata !580, metadata !565}
!589 = metadata !{i32 719, i32 3, metadata !580, metadata !565}
!590 = metadata !{i32 786689, metadata !591, metadata !"al1", metadata !438, i32 16777944, metadata !441, i32 0, metadata !592} ; [ DW_TAG_arg_variable ]
!591 = metadata !{i32 786478, i32 0, metadata !438, metadata !"uppol1", metadata !"uppol1", metadata !"", metadata !438, i32 728, metadata !494, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !442, i32 729} ; [ DW_TAG_subprogram ]
!592 = metadata !{i32 325, i32 9, metadata !448, null}
!593 = metadata !{i32 728, i32 13, metadata !591, metadata !592}
!594 = metadata !{i32 786689, metadata !591, metadata !"apl2", metadata !438, i32 33555160, metadata !441, i32 0, metadata !592} ; [ DW_TAG_arg_variable ]
!595 = metadata !{i32 728, i32 22, metadata !591, metadata !592}
!596 = metadata !{i32 786689, metadata !591, metadata !"plt", metadata !438, i32 50332376, metadata !441, i32 0, metadata !592} ; [ DW_TAG_arg_variable ]
!597 = metadata !{i32 728, i32 32, metadata !591, metadata !592}
!598 = metadata !{i32 786689, metadata !591, metadata !"plt1", metadata !438, i32 67109592, metadata !441, i32 0, metadata !592} ; [ DW_TAG_arg_variable ]
!599 = metadata !{i32 728, i32 41, metadata !591, metadata !592}
!600 = metadata !{i32 732, i32 3, metadata !601, metadata !592}
!601 = metadata !{i32 786443, metadata !591, i32 729, i32 1, metadata !438, i32 38} ; [ DW_TAG_lexical_block ]
!602 = metadata !{i32 735, i32 7, metadata !603, metadata !592}
!603 = metadata !{i32 786443, metadata !601, i32 734, i32 5, metadata !438, i32 39} ; [ DW_TAG_lexical_block ]
!604 = metadata !{i32 786688, metadata !601, metadata !"apl1", metadata !438, i32 731, metadata !441, i32 0, metadata !592} ; [ DW_TAG_auto_variable ]
!605 = metadata !{i32 739, i32 7, metadata !606, metadata !592}
!606 = metadata !{i32 786443, metadata !601, i32 738, i32 5, metadata !438, i32 40} ; [ DW_TAG_lexical_block ]
!607 = metadata !{i32 742, i32 3, metadata !601, metadata !592}
!608 = metadata !{i32 744, i32 5, metadata !601, metadata !592}
!609 = metadata !{i32 786688, metadata !601, metadata !"wd3", metadata !438, i32 731, metadata !441, i32 0, metadata !592} ; [ DW_TAG_auto_variable ]
!610 = metadata !{i32 743, i32 3, metadata !601, metadata !592}
!611 = metadata !{i32 745, i32 3, metadata !601, metadata !592}
!612 = metadata !{i32 746, i32 5, metadata !601, metadata !592}
!613 = metadata !{i32 328, i32 3, metadata !448, null}
!614 = metadata !{i32 331, i32 3, metadata !448, null}
!615 = metadata !{i32 332, i32 3, metadata !448, null}
!616 = metadata !{i32 333, i32 3, metadata !448, null}
!617 = metadata !{i32 334, i32 3, metadata !448, null}
!618 = metadata !{i32 585, i32 3, metadata !478, metadata !619}
!619 = metadata !{i32 338, i32 9, metadata !448, null}
!620 = metadata !{i32 786688, metadata !478, metadata !"zl", metadata !438, i32 584, metadata !450, i32 0, metadata !619} ; [ DW_TAG_auto_variable ]
!621 = metadata !{i32 586, i32 8, metadata !485, metadata !619}
!622 = metadata !{i32 786689, metadata !479, metadata !"dlt", metadata !438, i32 33555013, metadata !459, i32 0, metadata !619} ; [ DW_TAG_arg_variable ]
!623 = metadata !{i32 786689, metadata !479, metadata !"bpl", metadata !438, i32 16777797, metadata !459, i32 0, metadata !619} ; [ DW_TAG_arg_variable ]
!624 = metadata !{i32 587, i32 5, metadata !485, metadata !619}
!625 = metadata !{i32 586, i32 22, metadata !485, metadata !619}
!626 = metadata !{i32 589, i32 3, metadata !478, metadata !619}
!627 = metadata !{i32 340, i32 9, metadata !448, null}
!628 = metadata !{i32 786689, metadata !493, metadata !"rlt1", metadata !438, i32 16777812, metadata !441, i32 0, metadata !627} ; [ DW_TAG_arg_variable ]
!629 = metadata !{i32 596, i32 13, metadata !493, metadata !627}
!630 = metadata !{i32 786689, metadata !493, metadata !"al1", metadata !438, i32 33555028, metadata !441, i32 0, metadata !627} ; [ DW_TAG_arg_variable ]
!631 = metadata !{i32 596, i32 23, metadata !493, metadata !627}
!632 = metadata !{i32 786689, metadata !493, metadata !"rlt2", metadata !438, i32 50332244, metadata !441, i32 0, metadata !627} ; [ DW_TAG_arg_variable ]
!633 = metadata !{i32 596, i32 32, metadata !493, metadata !627}
!634 = metadata !{i32 786689, metadata !493, metadata !"al2", metadata !438, i32 67109460, metadata !441, i32 0, metadata !627} ; [ DW_TAG_arg_variable ]
!635 = metadata !{i32 596, i32 42, metadata !493, metadata !627}
!636 = metadata !{i32 599, i32 3, metadata !504, metadata !627}
!637 = metadata !{i32 786688, metadata !504, metadata !"pl", metadata !438, i32 598, metadata !450, i32 0, metadata !627} ; [ DW_TAG_auto_variable ]
!638 = metadata !{i32 600, i32 3, metadata !504, metadata !627}
!639 = metadata !{i32 601, i32 3, metadata !504, metadata !627}
!640 = metadata !{i32 786688, metadata !504, metadata !"pl2", metadata !438, i32 598, metadata !450, i32 0, metadata !627} ; [ DW_TAG_auto_variable ]
!641 = metadata !{i32 602, i32 3, metadata !504, metadata !627}
!642 = metadata !{i32 603, i32 3, metadata !504, metadata !627}
!643 = metadata !{i32 343, i32 3, metadata !448, null}
!644 = metadata !{i32 345, i32 3, metadata !448, null}
!645 = metadata !{i32 349, i32 3, metadata !448, null}
!646 = metadata !{i32 351, i32 7, metadata !647, null}
!647 = metadata !{i32 786443, metadata !448, i32 350, i32 5, metadata !438, i32 5} ; [ DW_TAG_lexical_block ]
!648 = metadata !{i32 357, i32 3, metadata !448, null}
!649 = metadata !{i32 786688, metadata !448, metadata !"decis", metadata !438, i32 254, metadata !441, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!650 = metadata !{i32 786689, metadata !520, metadata !"n", metadata !438, i32 16777452, metadata !441, i32 0, metadata !651} ; [ DW_TAG_arg_variable ]
!651 = metadata !{i32 358, i32 7, metadata !448, null}
!652 = metadata !{i32 236, i32 10, metadata !520, metadata !651}
!653 = metadata !{i32 240, i32 3, metadata !527, metadata !651}
!654 = metadata !{i32 243, i32 5, metadata !527, metadata !651}
!655 = metadata !{i32 786688, metadata !527, metadata !"m", metadata !438, i32 238, metadata !441, i32 0, metadata !651} ; [ DW_TAG_auto_variable ]
!656 = metadata !{i32 359, i32 5, metadata !448, null}
!657 = metadata !{i32 362, i32 3, metadata !448, null}
!658 = metadata !{i32 365, i32 9, metadata !448, null}
!659 = metadata !{i32 786689, metadata !660, metadata !"ih", metadata !438, i32 16777970, metadata !441, i32 0, metadata !658} ; [ DW_TAG_arg_variable ]
!660 = metadata !{i32 786478, i32 0, metadata !438, metadata !"logsch", metadata !"logsch", metadata !"", metadata !438, i32 754, metadata !439, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !442, i32 755} ; [ DW_TAG_subprogram ]
!661 = metadata !{i32 754, i32 13, metadata !660, metadata !658}
!662 = metadata !{i32 786689, metadata !660, metadata !"nbh", metadata !438, i32 33555186, metadata !441, i32 0, metadata !658} ; [ DW_TAG_arg_variable ]
!663 = metadata !{i32 754, i32 21, metadata !660, metadata !658}
!664 = metadata !{i32 757, i32 3, metadata !665, metadata !658}
!665 = metadata !{i32 786443, metadata !660, i32 755, i32 1, metadata !438, i32 41} ; [ DW_TAG_lexical_block ]
!666 = metadata !{i32 786688, metadata !665, metadata !"wd", metadata !438, i32 756, metadata !441, i32 0, metadata !658} ; [ DW_TAG_auto_variable ]
!667 = metadata !{i32 758, i32 3, metadata !665, metadata !658}
!668 = metadata !{i32 759, i32 3, metadata !665, metadata !658}
!669 = metadata !{i32 761, i32 3, metadata !665, metadata !658}
!670 = metadata !{i32 786689, metadata !553, metadata !"nbl", metadata !438, i32 16777865, metadata !441, i32 0, metadata !671} ; [ DW_TAG_arg_variable ]
!671 = metadata !{i32 368, i32 10, metadata !448, null}
!672 = metadata !{i32 649, i32 13, metadata !553, metadata !671}
!673 = metadata !{i32 652, i32 3, metadata !557, metadata !671}
!674 = metadata !{i32 786688, metadata !557, metadata !"wd1", metadata !438, i32 651, metadata !441, i32 0, metadata !671} ; [ DW_TAG_auto_variable ]
!675 = metadata !{i32 653, i32 3, metadata !557, metadata !671}
!676 = metadata !{i32 654, i32 3, metadata !557, metadata !671}
!677 = metadata !{i32 786688, metadata !557, metadata !"wd3", metadata !438, i32 651, metadata !441, i32 0, metadata !671} ; [ DW_TAG_auto_variable ]
!678 = metadata !{i32 655, i32 3, metadata !557, metadata !671}
!679 = metadata !{i32 371, i32 3, metadata !448, null}
!680 = metadata !{i32 376, i32 3, metadata !448, null}
!681 = metadata !{i32 380, i32 9, metadata !448, null}
!682 = metadata !{i32 786689, metadata !567, metadata !"al1", metadata !438, i32 16777914, metadata !441, i32 0, metadata !681} ; [ DW_TAG_arg_variable ]
!683 = metadata !{i32 698, i32 13, metadata !567, metadata !681}
!684 = metadata !{i32 786689, metadata !567, metadata !"al2", metadata !438, i32 33555130, metadata !441, i32 0, metadata !681} ; [ DW_TAG_arg_variable ]
!685 = metadata !{i32 698, i32 22, metadata !567, metadata !681}
!686 = metadata !{i32 786689, metadata !567, metadata !"plt", metadata !438, i32 50332346, metadata !441, i32 0, metadata !681} ; [ DW_TAG_arg_variable ]
!687 = metadata !{i32 698, i32 31, metadata !567, metadata !681}
!688 = metadata !{i32 786689, metadata !567, metadata !"plt1", metadata !438, i32 67109562, metadata !441, i32 0, metadata !681} ; [ DW_TAG_arg_variable ]
!689 = metadata !{i32 698, i32 40, metadata !567, metadata !681}
!690 = metadata !{i32 786689, metadata !567, metadata !"plt2", metadata !438, i32 83886778, metadata !441, i32 0, metadata !681} ; [ DW_TAG_arg_variable ]
!691 = metadata !{i32 698, i32 50, metadata !567, metadata !681}
!692 = metadata !{i32 702, i32 3, metadata !580, metadata !681}
!693 = metadata !{i32 786688, metadata !580, metadata !"wd2", metadata !438, i32 700, metadata !450, i32 0, metadata !681} ; [ DW_TAG_auto_variable ]
!694 = metadata !{i32 703, i32 3, metadata !580, metadata !681}
!695 = metadata !{i32 704, i32 5, metadata !580, metadata !681}
!696 = metadata !{i32 705, i32 3, metadata !580, metadata !681}
!697 = metadata !{i32 706, i32 3, metadata !580, metadata !681}
!698 = metadata !{i32 714, i32 3, metadata !580, metadata !681}
!699 = metadata !{i32 786688, metadata !580, metadata !"apl2", metadata !438, i32 701, metadata !441, i32 0, metadata !681} ; [ DW_TAG_auto_variable ]
!700 = metadata !{i32 717, i32 3, metadata !580, metadata !681}
!701 = metadata !{i32 719, i32 3, metadata !580, metadata !681}
!702 = metadata !{i32 786689, metadata !591, metadata !"al1", metadata !438, i32 16777944, metadata !441, i32 0, metadata !703} ; [ DW_TAG_arg_variable ]
!703 = metadata !{i32 383, i32 9, metadata !448, null}
!704 = metadata !{i32 728, i32 13, metadata !591, metadata !703}
!705 = metadata !{i32 786689, metadata !591, metadata !"apl2", metadata !438, i32 33555160, metadata !441, i32 0, metadata !703} ; [ DW_TAG_arg_variable ]
!706 = metadata !{i32 728, i32 22, metadata !591, metadata !703}
!707 = metadata !{i32 786689, metadata !591, metadata !"plt", metadata !438, i32 50332376, metadata !441, i32 0, metadata !703} ; [ DW_TAG_arg_variable ]
!708 = metadata !{i32 728, i32 32, metadata !591, metadata !703}
!709 = metadata !{i32 786689, metadata !591, metadata !"plt1", metadata !438, i32 67109592, metadata !441, i32 0, metadata !703} ; [ DW_TAG_arg_variable ]
!710 = metadata !{i32 728, i32 41, metadata !591, metadata !703}
!711 = metadata !{i32 732, i32 3, metadata !601, metadata !703}
!712 = metadata !{i32 735, i32 7, metadata !603, metadata !703}
!713 = metadata !{i32 786688, metadata !601, metadata !"apl1", metadata !438, i32 731, metadata !441, i32 0, metadata !703} ; [ DW_TAG_auto_variable ]
!714 = metadata !{i32 739, i32 7, metadata !606, metadata !703}
!715 = metadata !{i32 742, i32 3, metadata !601, metadata !703}
!716 = metadata !{i32 744, i32 5, metadata !601, metadata !703}
!717 = metadata !{i32 786688, metadata !601, metadata !"wd3", metadata !438, i32 731, metadata !441, i32 0, metadata !703} ; [ DW_TAG_auto_variable ]
!718 = metadata !{i32 743, i32 3, metadata !601, metadata !703}
!719 = metadata !{i32 745, i32 3, metadata !601, metadata !703}
!720 = metadata !{i32 746, i32 5, metadata !601, metadata !703}
!721 = metadata !{i32 386, i32 3, metadata !448, null}
!722 = metadata !{i32 389, i32 3, metadata !448, null}
!723 = metadata !{i32 390, i32 3, metadata !448, null}
!724 = metadata !{i32 391, i32 3, metadata !448, null}
!725 = metadata !{i32 392, i32 3, metadata !448, null}
!726 = metadata !{i32 395, i32 3, metadata !448, null}
!727 = metadata !{i32 786689, metadata !728, metadata !"dlt", metadata !438, i32 16777878, metadata !441, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!728 = metadata !{i32 786478, i32 0, metadata !438, metadata !"upzero", metadata !"upzero", metadata !"", metadata !438, i32 662, metadata !729, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !442, i32 663} ; [ DW_TAG_subprogram ]
!729 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !730, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!730 = metadata !{null, metadata !441, metadata !459, metadata !459}
!731 = metadata !{i32 662, i32 13, metadata !728, null}
!732 = metadata !{i32 786689, metadata !728, metadata !"dlti", null, i32 662, metadata !733, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!733 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 192, i64 32, i32 0, i32 0, metadata !441, metadata !734, i32 0, i32 0} ; [ DW_TAG_array_type ]
!734 = metadata !{metadata !735}
!735 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ]
!736 = metadata !{i32 662, i32 23, metadata !728, null}
!737 = metadata !{i32 786689, metadata !728, metadata !"bli", null, i32 662, metadata !733, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!738 = metadata !{i32 662, i32 34, metadata !728, null}
!739 = metadata !{i32 666, i32 3, metadata !740, null}
!740 = metadata !{i32 786443, metadata !728, i32 663, i32 1, metadata !438, i32 28} ; [ DW_TAG_lexical_block ]
!741 = metadata !{i32 677, i32 4, metadata !742, null}
!742 = metadata !{i32 786443, metadata !743, i32 676, i32 2, metadata !438, i32 34} ; [ DW_TAG_lexical_block ]
!743 = metadata !{i32 786443, metadata !744, i32 675, i32 7, metadata !438, i32 33} ; [ DW_TAG_lexical_block ]
!744 = metadata !{i32 786443, metadata !740, i32 674, i32 5, metadata !438, i32 32} ; [ DW_TAG_lexical_block ]
!745 = metadata !{i32 675, i32 12, metadata !743, null}
!746 = metadata !{i32 668, i32 12, metadata !747, null}
!747 = metadata !{i32 786443, metadata !748, i32 668, i32 7, metadata !438, i32 30} ; [ DW_TAG_lexical_block ]
!748 = metadata !{i32 786443, metadata !740, i32 667, i32 5, metadata !438, i32 29} ; [ DW_TAG_lexical_block ]
!749 = metadata !{i32 668, i32 26, metadata !747, null}
!750 = metadata !{i32 670, i32 4, metadata !751, null}
!751 = metadata !{i32 786443, metadata !747, i32 669, i32 2, metadata !438, i32 31} ; [ DW_TAG_lexical_block ]
!752 = metadata !{i32 786688, metadata !740, metadata !"i", metadata !438, i32 664, metadata !441, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!753 = metadata !{i32 675, i32 26, metadata !743, null}
!754 = metadata !{i32 681, i32 4, metadata !742, null}
!755 = metadata !{i32 786688, metadata !740, metadata !"wd3", metadata !438, i32 664, metadata !441, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!756 = metadata !{i32 682, i32 4, metadata !742, null}
!757 = metadata !{i32 686, i32 3, metadata !740, null}
!758 = metadata !{i32 687, i32 3, metadata !740, null}
!759 = metadata !{i32 688, i32 3, metadata !740, null}
!760 = metadata !{i32 689, i32 3, metadata !740, null}
!761 = metadata !{i32 690, i32 3, metadata !740, null}
!762 = metadata !{i32 691, i32 3, metadata !740, null}
!763 = metadata !{i32 692, i32 1, metadata !740, null}
