; ModuleID = '/scratch/qijing.huang/firechip/hls_adpcm_encode/src/main/c/adpcm_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@h_old = constant [24 x i32] [i32 12, i32 -44, i32 -44, i32 212, i32 48, i32 -624, i32 128, i32 1448, i32 -840, i32 -3220, i32 3804, i32 15504, i32 15504, i32 3804, i32 -3220, i32 -840, i32 1448, i32 128, i32 -624, i32 48, i32 212, i32 -44, i32 -44, i32 12], align 16
@qq4_code4_table_old = constant [16 x i32] [i32 0, i32 -20456, i32 -12896, i32 -8968, i32 -6288, i32 -4240, i32 -2584, i32 -1200, i32 20456, i32 12896, i32 8968, i32 6288, i32 4240, i32 2584, i32 1200, i32 0], align 16
@qq6_code6_table = constant [64 x i32] [i32 -136, i32 -136, i32 -136, i32 -136, i32 -24808, i32 -21904, i32 -19008, i32 -16704, i32 -14984, i32 -13512, i32 -12280, i32 -11192, i32 -10232, i32 -9360, i32 -8576, i32 -7856, i32 -7192, i32 -6576, i32 -6000, i32 -5456, i32 -4944, i32 -4464, i32 -4008, i32 -3576, i32 -3168, i32 -2776, i32 -2400, i32 -2032, i32 -1688, i32 -1360, i32 -1040, i32 -728, i32 24808, i32 21904, i32 19008, i32 16704, i32 14984, i32 13512, i32 12280, i32 11192, i32 10232, i32 9360, i32 8576, i32 7856, i32 7192, i32 6576, i32 6000, i32 5456, i32 4944, i32 4464, i32 4008, i32 3576, i32 3168, i32 2776, i32 2400, i32 2032, i32 1688, i32 1360, i32 1040, i32 728, i32 432, i32 136, i32 -432, i32 -136], align 16
@wl_code_table_old = constant [16 x i32] [i32 -60, i32 3042, i32 1198, i32 538, i32 334, i32 172, i32 58, i32 -30, i32 3042, i32 1198, i32 538, i32 334, i32 172, i32 58, i32 -30, i32 -60], align 16
@ilb_table_old = constant [32 x i32] [i32 2048, i32 2093, i32 2139, i32 2186, i32 2233, i32 2282, i32 2332, i32 2383, i32 2435, i32 2489, i32 2543, i32 2599, i32 2656, i32 2714, i32 2774, i32 2834, i32 2896, i32 2960, i32 3025, i32 3091, i32 3158, i32 3228, i32 3298, i32 3371, i32 3444, i32 3520, i32 3597, i32 3676, i32 3756, i32 3838, i32 3922, i32 4008], align 16
@decis_levl_old = constant [30 x i32] [i32 280, i32 576, i32 880, i32 1200, i32 1520, i32 1864, i32 2208, i32 2584, i32 2960, i32 3376, i32 3784, i32 4240, i32 4696, i32 5200, i32 5712, i32 6288, i32 6864, i32 7520, i32 8184, i32 8968, i32 9752, i32 10712, i32 11664, i32 12896, i32 14120, i32 15840, i32 17560, i32 20456, i32 23352, i32 32767], align 16
@quant26bt_pos_old = constant [31 x i32] [i32 61, i32 60, i32 59, i32 58, i32 57, i32 56, i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48, i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40, i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32, i32 32], align 16
@quant26bt_neg_old = constant [31 x i32] [i32 63, i32 62, i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 4], align 16
@qq2_code2_table = constant [4 x i32] [i32 -7408, i32 -1616, i32 7408, i32 1616], align 16
@wh_code_table = constant [4 x i32] [i32 798, i32 -214, i32 798, i32 -214], align 16
@tqmf = common global [24 x i32] zeroinitializer, align 16
@xl = common global i32 0, align 4
@xh = common global i32 0, align 4
@delay_bpl = common global [6 x i32] zeroinitializer, align 16
@delay_dltx = common global [6 x i32] zeroinitializer, align 16
@szl = common global i32 0, align 4
@rlt1 = common global i32 0, align 4
@al1 = common global i32 0, align 4
@rlt2 = common global i32 0, align 4
@al2 = common global i32 0, align 4
@spl = common global i32 0, align 4
@sl = common global i32 0, align 4
@el = common global i32 0, align 4
@detl = common global i32 0, align 4
@il = common global i32 0, align 4
@dlt = common global i32 0, align 4
@nbl = common global i32 0, align 4
@plt = common global i32 0, align 4
@plt1 = common global i32 0, align 4
@plt2 = common global i32 0, align 4
@rlt = common global i32 0, align 4
@delay_bph = common global [6 x i32] zeroinitializer, align 16
@delay_dhx = common global [6 x i32] zeroinitializer, align 16
@szh = common global i32 0, align 4
@rh1 = common global i32 0, align 4
@ah1 = common global i32 0, align 4
@rh2 = common global i32 0, align 4
@ah2 = common global i32 0, align 4
@sph = common global i32 0, align 4
@sh = common global i32 0, align 4
@eh = common global i32 0, align 4
@ih = common global i32 0, align 4
@deth = common global i32 0, align 4
@dh = common global i32 0, align 4
@nbh = common global i32 0, align 4
@ph = common global i32 0, align 4
@ph1 = common global i32 0, align 4
@ph2 = common global i32 0, align 4
@yh = common global i32 0, align 4
@ilr = common global i32 0, align 4
@dec_del_bpl = common global [6 x i32] zeroinitializer, align 16
@dec_del_dltx = common global [6 x i32] zeroinitializer, align 16
@dec_szl = common global i32 0, align 4
@dec_rlt1 = common global i32 0, align 4
@dec_al1 = common global i32 0, align 4
@dec_rlt2 = common global i32 0, align 4
@dec_al2 = common global i32 0, align 4
@dec_spl = common global i32 0, align 4
@dec_sl = common global i32 0, align 4
@dec_detl = common global i32 0, align 4
@dec_dlt = common global i32 0, align 4
@dl = common global i32 0, align 4
@rl = common global i32 0, align 4
@dec_nbl = common global i32 0, align 4
@dec_plt = common global i32 0, align 4
@dec_plt1 = common global i32 0, align 4
@dec_plt2 = common global i32 0, align 4
@dec_rlt = common global i32 0, align 4
@dec_del_bph = common global [6 x i32] zeroinitializer, align 16
@dec_del_dhx = common global [6 x i32] zeroinitializer, align 16
@dec_szh = common global i32 0, align 4
@dec_rh1 = common global i32 0, align 4
@dec_ah1 = common global i32 0, align 4
@dec_rh2 = common global i32 0, align 4
@dec_ah2 = common global i32 0, align 4
@dec_sph = common global i32 0, align 4
@dec_sh = common global i32 0, align 4
@dec_deth = common global i32 0, align 4
@dec_dh = common global i32 0, align 4
@dec_nbh = common global i32 0, align 4
@dec_ph = common global i32 0, align 4
@dec_ph1 = common global i32 0, align 4
@dec_ph2 = common global i32 0, align 4
@rh = common global i32 0, align 4
@xd = common global i32 0, align 4
@xs = common global i32 0, align 4
@accumc = common global [11 x i32] zeroinitializer, align 16
@accumd = common global [11 x i32] zeroinitializer, align 16
@xout1 = common global i32 0, align 4
@xout2 = common global i32 0, align 4
@test_data = constant [100 x i32] [i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 67, i32 67, i32 67, i32 67, i32 67, i32 67, i32 67, i32 66, i32 66, i32 66, i32 66, i32 66, i32 66, i32 65, i32 65, i32 65, i32 65, i32 65, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 63, i32 63, i32 63, i32 63, i32 63, i32 62, i32 62, i32 62, i32 62, i32 62, i32 62, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 59, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60, i32 60], align 16
@test_compressed = constant [100 x i32] [i32 253, i32 222, i32 119, i32 186, i32 242, i32 144, i32 32, i32 160, i32 236, i32 237, i32 239, i32 241, i32 243, i32 244, i32 245, i32 245, i32 245, i32 245, i32 246, i32 246, i32 246, i32 247, i32 248, i32 247, i32 248, i32 247, i32 249, i32 248, i32 247, i32 249, i32 248, i32 248, i32 246, i32 248, i32 248, i32 247, i32 249, i32 249, i32 249, i32 248, i32 247, i32 250, i32 248, i32 248, i32 247, i32 251, i32 250, i32 249, i32 248, i32 248, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@test_result = constant [100 x i32] [i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 -2, i32 -1, i32 -2, i32 0, i32 -4, i32 1, i32 1, i32 1, i32 -5, i32 2, i32 2, i32 3, i32 11, i32 20, i32 20, i32 22, i32 24, i32 32, i32 33, i32 38, i32 39, i32 46, i32 47, i32 51, i32 50, i32 53, i32 51, i32 54, i32 52, i32 55, i32 52, i32 55, i32 53, i32 56, i32 54, i32 57, i32 56, i32 59, i32 58, i32 63, i32 63, i32 64, i32 58, i32 61, i32 62, i32 65, i32 60, i32 62, i32 63, i32 66, i32 62, i32 59, i32 55, i32 59, i32 62, i32 65, i32 59, i32 59, i32 58, i32 59, i32 54, i32 57, i32 59, i32 63, i32 60, i32 59, i32 55, i32 59, i32 61, i32 65, i32 61, i32 62, i32 60, i32 62, i32 59, i32 58, i32 55, i32 59, i32 62, i32 65, i32 60, i32 59, i32 57, i32 58, i32 54], align 16
@compressed = common global [100 x i32] zeroinitializer, align 16
@result = common global [100 x i32] zeroinitializer, align 16
@encode_str = internal unnamed_addr constant [7 x i8] c"encode\00"
@qq2_code2_table_0 = constant i32 -7408
@qq2_code2_table_1 = constant i32 -1616
@qq2_code2_table_2 = constant i32 7408
@qq2_code2_table_3 = constant i32 1616
@wh_code_table_0 = constant i32 798
@wh_code_table_1 = constant i32 -214
@wh_code_table_2 = constant i32 798
@wh_code_table_3 = constant i32 -214
@h = constant [24 x i15] [i15 12, i15 -44, i15 -44, i15 212, i15 48, i15 -624, i15 128, i15 1448, i15 -840, i15 -3220, i15 3804, i15 15504, i15 15504, i15 3804, i15 -3220, i15 -840, i15 1448, i15 128, i15 -624, i15 48, i15 212, i15 -44, i15 -44, i15 12]
@decis_levl = constant [30 x i15] [i15 280, i15 576, i15 880, i15 1200, i15 1520, i15 1864, i15 2208, i15 2584, i15 2960, i15 3376, i15 3784, i15 4240, i15 4696, i15 5200, i15 5712, i15 6288, i15 6864, i15 7520, i15 8184, i15 8968, i15 9752, i15 10712, i15 11664, i15 12896, i15 14120, i15 15840, i15 -15208, i15 -12312, i15 -9416, i15 -1]
@quant26bt_pos = constant [31 x i6] [i6 -3, i6 -4, i6 -5, i6 -6, i6 -7, i6 -8, i6 -9, i6 -10, i6 -11, i6 -12, i6 -13, i6 -14, i6 -15, i6 -16, i6 -17, i6 -18, i6 -19, i6 -20, i6 -21, i6 -22, i6 -23, i6 -24, i6 -25, i6 -26, i6 -27, i6 -28, i6 -29, i6 -30, i6 -31, i6 -32, i6 -32]
@quant26bt_neg = constant [31 x i6] [i6 -1, i6 -2, i6 31, i6 30, i6 29, i6 28, i6 27, i6 26, i6 25, i6 24, i6 23, i6 22, i6 21, i6 20, i6 19, i6 18, i6 17, i6 16, i6 15, i6 14, i6 13, i6 12, i6 11, i6 10, i6 9, i6 8, i6 7, i6 6, i6 5, i6 4, i6 4]
@qq4_code4_table = constant [16 x i16] [i16 0, i16 -20456, i16 -12896, i16 -8968, i16 -6288, i16 -4240, i16 -2584, i16 -1200, i16 20456, i16 12896, i16 8968, i16 6288, i16 4240, i16 2584, i16 1200, i16 0]
@wl_code_table = constant [16 x i13] [i13 -60, i13 3042, i13 1198, i13 538, i13 334, i13 172, i13 58, i13 -30, i13 3042, i13 1198, i13 538, i13 334, i13 172, i13 58, i13 -30, i13 -60]
@ilb_table = constant [32 x i12] [i12 -2048, i12 -2003, i12 -1957, i12 -1910, i12 -1863, i12 -1814, i12 -1764, i12 -1713, i12 -1661, i12 -1607, i12 -1553, i12 -1497, i12 -1440, i12 -1382, i12 -1322, i12 -1262, i12 -1200, i12 -1136, i12 -1071, i12 -1005, i12 -938, i12 -868, i12 -798, i12 -725, i12 -652, i12 -576, i12 -499, i12 -420, i12 -340, i12 -258, i12 -174, i12 -88]

define i32 @encode(i32 %xin1, i32 %xin2) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %xin1) nounwind, !map !420
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %xin2) nounwind, !map !426
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !430
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @encode_str) nounwind
  %xin2_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %xin2) nounwind
  %xin1_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %xin1) nounwind
  %tqmf_load = load i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 0), align 16
  %p_shl = call i36 @_ssdm_op_BitConcatenate.i36.i32.i4(i32 %tqmf_load, i4 0)
  %p_shl_cast = sext i36 %p_shl to i37
  %p_shl1 = call i34 @_ssdm_op_BitConcatenate.i34.i32.i2(i32 %tqmf_load, i2 0)
  %p_shl1_cast = sext i34 %p_shl1 to i37
  %xa = sub i37 %p_shl_cast, %p_shl1_cast
  %xa_cast = sext i37 %xa to i50
  %tqmf_load_1 = load i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 1), align 4
  %tmp_3_cast = sext i32 %tqmf_load_1 to i39
  %xb = mul i39 %tmp_3_cast, -44
  %xb_cast = sext i39 %xb to i50
  br label %1

; <label>:1                                       ; preds = %2, %0
  %tqmf_ptr_0_rec = phi i5 [ 2, %0 ], [ %phitmp, %2 ]
  %i = phi i4 [ 0, %0 ], [ %i_2, %2 ]
  %xa1 = phi i50 [ %xa_cast, %0 ], [ %xa_2, %2 ]
  %xb1 = phi i50 [ %xb_cast, %0 ], [ %xb_2, %2 ]
  %tqmf_ptr_0_rec_cast = zext i5 %tqmf_ptr_0_rec to i64
  %h_addr = getelementptr [24 x i15]* @h, i64 0, i64 %tqmf_ptr_0_rec_cast
  %tqmf_addr = getelementptr [24 x i32]* @tqmf, i64 0, i64 %tqmf_ptr_0_rec_cast
  %exitcond2 = icmp eq i4 %i, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  %i_2 = add i4 %i, 1
  br i1 %exitcond2, label %3, label %2

; <label>:2                                       ; preds = %1
  %tqmf_ptr_0_sum1 = or i5 %tqmf_ptr_0_rec, 1
  %tqmf_ptr_0_sum1_cast = zext i5 %tqmf_ptr_0_sum1 to i64
  %tqmf_ptr = getelementptr [24 x i32]* @tqmf, i64 0, i64 %tqmf_ptr_0_sum1_cast
  %tqmf_load_4 = load i32* %tqmf_addr, align 8
  %tmp_cast = sext i32 %tqmf_load_4 to i46
  %h_ptr = getelementptr [24 x i15]* @h, i64 0, i64 %tqmf_ptr_0_sum1_cast
  %h_load = load i15* %h_addr, align 4
  %tmp_1_cast = sext i15 %h_load to i46
  %tmp_2 = mul i46 %tmp_1_cast, %tmp_cast
  %tmp_2_cast = sext i46 %tmp_2 to i50
  %xa_2 = add i50 %tmp_2_cast, %xa1
  %tqmf_ptr_load = load i32* %tqmf_ptr, align 4
  %tmp_4_cast = sext i32 %tqmf_ptr_load to i46
  %h_ptr_load = load i15* %h_ptr, align 2
  %tmp_7_cast = sext i15 %h_ptr_load to i46
  %tmp_s = mul i46 %tmp_7_cast, %tmp_4_cast
  %tmp_10_cast = sext i46 %tmp_s to i50
  %xb_2 = add i50 %tmp_10_cast, %xb1
  %phitmp = add i5 %tqmf_ptr_0_rec, 2
  br label %1

; <label>:3                                       ; preds = %1
  %tqmf_load_2 = load i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 22), align 8
  %tmp_5_cast = sext i32 %tqmf_load_2 to i39
  %tmp_6 = mul i39 -44, %tmp_5_cast
  %tmp_6_cast = sext i39 %tmp_6 to i50
  %xa_1 = add i50 %xa1, %tmp_6_cast
  %xa_1_cast1 = zext i50 %xa_1 to i51
  %tmp = trunc i50 %xa_1 to i47
  %tqmf_load_3 = load i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 23), align 4
  %p_shl2 = call i36 @_ssdm_op_BitConcatenate.i36.i32.i4(i32 %tqmf_load_3, i4 0)
  %p_shl2_cast = sext i36 %p_shl2 to i37
  %p_shl3 = call i34 @_ssdm_op_BitConcatenate.i34.i32.i2(i32 %tqmf_load_3, i2 0)
  %p_shl3_cast = sext i34 %p_shl3 to i37
  %tmp_9 = sub i37 %p_shl2_cast, %p_shl3_cast
  %tmp_9_cast = sext i37 %tmp_9 to i50
  %xb_1 = add i50 %xb1, %tmp_9_cast
  %xb_1_cast1 = zext i50 %xb_1 to i51
  %tmp_3 = trunc i50 %xb_1 to i47
  br label %4

; <label>:4                                       ; preds = %5, %3
  %tqmf_ptr_0_pn_rec = phi i6 [ 0, %3 ], [ %tqmf_ptr1_0_rec, %5 ]
  %i_1 = phi i5 [ 0, %3 ], [ %i_3, %5 ]
  %tmp_15 = trunc i6 %tqmf_ptr_0_pn_rec to i5
  %p_sum = add i5 -9, %tmp_15
  %p_sum_cast = zext i5 %p_sum to i64
  %tqmf_addr_2 = getelementptr [24 x i32]* @tqmf, i64 0, i64 %p_sum_cast
  %tqmf_ptr1_0_rec = add i6 -1, %tqmf_ptr_0_pn_rec
  %tqmf_ptr_0_sum = add i6 21, %tqmf_ptr_0_pn_rec
  %tqmf_ptr_0_sum_cast = zext i6 %tqmf_ptr_0_sum to i64
  %tqmf_ptr1 = getelementptr [24 x i32]* @tqmf, i64 0, i64 %tqmf_ptr_0_sum_cast
  %exitcond = icmp eq i5 %i_1, -10
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 22, i64 22, i64 22) nounwind
  %i_3 = add i5 1, %i_1
  br i1 %exitcond, label %6, label %5

; <label>:5                                       ; preds = %4
  %tqmf_ptr1_load = load i32* %tqmf_ptr1, align 4
  store i32 %tqmf_ptr1_load, i32* %tqmf_addr_2, align 4
  br label %4

; <label>:6                                       ; preds = %4
  store i32 %xin1_read, i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 1), align 4
  store i32 %xin2_read, i32* getelementptr inbounds ([24 x i32]* @tqmf, i64 0, i64 0), align 16
  %tmp_1 = add i51 %xa_1_cast1, %xb_1_cast1
  %tmp_4 = call i32 @_ssdm_op_PartSelect.i32.i51.i32.i32(i51 %tmp_1, i32 15, i32 46)
  store i32 %tmp_4, i32* @xl, align 4
  %tmp_5 = sub i47 %tmp, %tmp_3
  %tmp_8 = call i32 @_ssdm_op_PartSelect.i32.i47.i32.i32(i47 %tmp_5, i32 15, i32 46)
  store i32 %tmp_8, i32* @xh, align 4
  %delay_bpl_load = load i32* getelementptr inbounds ([6 x i32]* @delay_bpl, i64 0, i64 0), align 16
  %tmp_i = sext i32 %delay_bpl_load to i64
  %delay_dltx_load = load i32* getelementptr inbounds ([6 x i32]* @delay_dltx, i64 0, i64 0), align 16
  %tmp_i_23 = sext i32 %delay_dltx_load to i64
  %zl = mul nsw i64 %tmp_i_23, %tmp_i
  br label %7

; <label>:7                                       ; preds = %8, %6
  %zl1_i = phi i64 [ %zl, %6 ], [ %zl_1, %8 ]
  %dlt_pn_rec_i = phi i3 [ 0, %6 ], [ %p_01_rec_i, %8 ]
  %p_01_rec_i = add i3 %dlt_pn_rec_i, 1
  %p_01_rec_i_cast = zext i3 %p_01_rec_i to i64
  %delay_dltx_addr = getelementptr [6 x i32]* @delay_dltx, i64 0, i64 %p_01_rec_i_cast
  %delay_bpl_addr = getelementptr [6 x i32]* @delay_bpl, i64 0, i64 %p_01_rec_i_cast
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %exitcond3 = icmp eq i3 %dlt_pn_rec_i, -3
  br i1 %exitcond3, label %filtez.exit, label %8

; <label>:8                                       ; preds = %7
  %delay_bpl_load_1 = load i32* %delay_bpl_addr, align 4
  %tmp_64_i = sext i32 %delay_bpl_load_1 to i64
  %delay_dltx_load_1 = load i32* %delay_dltx_addr, align 4
  %tmp_65_i = sext i32 %delay_dltx_load_1 to i64
  %tmp_66_i = mul nsw i64 %tmp_65_i, %tmp_64_i
  %zl_1 = add nsw i64 %tmp_66_i, %zl1_i
  br label %7

filtez.exit:                                      ; preds = %7
  %tmp_63_i = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %zl1_i, i32 14, i32 45)
  store i32 %tmp_63_i, i32* @szl, align 4
  %rlt1_load_1 = load i32* @rlt1, align 4
  %al1_load = load i32* @al1, align 4
  %rlt2_load = load i32* @rlt2, align 4
  %al2_load = load i32* @al2, align 4
  %tmp_19 = shl i32 %rlt1_load_1, 1
  %pl = sext i32 %tmp_19 to i64
  %tmp_i1 = sext i32 %al1_load to i64
  %pl_1 = mul nsw i64 %tmp_i1, %pl
  %tmp_22 = shl i32 %rlt2_load, 1
  %pl2 = sext i32 %tmp_22 to i64
  %tmp_63_i1 = sext i32 %al2_load to i64
  %tmp_64_i1 = mul nsw i64 %tmp_63_i1, %pl2
  %pl_2 = add nsw i64 %tmp_64_i1, %pl_1
  %tmp_66_i1 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %pl_2, i32 15, i32 46)
  store i32 %tmp_66_i1, i32* @spl, align 4
  %tmp_7 = add nsw i32 %tmp_66_i1, %tmp_63_i
  store i32 %tmp_7, i32* @sl, align 4
  %el_assign = sub nsw i32 %tmp_4, %tmp_7
  store i32 %el_assign, i32* @el, align 4
  %detl_load = load i32* @detl, align 4
  %tmp_23 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %el_assign, i32 31)
  %m = sub nsw i32 0, %el_assign
  %n_assign_1 = select i1 %tmp_23, i32 %m, i32 %el_assign
  %tmp_i2_cast = sext i32 %detl_load to i47
  br label %9

; <label>:9                                       ; preds = %10, %filtez.exit
  %mil_i = phi i5 [ 0, %filtez.exit ], [ %mil, %10 ]
  %tmp_67_i = icmp ult i5 %mil_i, -2
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 30, i64 15) nounwind
  %mil = add i5 %mil_i, 1
  br i1 %tmp_67_i, label %10, label %.loopexit.i_ifconv

; <label>:10                                      ; preds = %9
  %tmp_68_i = zext i5 %mil_i to i64
  %decis_levl_addr = getelementptr [30 x i15]* @decis_levl, i64 0, i64 %tmp_68_i
  %decis_levl_load = load i15* %decis_levl_addr, align 2
  %tmp_69_i_cast = zext i15 %decis_levl_load to i47
  %tmp_70_i = mul i47 %tmp_69_i_cast, %tmp_i2_cast
  %tmp_10 = call i32 @_ssdm_op_PartSelect.i32.i47.i32.i32(i47 %tmp_70_i, i32 15, i32 46)
  %tmp_71_i = icmp sgt i32 %n_assign_1, %tmp_10
  br i1 %tmp_71_i, label %9, label %.loopexit.i_ifconv

.loopexit.i_ifconv:                               ; preds = %10, %9
  %tmp_73_i = zext i5 %mil_i to i64
  %quant26bt_pos_addr = getelementptr [31 x i6]* @quant26bt_pos, i64 0, i64 %tmp_73_i
  %ril = load i6* %quant26bt_pos_addr, align 1
  %quant26bt_neg_addr = getelementptr [31 x i6]* @quant26bt_neg, i64 0, i64 %tmp_73_i
  %ril_1 = load i6* %quant26bt_neg_addr, align 1
  %ril_2 = select i1 %tmp_23, i6 %ril_1, i6 %ril
  %il_assign_cast = zext i6 %ril_2 to i32
  store i32 %il_assign_cast, i32* @il, align 4
  %tmp_11 = call i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6 %ril_2, i32 2, i32 5)
  %tmp_12 = zext i4 %tmp_11 to i64
  %qq4_code4_table_addr = getelementptr [16 x i16]* @qq4_code4_table, i64 0, i64 %tmp_12
  %qq4_code4_table_load = load i16* %qq4_code4_table_addr, align 2
  %tmp_23_cast = sext i16 %qq4_code4_table_load to i47
  %tmp_13 = mul i47 %tmp_i2_cast, %tmp_23_cast
  %tmp_14 = call i32 @_ssdm_op_PartSelect.i32.i47.i32.i32(i47 %tmp_13, i32 15, i32 46)
  store i32 %tmp_14, i32* @dlt, align 4
  %nbl_load = load i32* @nbl, align 4
  %tmp_i2_cast_26 = sext i32 %nbl_load to i40
  %p_shl_i = call i39 @_ssdm_op_BitConcatenate.i39.i32.i7(i32 %nbl_load, i7 0)
  %p_shl_i_cast = zext i39 %p_shl_i to i40
  %tmp_i3 = sub i40 %p_shl_i_cast, %tmp_i2_cast_26
  %tmp_75_i = call i32 @_ssdm_op_PartSelect.i32.i40.i32.i32(i40 %tmp_i3, i32 7, i32 38)
  %wl_code_table_addr = getelementptr [16 x i13]* @wl_code_table, i64 0, i64 %tmp_12
  %wl_code_table_load = load i13* %wl_code_table_addr, align 2
  %wl_code_table_load_cast = sext i13 %wl_code_table_load to i32
  %nbl_assign_1 = add nsw i32 %tmp_75_i, %wl_code_table_load_cast
  %tmp_26 = trunc i32 %nbl_assign_1 to i31
  %tmp_32 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %nbl_assign_1, i32 31)
  %p_i = select i1 %tmp_32, i31 0, i31 %tmp_26
  %tmp_36 = trunc i31 %p_i to i15
  %tmp_78_i = icmp ugt i31 %p_i, 18432
  %nbl_assign_2 = select i1 %tmp_78_i, i15 -14336, i15 %tmp_36
  %nbl_assign_2_cast = zext i15 %nbl_assign_2 to i32
  store i32 %nbl_assign_2_cast, i32* @nbl, align 4
  %wd1 = call i5 @_ssdm_op_PartSelect.i5.i15.i32.i32(i15 %nbl_assign_2, i32 6, i32 10)
  %wd2_cast = call i4 @_ssdm_op_PartSelect.i4.i15.i32.i32(i15 %nbl_assign_2, i32 11, i32 14)
  %tmp_i4 = zext i5 %wd1 to i64
  %ilb_table_addr = getelementptr [32 x i12]* @ilb_table, i64 0, i64 %tmp_i4
  %ilb_table_load = load i12* %ilb_table_addr, align 2
  %tmp_80_i = sub i4 -7, %wd2_cast
  %tmp_80_i_cast_cast = zext i4 %tmp_80_i to i12
  %wd3 = lshr i12 %ilb_table_load, %tmp_80_i_cast_cast
  %tmp_81_i = call i15 @_ssdm_op_BitConcatenate.i15.i12.i3(i12 %wd3, i3 0)
  %tmp_81_i_cast = zext i15 %tmp_81_i to i32
  store i32 %tmp_81_i_cast, i32* @detl, align 4
  %tmp_16 = add nsw i32 %tmp_14, %tmp_63_i
  store i32 %tmp_16, i32* @plt, align 4
  call fastcc void @encode_upzero(i32 %tmp_14, [6 x i32]* @delay_dltx, [6 x i32]* @delay_bpl) nounwind
  %al1_load_1 = load i32* @al1, align 4
  %al2_load_1 = load i32* @al2, align 4
  %plt_load = load i32* @plt, align 4
  %plt1_load = load i32* @plt1, align 4
  %plt2_load = load i32* @plt2, align 4
  %tmp_i4_cast1 = sext i32 %al1_load_1 to i41
  %wd2 = call i34 @_ssdm_op_BitConcatenate.i34.i32.i2(i32 %al1_load_1, i2 0)
  %wd2_1_cast = sext i34 %wd2 to i35
  %tmp_i5 = sext i32 %plt_load to i64
  %tmp_82_i = sext i32 %plt1_load to i64
  %tmp_83_i = mul nsw i64 %tmp_82_i, %tmp_i5
  %tmp_39 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %tmp_83_i, i32 63)
  %wd2_1 = sub i35 0, %wd2_1_cast
  %tmp_17 = call i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32 %al1_load_1, i32 5, i32 31)
  %tmp_18 = sext i27 %tmp_17 to i28
  %tmp_42 = call i28 @_ssdm_op_PartSelect.i28.i35.i32.i32(i35 %wd2_1, i32 7, i32 34)
  %tmp_43 = select i1 %tmp_39, i28 %tmp_18, i28 %tmp_42
  %tmp_85_i_cast_cast = sext i28 %tmp_43 to i29
  %tmp_86_i = sext i32 %plt2_load to i64
  %tmp_87_i = mul nsw i64 %tmp_86_i, %tmp_i5
  %tmp_44 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %tmp_87_i, i32 63)
  %tmp_88_i_cast_cast = select i1 %tmp_44, i29 -128, i29 128
  %tmp_89_i_cast = sext i32 %al2_load_1 to i40
  %p_shl_i1 = call i39 @_ssdm_op_BitConcatenate.i39.i32.i7(i32 %al2_load_1, i7 0)
  %p_shl_i1_cast = zext i39 %p_shl_i1 to i40
  %tmp_90_i = sub i40 %p_shl_i1_cast, %tmp_89_i_cast
  %tmp_91_i_cast_cast = call i32 @_ssdm_op_PartSelect.i32.i40.i32.i32(i40 %tmp_90_i, i32 7, i32 38)
  %tmp4 = add i29 %tmp_88_i_cast_cast, %tmp_85_i_cast_cast
  %tmp4_cast = sext i29 %tmp4 to i32
  %apl2 = add i32 %tmp_91_i_cast_cast, %tmp4_cast
  %tmp_93_i = icmp sgt i32 %apl2, 12288
  %p_i1 = select i1 %tmp_93_i, i32 12288, i32 %apl2
  %tmp_45 = trunc i32 %p_i1 to i15
  %tmp_94_i = icmp slt i32 %p_i1, -12288
  %apl2_assign = select i1 %tmp_94_i, i15 -12288, i15 %tmp_45
  %apl2_assign_cast = sext i15 %apl2_assign to i32
  store i32 %apl2_assign_cast, i32* @al2, align 4
  %p_shl_i2 = call i40 @_ssdm_op_BitConcatenate.i40.i32.i8(i32 %al1_load_1, i8 0)
  %p_shl_i2_cast = zext i40 %p_shl_i2 to i41
  %tmp_i6 = sub i41 %p_shl_i2_cast, %tmp_i4_cast1
  %tmp_99_i = call i32 @_ssdm_op_PartSelect.i32.i41.i32.i32(i41 %tmp_i6, i32 8, i32 39)
  %apl_i_v_cast_cast = select i1 %tmp_39, i32 -192, i32 192
  %apl1 = add i32 %apl_i_v_cast_cast, %tmp_99_i
  %apl1_8 = sub i15 15360, %apl2_assign
  %apl1_10_cast1 = zext i15 %apl1_8 to i16
  %apl1_10_cast = zext i15 %apl1_8 to i32
  %tmp_101_i = icmp sgt i32 %apl1, %apl1_10_cast
  %wd3_0_apl1_i = select i1 %tmp_101_i, i32 %apl1_10_cast, i32 %apl1
  %tmp_46 = trunc i32 %wd3_0_apl1_i to i16
  %apl1_2 = sub i16 0, %apl1_10_cast1
  %apl1_3_cast = sext i16 %apl1_2 to i32
  %tmp_102_i = icmp slt i32 %wd3_0_apl1_i, %apl1_3_cast
  %apl1_3 = select i1 %tmp_102_i, i16 %apl1_2, i16 %tmp_46
  %apl1_4_cast = sext i16 %apl1_3 to i32
  store i32 %apl1_4_cast, i32* @al1, align 4
  %sl_load = load i32* @sl, align 4
  %dlt_load = load i32* @dlt, align 4
  %tmp_20 = add nsw i32 %dlt_load, %sl_load
  store i32 %tmp_20, i32* @rlt, align 4
  %rlt1_load = load i32* @rlt1, align 4
  store i32 %rlt1_load, i32* @rlt2, align 4
  store i32 %tmp_20, i32* @rlt1, align 4
  store i32 %plt1_load, i32* @plt2, align 4
  store i32 %plt_load, i32* @plt1, align 4
  %delay_bph_load = load i32* getelementptr inbounds ([6 x i32]* @delay_bph, i64 0, i64 0), align 16
  %tmp_i6_27 = sext i32 %delay_bph_load to i64
  %delay_dhx_load = load i32* getelementptr inbounds ([6 x i32]* @delay_dhx, i64 0, i64 0), align 16
  %tmp_i7 = sext i32 %delay_dhx_load to i64
  %zl_2 = mul nsw i64 %tmp_i6_27, %tmp_i7
  br label %11

; <label>:11                                      ; preds = %12, %.loopexit.i_ifconv
  %zl1_i1 = phi i64 [ %zl_2, %.loopexit.i_ifconv ], [ %zl_3, %12 ]
  %dlt_pn_rec_i1 = phi i3 [ 0, %.loopexit.i_ifconv ], [ %p_01_rec_i1, %12 ]
  %p_01_rec_i1 = add i3 %dlt_pn_rec_i1, 1
  %p_01_rec_i1_cast = zext i3 %p_01_rec_i1 to i64
  %delay_dhx_addr = getelementptr [6 x i32]* @delay_dhx, i64 0, i64 %p_01_rec_i1_cast
  %delay_bph_addr = getelementptr [6 x i32]* @delay_bph, i64 0, i64 %p_01_rec_i1_cast
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %exitcond1 = icmp eq i3 %dlt_pn_rec_i1, -3
  br i1 %exitcond1, label %filtez.exit52, label %12

; <label>:12                                      ; preds = %11
  %delay_bph_load_1 = load i32* %delay_bph_addr, align 4
  %tmp_64_i3 = sext i32 %delay_bph_load_1 to i64
  %delay_dhx_load_1 = load i32* %delay_dhx_addr, align 4
  %tmp_65_i3 = sext i32 %delay_dhx_load_1 to i64
  %tmp_66_i3 = mul nsw i64 %tmp_65_i3, %tmp_64_i3
  %zl_3 = add nsw i64 %tmp_66_i3, %zl1_i1
  br label %11

filtez.exit52:                                    ; preds = %11
  %tmp_63_i2 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %zl1_i1, i32 14, i32 45)
  store i32 %tmp_63_i2, i32* @szh, align 4
  %rh1_load_1 = load i32* @rh1, align 4
  %ah1_load = load i32* @ah1, align 4
  %rh2_load = load i32* @rh2, align 4
  %ah2_load = load i32* @ah2, align 4
  %tmp_47 = shl i32 %rh1_load_1, 1
  %pl_3 = sext i32 %tmp_47 to i64
  %tmp_i8 = sext i32 %ah1_load to i64
  %pl_4 = mul nsw i64 %tmp_i8, %pl_3
  %tmp_48 = shl i32 %rh2_load, 1
  %pl2_1 = sext i32 %tmp_48 to i64
  %tmp_63_i3 = sext i32 %ah2_load to i64
  %tmp_64_i2 = mul nsw i64 %tmp_63_i3, %pl2_1
  %pl_5 = add nsw i64 %tmp_64_i2, %pl_4
  %tmp_66_i2 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %pl_5, i32 15, i32 46)
  store i32 %tmp_66_i2, i32* @sph, align 4
  %tmp_21 = add nsw i32 %tmp_66_i2, %tmp_63_i2
  store i32 %tmp_21, i32* @sh, align 4
  %xh_load = load i32* @xh, align 4
  %n_assign_2 = sub nsw i32 %xh_load, %tmp_21
  store i32 %n_assign_2, i32* @eh, align 4
  %tmp_49 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %n_assign_2, i32 31)
  %tmp_24 = select i1 %tmp_49, i2 1, i2 -1
  %tmp_33_cast_cast = select i1 %tmp_49, i32 1, i32 3
  store i32 %tmp_33_cast_cast, i32* @ih, align 4
  %deth_load = load i32* @deth, align 4
  %tmp_34_cast1 = sext i32 %deth_load to i47
  %tmp_34_cast = sext i32 %deth_load to i42
  %tmp_25 = mul i42 564, %tmp_34_cast
  %tmp_27 = call i30 @_ssdm_op_PartSelect.i30.i42.i32.i32(i42 %tmp_25, i32 12, i32 41)
  %decis = sext i30 %tmp_27 to i32
  %tmp_50 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %n_assign_2, i32 31)
  %m_1 = sub nsw i32 0, %n_assign_2
  %n_assign_3 = select i1 %tmp_50, i32 %m_1, i32 %n_assign_2
  %tmp_28 = icmp sgt i32 %n_assign_3, %decis
  br i1 %tmp_28, label %13, label %._crit_edge_ifconv

; <label>:13                                      ; preds = %filtez.exit52
  %tmp_29 = select i1 %tmp_49, i2 0, i2 -2
  %tmp_38_cast_cast = select i1 %tmp_49, i32 0, i32 2
  store i32 %tmp_38_cast_cast, i32* @ih, align 4
  br label %._crit_edge_ifconv

._crit_edge_ifconv:                               ; preds = %13, %filtez.exit52
  %ih_assign = phi i2 [ %tmp_29, %13 ], [ %tmp_24, %filtez.exit52 ]
  %tmp_30 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 -7408, i32 -1616, i32 7408, i32 1616, i2 %ih_assign) nounwind
  %tmp_40_cast = sext i32 %tmp_30 to i47
  %tmp_31 = mul i47 %tmp_40_cast, %tmp_34_cast1
  %tmp_33 = call i32 @_ssdm_op_PartSelect.i32.i47.i32.i32(i47 %tmp_31, i32 15, i32 46)
  store i32 %tmp_33, i32* @dh, align 4
  %nbh_load = load i32* @nbh, align 4
  %tmp_i9_cast = sext i32 %nbh_load to i40
  %p_shl_i3 = call i39 @_ssdm_op_BitConcatenate.i39.i32.i7(i32 %nbh_load, i7 0)
  %p_shl_i3_cast = zext i39 %p_shl_i3 to i40
  %tmp_i9 = sub i40 %p_shl_i3_cast, %tmp_i9_cast
  %wd = call i32 @_ssdm_op_PartSelect.i32.i40.i32.i32(i40 %tmp_i9, i32 7, i32 38)
  %tmp_34 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 798, i32 -214, i32 798, i32 -214, i2 %ih_assign) nounwind
  %nbh_assign_1 = add nsw i32 %wd, %tmp_34
  %tmp_51 = trunc i32 %nbh_assign_1 to i31
  %tmp_52 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %nbh_assign_1, i32 31)
  %p_i2 = select i1 %tmp_52, i31 0, i31 %tmp_51
  %tmp_53 = trunc i31 %p_i2 to i15
  %tmp_105_i = icmp ugt i31 %p_i2, 22528
  %nbl_assign_3 = select i1 %tmp_105_i, i15 -10240, i15 %tmp_53
  %nbl_assign_3_cast = zext i15 %nbl_assign_3 to i32
  store i32 %nbl_assign_3_cast, i32* @nbh, align 4
  %wd1_1 = call i5 @_ssdm_op_PartSelect.i5.i15.i32.i32(i15 %nbl_assign_3, i32 6, i32 10)
  %wd2_4_cast = call i4 @_ssdm_op_PartSelect.i4.i15.i32.i32(i15 %nbl_assign_3, i32 11, i32 14)
  %tmp_i2 = zext i5 %wd1_1 to i64
  %ilb_table_addr_1 = getelementptr [32 x i12]* @ilb_table, i64 0, i64 %tmp_i2
  %ilb_table_load_1 = load i12* %ilb_table_addr_1, align 2
  %tmp_80_i1 = sub i4 -5, %wd2_4_cast
  %tmp_80_i1_cast_cast = zext i4 %tmp_80_i1 to i12
  %wd3_2 = lshr i12 %ilb_table_load_1, %tmp_80_i1_cast_cast
  %tmp_81_i1 = call i15 @_ssdm_op_BitConcatenate.i15.i12.i3(i12 %wd3_2, i3 0)
  %tmp_81_i1_cast = zext i15 %tmp_81_i1 to i32
  store i32 %tmp_81_i1_cast, i32* @deth, align 4
  %tmp_35 = add nsw i32 %tmp_63_i2, %tmp_33
  store i32 %tmp_35, i32* @ph, align 4
  call fastcc void @encode_upzero(i32 %tmp_33, [6 x i32]* @delay_dhx, [6 x i32]* @delay_bph) nounwind
  %ah1_load_1 = load i32* @ah1, align 4
  %ah2_load_1 = load i32* @ah2, align 4
  %ph_load = load i32* @ph, align 4
  %ph1_load = load i32* @ph1, align 4
  %ph2_load = load i32* @ph2, align 4
  %tmp_i11_cast8 = sext i32 %ah1_load_1 to i41
  %wd2_2 = call i34 @_ssdm_op_BitConcatenate.i34.i32.i2(i32 %ah1_load_1, i2 0)
  %wd2_5_cast = sext i34 %wd2_2 to i35
  %tmp_i10 = sext i32 %ph_load to i64
  %tmp_82_i1 = sext i32 %ph1_load to i64
  %tmp_83_i1 = mul nsw i64 %tmp_82_i1, %tmp_i10
  %tmp_54 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %tmp_83_i1, i32 63)
  %wd2_3 = sub i35 0, %wd2_5_cast
  %tmp_37 = call i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32 %ah1_load_1, i32 5, i32 31)
  %tmp_41 = sext i27 %tmp_37 to i28
  %tmp_55 = call i28 @_ssdm_op_PartSelect.i28.i35.i32.i32(i35 %wd2_3, i32 7, i32 34)
  %tmp_56 = select i1 %tmp_54, i28 %tmp_41, i28 %tmp_55
  %tmp_85_i1_cast_cast = sext i28 %tmp_56 to i29
  %tmp_86_i1 = sext i32 %ph2_load to i64
  %tmp_87_i1 = mul nsw i64 %tmp_86_i1, %tmp_i10
  %tmp_57 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %tmp_87_i1, i32 63)
  %tmp_88_i1_cast_cast = select i1 %tmp_57, i29 -128, i29 128
  %tmp_89_i1_cast7 = sext i32 %ah2_load_1 to i40
  %p_shl_i4 = call i39 @_ssdm_op_BitConcatenate.i39.i32.i7(i32 %ah2_load_1, i7 0)
  %p_shl_i4_cast = zext i39 %p_shl_i4 to i40
  %tmp_90_i1 = sub i40 %p_shl_i4_cast, %tmp_89_i1_cast7
  %tmp_91_i1_cast_cast = call i32 @_ssdm_op_PartSelect.i32.i40.i32.i32(i40 %tmp_90_i1, i32 7, i32 38)
  %tmp5 = add i29 %tmp_88_i1_cast_cast, %tmp_85_i1_cast_cast
  %tmp5_cast = sext i29 %tmp5 to i32
  %apl2_1 = add i32 %tmp_91_i1_cast_cast, %tmp5_cast
  %tmp_93_i1 = icmp sgt i32 %apl2_1, 12288
  %p_i3 = select i1 %tmp_93_i1, i32 12288, i32 %apl2_1
  %tmp_58 = trunc i32 %p_i3 to i15
  %tmp_94_i1 = icmp slt i32 %p_i3, -12288
  %apl2_assign_1 = select i1 %tmp_94_i1, i15 -12288, i15 %tmp_58
  %apl2_assign_1_cast = sext i15 %apl2_assign_1 to i32
  store i32 %apl2_assign_1_cast, i32* @ah2, align 4
  %p_shl_i5 = call i40 @_ssdm_op_BitConcatenate.i40.i32.i8(i32 %ah1_load_1, i8 0)
  %p_shl_i5_cast = zext i40 %p_shl_i5 to i41
  %tmp_i11 = sub i41 %p_shl_i5_cast, %tmp_i11_cast8
  %tmp_99_i1 = call i32 @_ssdm_op_PartSelect.i32.i41.i32.i32(i41 %tmp_i11, i32 8, i32 39)
  %apl_i1_v_cast_cast = select i1 %tmp_54, i32 -192, i32 192
  %apl1_4 = add i32 %apl_i1_v_cast_cast, %tmp_99_i1
  %apl1_9 = sub i15 15360, %apl2_assign_1
  %apl1_11_cast6 = zext i15 %apl1_9 to i16
  %apl1_11_cast = zext i15 %apl1_9 to i32
  %tmp_101_i1 = icmp sgt i32 %apl1_4, %apl1_11_cast
  %wd3_0_apl1_i1 = select i1 %tmp_101_i1, i32 %apl1_11_cast, i32 %apl1_4
  %tmp_59 = trunc i32 %wd3_0_apl1_i1 to i16
  %apl1_6 = sub i16 0, %apl1_11_cast6
  %apl1_8_cast = sext i16 %apl1_6 to i32
  %tmp_102_i1 = icmp slt i32 %wd3_0_apl1_i1, %apl1_8_cast
  %apl1_7 = select i1 %tmp_102_i1, i16 %apl1_6, i16 %tmp_59
  %apl1_9_cast = sext i16 %apl1_7 to i32
  store i32 %apl1_9_cast, i32* @ah1, align 4
  %sh_load = load i32* @sh, align 4
  %dh_load = load i32* @dh, align 4
  %tmp_38 = add nsw i32 %sh_load, %dh_load
  store i32 %tmp_38, i32* @yh, align 4
  %rh1_load = load i32* @rh1, align 4
  store i32 %rh1_load, i32* @rh2, align 4
  store i32 %tmp_38, i32* @rh1, align 4
  store i32 %ph1_load, i32* @ph2, align 4
  store i32 %ph_load, i32* @ph1, align 4
  %il_load = load i32* @il, align 4
  %ih_load = load i32* @ih, align 4
  %tmp_60 = shl i32 %ih_load, 6
  %tmp_40 = or i32 %il_load, %tmp_60
  ret i32 %tmp_40
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define internal fastcc void @encode_upzero(i32 %dlt, [6 x i32]* nocapture %dlti, [6 x i32]* nocapture %bli) {
  %dlt_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %dlt)
  %dlti_addr = getelementptr [6 x i32]* %dlti, i64 0, i64 0
  %tmp = icmp eq i32 %dlt_read, 0
  br i1 %tmp, label %.preheader2, label %.preheader.preheader

.preheader.preheader:                             ; preds = %0
  %tmp_s = sext i32 %dlt_read to i64
  br label %.preheader

.preheader2:                                      ; preds = %0, %1
  %i = phi i3 [ %i_4, %1 ], [ 0, %0 ]
  %exitcond1 = icmp eq i3 %i, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6)
  %i_4 = add i3 %i, 1
  br i1 %exitcond1, label %.loopexit, label %1

; <label>:1                                       ; preds = %.preheader2
  %tmp_41 = zext i3 %i to i64
  %bli_addr = getelementptr [6 x i32]* %bli, i64 0, i64 %tmp_41
  %bli_load = load i32* %bli_addr, align 4
  %tmp_49_cast = sext i32 %bli_load to i40
  %p_shl = call i40 @_ssdm_op_BitConcatenate.i40.i32.i8(i32 %bli_load, i8 0)
  %tmp_42 = sub i40 %p_shl, %tmp_49_cast
  %tmp_43 = call i32 @_ssdm_op_PartSelect.i32.i40.i32.i32(i40 %tmp_42, i32 8, i32 39)
  store i32 %tmp_43, i32* %bli_addr, align 4
  br label %.preheader2

.preheader:                                       ; preds = %2, %.preheader.preheader
  %i_1 = phi i3 [ %i_5, %2 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i3 %i_1, -2
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6)
  %i_5 = add i3 %i_1, 1
  br i1 %exitcond, label %.loopexit, label %2

; <label>:2                                       ; preds = %.preheader
  %tmp_44 = zext i3 %i_1 to i64
  %dlti_addr_6 = getelementptr [6 x i32]* %dlti, i64 0, i64 %tmp_44
  %dlti_load = load i32* %dlti_addr_6, align 4
  %tmp_45 = sext i32 %dlti_load to i64
  %tmp_46 = mul nsw i64 %tmp_s, %tmp_45
  %tmp_61 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %tmp_46, i32 63)
  %wd2_cast_cast = select i1 %tmp_61, i32 -128, i32 128
  %bli_addr_1 = getelementptr [6 x i32]* %bli, i64 0, i64 %tmp_44
  %bli_load_1 = load i32* %bli_addr_1, align 4
  %tmp_57_cast = sext i32 %bli_load_1 to i40
  %p_shl1 = call i40 @_ssdm_op_BitConcatenate.i40.i32.i8(i32 %bli_load_1, i8 0)
  %tmp_47 = sub i40 %p_shl1, %tmp_57_cast
  %wd3 = call i32 @_ssdm_op_PartSelect.i32.i40.i32.i32(i40 %tmp_47, i32 8, i32 39)
  %tmp_48 = add nsw i32 %wd2_cast_cast, %wd3
  store i32 %tmp_48, i32* %bli_addr_1, align 4
  br label %.preheader

.loopexit:                                        ; preds = %.preheader2, %.preheader
  %dlti_addr_1 = getelementptr [6 x i32]* %dlti, i64 0, i64 4
  %dlti_load_1 = load i32* %dlti_addr_1, align 4
  %dlti_addr_2 = getelementptr [6 x i32]* %dlti, i64 0, i64 5
  store i32 %dlti_load_1, i32* %dlti_addr_2, align 4
  %dlti_addr_3 = getelementptr [6 x i32]* %dlti, i64 0, i64 3
  %dlti_load_2 = load i32* %dlti_addr_3, align 4
  store i32 %dlti_load_2, i32* %dlti_addr_1, align 4
  %dlti_addr_4 = getelementptr [6 x i32]* %dlti, i64 0, i64 2
  %dlti_load_3 = load i32* %dlti_addr_4, align 4
  store i32 %dlti_load_3, i32* %dlti_addr_3, align 4
  %dlti_addr_5 = getelementptr [6 x i32]* %dlti, i64 0, i64 1
  %dlti_load_4 = load i32* %dlti_addr_5, align 4
  store i32 %dlti_load_4, i32* %dlti_addr_4, align 4
  %dlti_load_5 = load i32* %dlti_addr, align 4
  store i32 %dlti_load_5, i32* %dlti_addr_5, align 4
  store i32 %dlt_read, i32* %dlti_addr, align 4
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32, i32, i32, i32, i2) {
entry:
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %case3, %case2, %case1, %entry
  %merge = phi i32 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ]
  ret i32 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0
}

define weak i34 @_ssdm_op_BitConcatenate.i34.i32.i2(i32, i2) nounwind readnone {
entry:
  %empty = zext i32 %0 to i34
  %empty_30 = zext i2 %1 to i34
  %empty_31 = shl i34 %empty, 2
  %empty_32 = or i34 %empty_31, %empty_30
  ret i34 %empty_32
}

define weak i36 @_ssdm_op_BitConcatenate.i36.i32.i4(i32, i4) nounwind readnone {
entry:
  %empty = zext i32 %0 to i36
  %empty_33 = zext i4 %1 to i36
  %empty_34 = shl i36 %empty, 4
  %empty_35 = or i36 %empty_34, %empty_33
  ret i36 %empty_35
}

define weak i32 @_ssdm_op_PartSelect.i32.i47.i32.i32(i47, i32, i32) nounwind readnone {
entry:
  %empty = call i47 @llvm.part.select.i47(i47 %0, i32 %1, i32 %2)
  %empty_36 = trunc i47 %empty to i32
  ret i32 %empty_36
}

define weak i32 @_ssdm_op_PartSelect.i32.i51.i32.i32(i51, i32, i32) nounwind readnone {
entry:
  %empty = call i51 @llvm.part.select.i51(i51 %0, i32 %1, i32 %2)
  %empty_37 = trunc i51 %empty to i32
  ret i32 %empty_37
}

define weak i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_38 = trunc i64 %empty to i32
  ret i32 %empty_38
}

define weak i32 @_ssdm_op_PartSelect.i32.i41.i32.i32(i41, i32, i32) nounwind readnone {
entry:
  %empty = call i41 @llvm.part.select.i41(i41 %0, i32 %1, i32 %2)
  %empty_39 = trunc i41 %empty to i32
  ret i32 %empty_39
}

define weak i32 @_ssdm_op_PartSelect.i32.i40.i32.i32(i40, i32, i32) nounwind readnone {
entry:
  %empty = call i40 @llvm.part.select.i40(i40 %0, i32 %1, i32 %2)
  %empty_40 = trunc i40 %empty to i32
  ret i32 %empty_40
}

define weak i40 @_ssdm_op_BitConcatenate.i40.i32.i8(i32, i8) nounwind readnone {
entry:
  %empty = zext i32 %0 to i40
  %empty_41 = zext i8 %1 to i40
  %empty_42 = shl i40 %empty, 8
  %empty_43 = or i40 %empty_42, %empty_41
  ret i40 %empty_43
}

define weak i39 @_ssdm_op_BitConcatenate.i39.i32.i7(i32, i7) nounwind readnone {
entry:
  %empty = zext i32 %0 to i39
  %empty_44 = zext i7 %1 to i39
  %empty_45 = shl i39 %empty, 7
  %empty_46 = or i39 %empty_45, %empty_44
  ret i39 %empty_46
}

define weak i28 @_ssdm_op_PartSelect.i28.i35.i32.i32(i35, i32, i32) nounwind readnone {
entry:
  %empty = call i35 @llvm.part.select.i35(i35 %0, i32 %1, i32 %2)
  %empty_47 = trunc i35 %empty to i28
  ret i28 %empty_47
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i12.i3(i12, i3) nounwind readnone {
entry:
  %empty = zext i12 %0 to i15
  %empty_48 = zext i3 %1 to i15
  %empty_49 = shl i15 %empty, 3
  %empty_50 = or i15 %empty_49, %empty_48
  ret i15 %empty_50
}

define weak i4 @_ssdm_op_PartSelect.i4.i15.i32.i32(i15, i32, i32) nounwind readnone {
entry:
  %empty = call i15 @llvm.part.select.i15(i15 %0, i32 %1, i32 %2)
  %empty_51 = trunc i15 %empty to i4
  ret i4 %empty_51
}

define weak i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2)
  %empty_52 = trunc i6 %empty to i4
  ret i4 %empty_52
}

define weak i5 @_ssdm_op_PartSelect.i5.i15.i32.i32(i15, i32, i32) nounwind readnone {
entry:
  %empty = call i15 @llvm.part.select.i15(i15 %0, i32 %1, i32 %2)
  %empty_53 = trunc i15 %empty to i5
  ret i5 %empty_53
}

define weak i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_54 = trunc i32 %empty to i27
  ret i27 %empty_54
}

define weak i30 @_ssdm_op_PartSelect.i30.i42.i32.i32(i42, i32, i32) nounwind readnone {
entry:
  %empty = call i42 @llvm.part.select.i42(i42 %0, i32 %1, i32 %2)
  %empty_55 = trunc i42 %empty to i30
  ret i30 %empty_55
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_56 = and i32 %0, %empty
  %empty_57 = icmp ne i32 %empty_56, 0
  ret i1 %empty_57
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_58 = shl i64 1, %empty
  %empty_59 = and i64 %0, %empty_58
  %empty_60 = icmp ne i64 %empty_59, 0
  ret i1 %empty_60
}

declare i47 @llvm.part.select.i47(i47, i32, i32) nounwind readnone

declare i51 @llvm.part.select.i51(i51, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i41 @llvm.part.select.i41(i41, i32, i32) nounwind readnone

declare i40 @llvm.part.select.i40(i40, i32, i32) nounwind readnone

declare i35 @llvm.part.select.i35(i35, i32, i32) nounwind readnone

declare i15 @llvm.part.select.i15(i15, i32, i32) nounwind readnone

declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i42 @llvm.part.select.i42(i42, i32, i32) nounwind readnone

declare i47 @_ssdm_op_PartSelect.i47.i50.i32.i32(i50, i32, i32) nounwind readnone

declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i15 @_ssdm_op_PartSelect.i15.i31.i32.i32(i31, i32, i32) nounwind readnone

declare i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32, i32, i32) nounwind readnone

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
