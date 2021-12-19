#include "hls_video.h"
#include "ap_int.h"

#define SRC_WIDTH  1280
#define SRC_HEIGHT 960



typedef hls::stream<ap_axiu<24,1,1,1> >               AXI_STREAM;

typedef hls::Mat<SRC_HEIGHT, SRC_WIDTH, HLS_8UC3>     SRC_IMAGE;


void test_pattern(AXI_STREAM& src_axi0);
void test_pattern1(AXI_STREAM& src_axi0);
