#include "cordiccart2pol.h"
#include <stdio.h>
#define AP_FIXED
//#define __SYNTHESIS__
/*
dout_t types_union(data_t N, half F)
{
 union {
    data_t data_tval;
    half fpval;
 } data_t2fp;
 unsigned long long one, exp;

 // Set a floating-point value in union intfp
 data_t2fp.fpval = N.to_float();

 // Slice out lower bits and add to shifted input
 one = data_t2fp.data_tval;
 exp = (N & 0x7FF);

 return ((exp << 52) + one) & (0x7fffffffffffffffLL);
}
*/

void ini_trans(hls::stream<data_t> &xin, hls::stream<data_t> &yin, data_comp_t &xout, data_comp_t &yout, data_comp_t &theta_ini)
{

	static data_comp_t xinb, yinb, xinr, yinr;
	static bool x_lt_y, x_lt_yb, xinv, yinv, yMSB;
	//#pragma HLS unroll
	xinr = xin.read();
	yinr = yin.read();
	xinb = ~xinr;
	yinb = ~yinr;
	yMSB = yinr[TOT_BW-1];
	x_lt_yb= (xinr < yinb);
	x_lt_y = (xinr<yinr);
	if (x_lt_yb){
		if(x_lt_y){
			xout = xinr;
			yout = yinr;
			theta_ini = (yMSB)? ini_phase[0] : ini_phase[1];
		}else{
			xout = yinb;
			yout = xinr;
			theta_ini = ini_phase[3];
		}
	}else{
		if(x_lt_y){
			xout = yinr;
			yout = xinb;
			theta_ini = ini_phase[2];
		}else{
			xout = xinr;
			yout = yinr;
			theta_ini = 0;
		}
	}
#ifndef __SYNTHESIS__
	printf("initialize: %s %s %s\n", xout.to_string(10).c_str(), yout.to_string(10).c_str(), theta_ini.to_string(10).c_str());
#endif
}

template <unsigned short ID>
void cordic_cr(data_comp_t x, data_comp_t y, data_comp_t theta, data_comp_t &x_nxt, data_comp_t &y_nxt, data_comp_t &theta_nxt, data_idx cordic_iter)
{
	data_comp_t x_sft, y_sft;
	data_sgn_ext y_sgn;
	y_sgn.range(TOT_BW-1, 0) = y.range(TOT_BW-1, 0);
	SGN_PADDING:
	for(short j=TOT_BW; j<TOT_BW+9; j++)
	{
#pragma HLS UNROLL
		y_sgn[j] = y[TOT_BW-1];
	}

#ifndef __SYNTHESIS__
	printf("sign: %s \n", y[TOT_BW-1, 0].to_string().c_str());
	printf("ysign_ext y: %s %s\n", y_sgn.to_string().c_str(), y.to_string().c_str());
#endif
	y_sft = y_sgn >> cordic_iter;
	x_sft = x >> cordic_iter;

	x_nxt = (y[TOT_BW-1])? x-y_sft : x+y_sft;
	y_nxt = (y[TOT_BW-1])? y+x_sft : y-x_sft;
	theta_nxt = (y[TOT_BW-1])? theta - cordic_phase[cordic_iter] : theta + cordic_phase[cordic_iter];

}
/*
void res_proc(data_t x, data_t y, data_t theta, data_t x_o, data_t y_o, data_t theta_o)
{
	theta_o += y;//assume that after scaling, x~= 1
	for(ap_int<5> i = 0; i<TOT_BW; i++)
	{

	} 
}
*/
void cordiccart2pol(data_t x, data_t y, data_t * r,  data_t * theta)
{
	// Write your code her
#pragma HLS INTERFACE mode=s_axilite register register_mode=off port=x
#pragma HLS INTERFACE mode=s_axilite register register_mode=off port=y

#pragma HLS INTERFACE mode=ap_ctrl_chain port=return
//#pragma HLS INTERFACE mode=s_axilite port=

    static hls::stream<data_t> inStream_x("input_stream_x");
    static hls::stream<data_t> inStream_y("input_stream_y");
    static hls::stream<data_comp_t> outStream_r("output_stream_r");
    static hls::stream<data_comp_t> outStream_theta("output_stream_theta");

#pragma HLS STREAM variable = inStream_x depth = 1
#pragma HLS STREAM variable = inStream_y depth = 1
#pragma HLS STREAM variable = outStream_r depth = 1
#pragma HLS STREAM variable = outStream_theta depth = 1
#pragma HLS INLINE
#pragma HLS DATAFLOW
#ifndef __SYNTHESIS__
	printf("input: %0.15f %0.15f\n", x, y);
#endif
	ap_ufixed<10, 0> K = Kn;
	static data_comp_t x_pip[9], y_pip[9], theta_pip[9];//pipeline stages
	// 1. create streaming dataflow
	inStream_x << x;
	inStream_y << y;

	ini_trans(inStream_x, inStream_y, x_pip[0], y_pip[0], theta_pip[0]);
#ifndef __SYNTHESIS__
	printf("ini: %s %s %s\n", x_pip[0].to_string(10).c_str(), y_pip[0].to_string(10).c_str(), theta_pip[0].to_string(10).c_str());
#endif
	//2. cordic stage
	/*
	MAIN_LOOP: for(data_idx func_iter = 1; func_iter<TOT_STEP; func_iter++)
	{
# pragma hls pipeline
		//# pragma hls unroll
		cordic_cr(x_pip[func_iter-1], y_pip[func_iter-1], theta_pip[func_iter-1], x_pip[func_iter], y_pip[func_iter], theta_pip[func_iter], func_iter);
#ifndef __SYNTHESIS__
		printf("loop %s: %s %s %s\n",func_iter.to_string(10).c_str(), x_pip[func_iter].to_string(10).c_str(), y_pip[func_iter].to_string(10).c_str(), theta_pip[func_iter].to_string(10).c_str());
#endif
	}	
	*/

	cordic_cr<1>(x_pip[0], y_pip[0], theta_pip[0], x_pip[1], y_pip[1], theta_pip[1], 1);
	cordic_cr<2>(x_pip[1], y_pip[1], theta_pip[1], x_pip[2], y_pip[2], theta_pip[2], 2);
	cordic_cr<3>(x_pip[2], y_pip[2], theta_pip[2], x_pip[3], y_pip[3], theta_pip[3], 3);
	cordic_cr<4>(x_pip[3], y_pip[3], theta_pip[3], x_pip[4], y_pip[4], theta_pip[4], 4);
	cordic_cr<5>(x_pip[4], y_pip[4], theta_pip[4], x_pip[5], y_pip[5], theta_pip[5], 5);
	cordic_cr<6>(x_pip[5], y_pip[5], theta_pip[5], x_pip[6], y_pip[6], theta_pip[6], 6);
	cordic_cr<7>(x_pip[6], y_pip[6], theta_pip[6], x_pip[7], y_pip[7], theta_pip[7], 7);

	outStream_theta << (theta_pip[TOT_STEP-1] + y_pip[TOT_STEP-1]);
	outStream_r << (x_pip[TOT_STEP-1] * K);

	*r = outStream_r.read().to_float();
	*theta = outStream_theta.read().to_float();


#ifndef __SYNTHESIS__
	printf("output: %f %f\n", (*r), (*theta));
#endif
}
