#include "vip.h"
#include "hls_opencv.h"
#include "iostream"
#include <time.h>

using namespace std;
using namespace cv;

#define INPUT_IMAGE         "lena.bmp"
int main (int argc, char** argv)
{

 IplImage* src[4];
// src[0]= cvLoadImage("D:\\BaiduNetdiskDownload\\P10_SD_VGA_m\\IP_REPO\\VIP\\VIP\\0.bmp");
 src[1]= cvLoadImage("D:\\BaiduNetdiskDownload\\P10_SD_VGA_m\\IP_REPO\\VIP\\VIP\\1.bmp");
// src[2]= cvLoadImage("D:\\BaiduNetdiskDownload\\P10_SD_VGA_m\\IP_REPO\\VIP\\VIP\\2.bmp");
 //src[3]= cvLoadImage("D:\\BaiduNetdiskDownload\\P10_SD_VGA_m\\IP_REPO\\VIP\\VIP\\3.bmp");

 IplImage*dst= cvCreateImage(cvSize(DST_WIDTH,DST_HEIGHT),src[1]->depth,src[1]->nChannels);

 AXI_STREAM src_axi[4], dst_axi;

for(int i=1;i<2;i++)
 IplImage2AXIvideo(src[i], src_axi[i]);

 //vip(src_axi[0],src_axi[1],src_axi[2],src_axi[3],dst_axi,SRC_HEIGHT, SRC_WIDTH,DST_HEIGHT, DST_WIDTH);

 vip1_m(src_axi[1],dst_axi);

 AXIvideo2IplImage(dst_axi, dst);

 cvShowImage("src",src[1]);

 cvShowImage( "dst",dst);

 cvWaitKey(3000);

return 0;
}
