module jpeg_asic(
	PAD_clk, 
	PAD_rst, 
	PAD_eof_signal, 
	PAD_enable, 
	PAD_dat_i, 
	PAD_jpeg_bitstr, 
	PAD_dat_rdy, 
	PAD_eof_bitstr_cnt, 
	PAD_eof_dat_partial_rdy
	);

input PAD_clk_i;
input PAD_rst_i;
input PAD_eof_signal_i;
input PAD_enable_i;
input [23:0] PAD_dat_i;
output [31:0] PAD_jpeg_bitstr_o;
output PAD_dat_rdy_o;
output [4:0] PAD_eof_bitstr_cnt_o;
output PAD_eof_dat_partial_rdy_o;

input           clk;
input           rst;
input           end_of_file_signal;
input           enable;
input   [23:0]  data_in;
output  [31:0]  JPEG_bitstream;
output          data_ready;
output  [4:0] end_of_file_bitstream_count;
output          eof_data_partial_ready;


//PAD
//in
PLBI8F  U_clk_i      (.D( clk ), .P( PAD_clk_i ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 ));

PLBI8F  U_rst_i      (.D( rst ), .P( PAD_rst_i ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 ));

PLBI8F  U_eof_signal_i      (.D( end_of_file_signal ), .P( PAD_eof_signal_i ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 ));

PLBI8F	U_enable_i	(.D( enable ), .P( PAD_enable_i ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 ));

PLBI8F	U_dat_i_0	(.D( data_in[0] ), .P( PAD_dat_i[0] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_1	(.D( data_in[1] ), .P( PAD_dat_i[1] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_2	(.D( data_in[2] ), .P( PAD_dat_i[2] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_3	(.D( data_in[3] ), .P( PAD_dat_i[3] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_4	(.D( data_in[4] ), .P( PAD_dat_i[4] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_5	(.D( data_in[5] ), .P( PAD_dat_i[5] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_6	(.D( data_in[6] ), .P( PAD_dat_i[6] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_7	(.D( data_in[7] ), .P( PAD_dat_i[7] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_8	(.D( data_in[8] ), .P( PAD_dat_i[8] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_9	(.D( data_in[9] ), .P( PAD_dat_i[9] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_10	(.D( data_in[10] ), .P( PAD_dat_i[10] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_11	(.D( data_in[11] ), .P( PAD_dat_i[11] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_12	(.D( data_in[12] ), .P( PAD_dat_i[12] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_13	(.D( data_in[13] ), .P( PAD_dat_i[13] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_14	(.D( data_in[14] ), .P( PAD_dat_i[14] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_15	(.D( data_in[15] ), .P( PAD_dat_i[15] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_16	(.D( data_in[16] ), .P( PAD_dat_i[16] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_17	(.D( data_in[17] ), .P( PAD_dat_i[17] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_18	(.D( data_in[18] ), .P( PAD_dat_i[18] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_19	(.D( data_in[19] ), .P( PAD_dat_i[19] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_20	(.D( data_in[20] ), .P( PAD_dat_i[20] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_21	(.D( data_in[21] ), .P( PAD_dat_i[21] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_22	(.D( data_in[22] ), .P( PAD_dat_i[22] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_23	(.D( data_in[23] ), .P( PAD_dat_i[23] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_i_24	(.D( data_in[24] ), .P( PAD_dat_i[24] ), .A( 1'b0 ), .CONOF( 1'b1 ), .NEN( 1'b0 ), .PD( 1'b0 ), .PEN( 1'b0 ), .PU( 1'b1 ), .SONOF( 1'b0 ));

//out
PLBI8F	U_dat_o_0	(.D(  ), .P( PAD_jpeg_bitstr_o[0] ), .A( JPEG_bitstream[0] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_1	(.D(  ), .P( PAD_jpeg_bitstr_o[1] ), .A( JPEG_bitstream[1] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_2	(.D(  ), .P( PAD_jpeg_bitstr_o[2] ), .A( JPEG_bitstream[2] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_3	(.D(  ), .P( PAD_jpeg_bitstr_o[3] ), .A( JPEG_bitstream[3] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_4	(.D(  ), .P( PAD_jpeg_bitstr_o[4] ), .A( JPEG_bitstream[4] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_5	(.D(  ), .P( PAD_jpeg_bitstr_o[5] ), .A( JPEG_bitstream[5] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_6	(.D(  ), .P( PAD_jpeg_bitstr_o[6] ), .A( JPEG_bitstream[6] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_7	(.D(  ), .P( PAD_jpeg_bitstr_o[7] ), .A( JPEG_bitstream[7] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_8	(.D(  ), .P( PAD_jpeg_bitstr_o[8] ), .A( JPEG_bitstream[8] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_9	(.D(  ), .P( PAD_jpeg_bitstr_o[9] ), .A( JPEG_bitstream[9] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_10	(.D(  ), .P( PAD_jpeg_bitstr_o[10] ), .A( JPEG_bitstream[10] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_11	(.D(  ), .P( PAD_jpeg_bitstr_o[11] ), .A( JPEG_bitstream[11] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_12	(.D(  ), .P( PAD_jpeg_bitstr_o[12] ), .A( JPEG_bitstream[12] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_13	(.D(  ), .P( PAD_jpeg_bitstr_o[13] ), .A( JPEG_bitstream[13] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_14	(.D(  ), .P( PAD_jpeg_bitstr_o[14] ), .A( JPEG_bitstream[14] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_15	(.D(  ), .P( PAD_jpeg_bitstr_o[15] ), .A( JPEG_bitstream[15] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_16	(.D(  ), .P( PAD_jpeg_bitstr_o[16] ), .A( JPEG_bitstream[16] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_17	(.D(  ), .P( PAD_jpeg_bitstr_o[17] ), .A( JPEG_bitstream[17] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_18	(.D(  ), .P( PAD_jpeg_bitstr_o[18] ), .A( JPEG_bitstream[18] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_19	(.D(  ), .P( PAD_jpeg_bitstr_o[19] ), .A( JPEG_bitstream[19] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_20	(.D(  ), .P( PAD_jpeg_bitstr_o[20] ), .A( JPEG_bitstream[20] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_21	(.D(  ), .P( PAD_jpeg_bitstr_o[21] ), .A( JPEG_bitstream[21] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_22	(.D(  ), .P( PAD_jpeg_bitstr_o[22] ), .A( JPEG_bitstream[22] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_23	(.D(  ), .P( PAD_jpeg_bitstr_o[23] ), .A( JPEG_bitstream[23] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_24	(.D(  ), .P( PAD_jpeg_bitstr_o[24] ), .A( JPEG_bitstream[24] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_25	(.D(  ), .P( PAD_jpeg_bitstr_o[25] ), .A( JPEG_bitstream[25] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_26	(.D(  ), .P( PAD_jpeg_bitstr_o[26] ), .A( JPEG_bitstream[26] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_27	(.D(  ), .P( PAD_jpeg_bitstr_o[27] ), .A( JPEG_bitstream[27] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_28	(.D(  ), .P( PAD_jpeg_bitstr_o[28] ), .A( JPEG_bitstream[28] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_29	(.D(  ), .P( PAD_jpeg_bitstr_o[29] ), .A( JPEG_bitstream[29] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_30	(.D(  ), .P( PAD_jpeg_bitstr_o[30] ), .A( JPEG_bitstream[30] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 
PLBI8F	U_dat_o_31	(.D(  ), .P( PAD_jpeg_bitstr_o[31] ), .A( JPEG_bitstream[31] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 )); 

PLBI8F	U_dat_rdy_o	(.D(  ), .P( PAD_dat_rdy_o ), .A( data_ready ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 ));

PLBI8F	U_eof_bitstr_cnt_o_0	(.D(  ), .P( PAD_eof_bitstr_cnt_o[0] ), .A( end_of_file_bitstream_count[0] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 ));
PLBI8F	U_eof_bitstr_cnt_o_1	(.D(  ), .P( PAD_eof_bitstr_cnt_o[1] ), .A( end_of_file_bitstream_count[1] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 ));
PLBI8F	U_eof_bitstr_cnt_o_2	(.D(  ), .P( PAD_eof_bitstr_cnt_o[2] ), .A( end_of_file_bitstream_count[2] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 ));
PLBI8F	U_eof_bitstr_cnt_o_3	(.D(  ), .P( PAD_eof_bitstr_cnt_o[3] ), .A( end_of_file_bitstream_count[3] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 ));
PLBI8F	U_eof_bitstr_cnt_o_4	(.D(  ), .P( PAD_eof_bitstr_cnt_o[4] ), .A( end_of_file_bitstream_count[4] ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 ));

PLBI8F	U_eof_dat_partial_rdy_o	(.D(  ), .P( PAD_eof_dat_partial_rdy_o ), .A( eof_data_partial_ready ), .CONOF( 1'b0 ), .NEN( 1'b1 ), .PD( 1'b0 ), .PEN( 1'b1 ), .PU( 1'b1 ), .SONOF( 1'b0 ));

jpeg_top jpeg_top_inst(
	.clk(clk), 
	.rst(rst), 
	.end_of_file_signal(end_of_file_signal), 
	.enable(enable), 
	.data_in(data_in), 
	.JPEG_bitstream(JPEG_bitstream),
	.data_ready(data_ready), 
	.end_of_file_bitstream_count(end_of_file_bitstream_count), 
	.eof_data_partial_ready(eof_data_partial_ready)
	);

endmodule
