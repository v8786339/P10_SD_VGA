#include "vip.h"



void vip(AXI_STREAM& src_axi0,AXI_STREAM& src_axi1,AXI_STREAM& src_axi2,AXI_STREAM& src_axi3, AXI_STREAM& dst_axi, int src_rows, int src_cols,int dst_rows,int dst_cols)
{
#pragma HLS DATAFLOW

#pragma HLS INTERFACE axis port=src_axi0
#pragma HLS INTERFACE axis port=src_axi1
#pragma HLS INTERFACE axis port=src_axi2
#pragma HLS INTERFACE axis port=src_axi3
#pragma HLS INTERFACE axis port=dst_axi

#pragma HLS RESOURCE core=AXI_SLAVE variable=src_rows metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=src_cols metadata="-bus_bundle CONTROL_BUS"

#pragma HLS RESOURCE core=AXI_SLAVE variable=dst_rows metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=dst_cols metadata="-bus_bundle CONTROL_BUS"

#pragma HLS RESOURCE core=AXI_SLAVE variable=return metadata="-bus_bundle CONTROL_BUS"

#pragma HLS INTERFACE ap_stable port=src_rows
#pragma HLS INTERFACE ap_stable port=src_cols
#pragma HLS INTERFACE ap_stable port=dst_rows
#pragma HLS INTERFACE ap_stable port=dst_cols

        int interpolation;
            SRC_IMAGE       imag0_0(src_rows,src_cols);
            SRC_IMAGE       imag1_0(src_rows,src_cols);
            SRC_IMAGE       imag2_0(src_rows,src_cols);
            SRC_IMAGE       imag3_0(src_rows,src_cols);
            DST_IMAGE       imag_1(dst_rows, dst_cols);

            hls::AXIvideo2Mat(src_axi0, imag0_0);
            hls::AXIvideo2Mat(src_axi1, imag1_0);
            hls::AXIvideo2Mat(src_axi2, imag2_0);
            hls::AXIvideo2Mat(src_axi3, imag3_0);

              HLS_SIZE_T rows = imag0_0.rows;
              HLS_SIZE_T cols = imag0_0.cols;
              assert(rows <= SRC_HEIGHT);
              assert(cols <= SRC_WIDTH);
assert(imag0_0.rows==imag1_0.rows);
assert(imag0_0.cols==imag1_0.cols);
assert(imag2_0.rows==imag3_0.rows);
assert(imag2_0.cols==imag1_0.cols);
assert(imag_1.cols==imag1_0.cols*2);
assert(imag_1.rows==imag1_0.rows*2);

              hls::Scalar<HLS_MAT_CN(HLS_8UC3), HLS_TNAME(HLS_8UC3)> s;
           loop_height: for (HLS_SIZE_T i = 0; i < rows*2; i++) {
              loop_width: for (HLS_SIZE_T j = 0; j < cols*2; j++) {
          #pragma HLS loop_flatten off
          #pragma HLS pipeline II=1

if(i<rows && j< cols)
            	  imag0_0 >> s;
else if(j<cols)
imag1_0 >>s;
else if(i<rows)
	imag2_0 >>s;
else
imag3_0 >>s;

                      imag_1 << s;

                  }

              }




            hls::Mat2AXIvideo(imag_1, dst_axi);

}


void vip1(AXI_STREAM& src_axi0, AXI_STREAM& src_axi1,AXI_STREAM& dst_axi)
{
	const int src_rows=480,  src_cols=640, dst_rows=960,dst_cols=1280;

#pragma HLS DATAFLOW
#pragma HLS STREAM variable=dst_axi dim=1
#pragma HLS STREAM variable=src_axi0 dim=1
#pragma HLS STREAM variable=src_axi1 dim=1

#pragma HLS INTERFACE axis port=src_axi0
#pragma HLS INTERFACE axis port=src_axi1
#pragma HLS INTERFACE axis port=dst_axi

#pragma HLS RESOURCE core=AXI_SLAVE variable=src_rows metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=src_cols metadata="-bus_bundle CONTROL_BUS"

#pragma HLS RESOURCE core=AXI_SLAVE variable=dst_rows metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=dst_cols metadata="-bus_bundle CONTROL_BUS"

#pragma HLS RESOURCE core=AXI_SLAVE variable=return metadata="-bus_bundle CONTROL_BUS"

#pragma HLS INTERFACE ap_stable port=src_rows
#pragma HLS INTERFACE ap_stable port=src_cols
#pragma HLS INTERFACE ap_stable port=dst_rows
#pragma HLS INTERFACE ap_stable port=dst_cols

        int interpolation;
/*
        			SRC_IMAGE       t0(src_rows,src_cols);
#pragma HLS STREAM variable=t0 depth=307200 dim=1
                    SRC_IMAGE       t1(src_rows,src_cols);
#pragma HLS STREAM variable=t1 depth=307200 dim=1
                    SRC_IMAGE       t2(src_rows,src_cols);
#pragma HLS STREAM variable=t2 depth=307200 dim=1
                    SRC_IMAGE       t3(src_rows,src_cols);
#pragma HLS STREAM variable=t3 depth=307200 dim=1
*/

            SRC_IMAGE       imag0_0(src_rows,src_cols);

            SRC_IMAGE       imag1_0(src_rows,src_cols);

            SRC_IMAGE       imag2_0(1,src_cols);
#pragma HLS STREAM variable=imag2_0 depth=640 dim=1
            SRC_IMAGE       imag3_0(1,src_cols);
#pragma HLS STREAM variable=imag3_0 depth=640 dim=1
            DST_IMAGE       imag_1(dst_rows, dst_cols);


            hls::AXIvideo2Mat(src_axi0, imag0_0);
            hls::AXIvideo2Mat(src_axi1, imag1_0);
            /*
hls::CvtColor<HLS_RGB2GRAY,HLS_8UC3,HLS_8UC3,SRC_HEIGHT,SRC_WIDTH >(t1,imag1_0);
hls::Duplicate(t2,imag0_0,t3);
hls::Duplicate(t3,imag2_0,imag3_0);
*/

              HLS_SIZE_T rows = imag0_0.rows;
              HLS_SIZE_T cols = imag0_0.cols;
              assert(rows <= SRC_HEIGHT);
              assert(cols <= SRC_WIDTH);
assert(imag0_0.rows==imag1_0.rows);
assert(imag0_0.cols==imag1_0.cols);

assert(imag_1.cols==imag1_0.cols*2);
assert(imag_1.rows==imag1_0.rows*2);

              hls::Scalar<HLS_MAT_CN(HLS_8UC3), HLS_TNAME(HLS_8UC3)> s;
           loop_height: for (HLS_SIZE_T i = 0; i < rows*2; i++) {
              loop_width: for (HLS_SIZE_T j = 0; j < cols*2; j++) {
          #pragma HLS loop_flatten off
          #pragma HLS pipeline II=1

if(i<rows && j< cols)
{
            	  imag0_0 >> s;
            	  imag2_0 << s;
}
else if(j<cols)
{
	imag1_0 >>s;
	imag3_0 << s;
}
else if(i<rows)
{
	imag2_0 >>s;
short avgc=(s.val[0]+s.val[1]+s.val[2])/3;
s.val[0]=avgc;
s.val[1]=avgc;
s.val[2]=avgc;
}
else
{
imag3_0 >>s;
short avgc=(s.val[0]+s.val[1]+s.val[2])/3;
s.val[0]=avgc;
s.val[1]=avgc;
s.val[2]=avgc;
}
                      imag_1 << s;

                  }

              }




            hls::Mat2AXIvideo(imag_1, dst_axi);

}

void vip1_m(AXI_STREAM& src_axi0, AXI_STREAM& dst_axi)
{
	const int src_rows=480,  src_cols=640, dst_rows=960,dst_cols=1280;

#pragma HLS DATAFLOW



#pragma HLS INTERFACE axis port=src_axi0

#pragma HLS INTERFACE axis port=dst_axi

#pragma HLS RESOURCE core=AXI_SLAVE variable=src_rows metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=src_cols metadata="-bus_bundle CONTROL_BUS"

#pragma HLS RESOURCE core=AXI_SLAVE variable=dst_rows metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=dst_cols metadata="-bus_bundle CONTROL_BUS"

#pragma HLS RESOURCE core=AXI_SLAVE variable=return metadata="-bus_bundle CONTROL_BUS"

#pragma HLS INTERFACE ap_stable port=src_rows
#pragma HLS INTERFACE ap_stable port=src_cols
#pragma HLS INTERFACE ap_stable port=dst_rows
#pragma HLS INTERFACE ap_stable port=dst_cols

        int interpolation;
/*
        			SRC_IMAGE       t0(src_rows,src_cols);
#pragma HLS STREAM variable=t0 depth=307200 dim=1
                    SRC_IMAGE       t1(src_rows,src_cols);
#pragma HLS STREAM variable=t1 depth=307200 dim=1
                    SRC_IMAGE       t2(src_rows,src_cols);
#pragma HLS STREAM variable=t2 depth=307200 dim=1
                    SRC_IMAGE       t3(src_rows,src_cols);
#pragma HLS STREAM variable=t3 depth=307200 dim=1
*/

            SRC_IMAGE       imag0_0(src_rows,src_cols);


            SRC_IMAGE       imag2_0(1,src_cols);
#pragma HLS STREAM variable=imag2_0 depth=640 dim=1
            SRC_IMAGE       imag3_0(1,src_cols);
  #pragma HLS STREAM variable=imag3_0 depth=640 dim=1
            DST_IMAGE       imag_1(dst_rows, dst_cols);


            hls::AXIvideo2Mat(src_axi0, imag0_0);

            /*
hls::CvtColor<HLS_RGB2GRAY,HLS_8UC3,HLS_8UC3,SRC_HEIGHT,SRC_WIDTH >(t1,imag1_0);
hls::Duplicate(t2,imag0_0,t3);
hls::Duplicate(t3,imag2_0,imag3_0);
*/

              HLS_SIZE_T rows = imag0_0.rows;
              HLS_SIZE_T cols = imag0_0.cols;
              assert(rows <= SRC_HEIGHT);
              assert(cols <= SRC_WIDTH);


assert(imag_1.cols==imag0_0.cols*2);
assert(imag_1.rows==imag0_0.rows*2);

              hls::Scalar<HLS_MAT_CN(HLS_8UC3), HLS_TNAME(HLS_8UC3)> s;
           loop_height: for (HLS_SIZE_T i = 0; i < rows*2; i++) {
              loop_width: for (HLS_SIZE_T j = 0; j < cols*2; j++) {
          #pragma HLS loop_flatten off
          #pragma HLS pipeline II=1

if(i<rows && j< cols)
{
            	  imag0_0 >> s;
            	  imag2_0 << s;
}
else if(j<cols)
{
	if(j<160)
	{
	 s.val[0]=255;
	 s.val[1]=0;
	s.val[2]=0;
	}
	else if(j<320)
	{
		 s.val[0]=0;
		 s.val[1]=255;
		s.val[2]=0;
	}
	else if(j<480)
	{
		 s.val[0]=0;
		 s.val[1]=0;
		s.val[2]=255;
	}
	else
	s=255;

	imag3_0 << s;
}
else if(i<rows)
{
	imag2_0 >>s;
short avgc=(s.val[0]+s.val[1]+s.val[2])/3;
s.val[0]=avgc;
s.val[1]=avgc;
s.val[2]=avgc;
}
else
{
imag3_0 >>s;
short avgc=(s.val[0]+s.val[1]+s.val[2])/3;
s.val[0]=avgc;
s.val[1]=avgc;
s.val[2]=avgc;
}
                      imag_1 << s;

                  }

              }




            hls::Mat2AXIvideo(imag_1, dst_axi);

}

void vip2(AXI_STREAM& src_axi0, AXI_STREAM& dst_axi, int src_rows, int src_cols,int dst_rows,int dst_cols)
{
#pragma HLS STREAM variable=dst_axi dim=1
#pragma HLS STREAM variable=src_axi0 dim=1

#pragma HLS INTERFACE axis port=src_axi0

#pragma HLS INTERFACE axis port=dst_axi

#pragma HLS RESOURCE core=AXI_SLAVE variable=src_rows metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=src_cols metadata="-bus_bundle CONTROL_BUS"

#pragma HLS RESOURCE core=AXI_SLAVE variable=dst_rows metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=dst_cols metadata="-bus_bundle CONTROL_BUS"

#pragma HLS RESOURCE core=AXI_SLAVE variable=return metadata="-bus_bundle CONTROL_BUS"

#pragma HLS INTERFACE ap_stable port=src_rows
#pragma HLS INTERFACE ap_stable port=src_cols
#pragma HLS INTERFACE ap_stable port=dst_rows
#pragma HLS INTERFACE ap_stable port=dst_cols

        int interpolation;

        			SRC_IMAGE       t0(src_rows,src_cols);
#pragma HLS STREAM variable=t0 depth=307200 dim=2
                    SRC_IMAGE       t1(src_rows,src_cols);
#pragma HLS STREAM variable=t1 depth=307200 dim=2
                    SRC_IMAGE       t2(src_rows,src_cols);
#pragma HLS STREAM variable=t2 depth=307200 dim=2
                    SRC_IMAGE       t3(src_rows,src_cols);
#pragma HLS STREAM variable=t3 depth=307200 dim=2


            SRC_IMAGE       imag0_0(src_rows,src_cols);
#pragma HLS STREAM variable=imag0_0 depth=307200 dim=2
            SRC_IMAGE       imag1_0(src_rows,src_cols);
#pragma HLS STREAM variable=imag1_0 depth=307200 dim=2
            SRC_IMAGE       imag2_0(src_rows,src_cols);
#pragma HLS STREAM variable=imag2_0 depth=307200 dim=2
            SRC_IMAGE       imag3_0(src_rows,src_cols);
#pragma HLS STREAM variable=imag3_0 depth=307200 dim=2
            DST_IMAGE       imag_1(dst_rows, dst_cols);
#pragma HLS STREAM variable=imag_1 depth=1228800 dim=2

            hls::AXIvideo2Mat(src_axi0, t0);
            hls::Duplicate(t0,t1,t2);
hls::CvtColor<HLS_RGB2GRAY,HLS_8UC3,HLS_8UC3,SRC_HEIGHT,SRC_WIDTH >(t1,imag1_0);
hls::Duplicate(t2,imag0_0,t3);
hls::Duplicate(t3,imag2_0,imag3_0);


              HLS_SIZE_T rows = imag0_0.rows;
              HLS_SIZE_T cols = imag0_0.cols;
              assert(rows <= SRC_HEIGHT);
              assert(cols <= SRC_WIDTH);
assert(imag0_0.rows==imag1_0.rows);
assert(imag0_0.cols==imag1_0.cols);
assert(imag2_0.rows==imag3_0.rows);
assert(imag2_0.cols==imag1_0.cols);
assert(imag_1.cols==imag1_0.cols*2);
assert(imag_1.rows==imag1_0.rows*2);

              hls::Scalar<HLS_MAT_CN(HLS_8UC3), HLS_TNAME(HLS_8UC3)> s;
           loop_height: for (HLS_SIZE_T i = 0; i < rows*2; i++) {
              loop_width: for (HLS_SIZE_T j = 0; j < cols*2; j++) {
          #pragma HLS loop_flatten off
          #pragma HLS pipeline II=1

if(i<rows && j< cols)
            	  imag0_0 >> s;
else if(j<cols)
imag1_0 >>s;
else if(i<rows)
	imag2_0 >>s;
else
imag3_0 >>s;

                      imag_1 << s;

                  }

              }




            hls::Mat2AXIvideo(imag_1, dst_axi);

}
