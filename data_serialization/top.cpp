#include "top.hpp"
#include <ap_int.h>
#include <bitset>
#include <iostream>


static char TYPE_FLG = 0xF0; // 8'b11110000
static char VLD_FLG = 0x0F; // 8'b00001111
static char T_INT = 1;
static char T_FLT = 2;
static char T_DBL = 3;
static char T_STR = 5;
static char T_EOL = 13;
static char T_EOF = 15;

//#pragma HLS INTERFACE mode=m_axi port=src_buff depth=SRC_INTERFACE_SZ
//#pragma HLS INTERFACE mode=m_axi port=dst_buff depth=DST_INTERFACE_SZ
//#pragma HLS INTERFACE mode=s_axilite port=src_sz


void dut(char* src_buff, int src_sz, char* dst_buff) {

#pragma HLS INTERFACE mode=m_axi port=src_buff depth=SRC_INTERFACE_SZ
#pragma HLS INTERFACE mode=m_axi port=dst_buff depth=DST_INTERFACE_SZ
#pragma HLS INTERFACE mode=s_axilite port=src_sz

// Please write your code here
	char* cur_src = src_buff;
	int i=0;

	int ptr_col[7] = {0, 0, 0, 0, 0, 0, 0};
	int ptr_col2[7] = {0, 0, 0, 0, 0, 0, 0};
	int ptr_col2_base[7] = {0, 0, 0, 0, 0, 0, 0};
	int nCol = -1;

	ap_uint<3> prev_col_idx = 7;

	while( (cur_src[0] & 0xF0) != 0xD0)
	{
		ap_uint<4> type = cur_src[0] >> 4;
		ap_uint<3> col_idx = cur_src[2];
		cur_src += 11;

		if (col_idx == prev_col_idx) continue;
		prev_col_idx = col_idx;

		if ( (type==T_INT) || (type==T_DBL) )
		{
			ptr_col[col_idx+1] = ptr_col[col_idx] + 8000;
		}
		else 	// string
		{
			ptr_col[col_idx+1] = ptr_col[col_idx] + 5008;
			ptr_col2[col_idx] = ptr_col[col_idx] + 4008;
			ptr_col2_base[col_idx] = ptr_col2[col_idx];
			dst_buff[ptr_col[col_idx]] = 0;
			dst_buff[ptr_col[col_idx]+1] = 0;
			dst_buff[ptr_col[col_idx]+2] = 0;
			dst_buff[ptr_col[col_idx]+3] = 0;
			dst_buff[ptr_col[col_idx]+4004] = 0;
			dst_buff[ptr_col[col_idx]+4005] = 0;
			dst_buff[ptr_col[col_idx]+4006] = 0;
			dst_buff[ptr_col[col_idx]+4007] = 0;
			ptr_col[col_idx] += 4;
		}
		std::cout << "col idx: " << col_idx << std::endl;
		std::cout << "col idx ptr: " << ptr_col[col_idx] << std::endl;
	}

	cur_src = src_buff;
	ap_uint<3> next_col_idx = cur_src[2];

	for( i = 0; i < (src_sz / 11)-1; i++ ){

		#pragma HLS PIPELINE II=20

		std::cout << "obj " << i << std::endl;

		ap_uint<4> type = cur_src[0] >> 4;
		ap_uint<4> valB = cur_src[0] & 0xF;
		ap_uint<3> col_idx = next_col_idx;
		next_col_idx = cur_src[13];


		std::cout << " type:" << type << std::endl;
		std::cout << " valB:" << valB << std::endl;
		std::cout << " col:" << col_idx << std::endl;

		if ( (type==1) || (type==3) )
		{
			for ( int j = 0; j < 8; j++ )
			{
				dst_buff[ptr_col[col_idx]+7-j] = cur_src[j+3];
				std::cout << std::hex << ptr_col[col_idx]+7-j << ": " << (unsigned int)(cur_src[j+3]) << std::endl;
			}
			ptr_col[col_idx] += 8;

		}
		else if (type==5) {

			for ( int j = 0; j < 8; j++ )
			{
				if ( j >= valB ) break;
				dst_buff[ptr_col2[col_idx]+j] = cur_src[-j+10];
				std::cout << std::hex << ptr_col2[col_idx]+j << ": " << (unsigned int)(cur_src[-j+10]) << std::endl;
			}
			ptr_col2[col_idx] += valB;

			if ( next_col_idx != col_idx )
			{
				int val = ptr_col2[col_idx] - ptr_col2_base[col_idx];
				dst_buff[ptr_col[col_idx]] = val & 0xFF;
				dst_buff[ptr_col[col_idx]+1] = (val & 0xFF00) >> 8;
				dst_buff[ptr_col[col_idx]+2] = (val & 0xFF0000) >> 16;
				dst_buff[ptr_col[col_idx]+3] = (val & 0xFF000000) >> 24;
				std::cout << std::hex << ptr_col[col_idx] << ": " << (val & 0xFF) << std::endl;
				std::cout << std::hex << ptr_col[col_idx] + 1<< ": " << ((val & 0xFF000) >> 8) << std::endl;
				ptr_col[col_idx] += 4;
			}
		}

		cur_src += 11;
	}

}

