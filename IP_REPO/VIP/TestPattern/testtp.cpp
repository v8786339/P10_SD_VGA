#include "tp.h"
#include "hls_opencv.h"
#include "iostream"
#include <time.h>

using namespace std;
using namespace cv;


int main (int argc, char** argv)
{


 IplImage*dst= cvCreateImage(cvSize(1280,960),8,3);

 AXI_STREAM  dst_axi;



 test_pattern1(dst_axi);

 AXIvideo2IplImage(dst_axi, dst);



 cvShowImage( "dst",dst);

 cvWaitKey(3000);

return 0;
}
