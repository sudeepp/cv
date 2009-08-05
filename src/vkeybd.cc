//#ifdef _CH_
//#pragma package <opencv>
//#endif

//#define CV_NO_BACKWARD_COMPATIBILITY

//#ifndef _EiC
#include "cv.h"
#include "highgui.h"
#include <stdio.h>
#include <ctype.h>

#include "blob.h"
#include "blob_result.h"

//using namespace cv;

struct Peak{
  int id;
  int x, y, w, h;
  int bboxx, bboxy, area;
  float bbox_ar;
  float theta;
  float c1, c2, c3, c4, c5, c6,c7,c8,c9;
  float cmmts;
};


IplImage *frame, *hsv_img, *h_img, *s_img, *v_img, filtered;
double values[4] = {0,0,0,0};
IplImage* keybd = cvLoadImage("/Users/sudeep/Code/cv/media/keybd.jpg");


void on_mouse( int event, int x, int y, int flags, void* param ){

  IplImage* img = (IplImage*)param;
  switch( event )
    {
    case CV_EVENT_LBUTTONDOWN:
      {
	CvPoint seed = cvPoint(x,y);
	uchar* ptr = (uchar*) (img->imageData + y*img->widthStep);
	for (int i = 0; i < 3; i++){
	  values[i] = ptr[3*x + i];
	}
	//printf("H S V: %3.1f %3.1f %3.1f\n", values[0], values[1], values[2]);
      }
      break;
    }
}

void draw_bounding_box( IplImage* img, std::vector<Peak>& pk){
  for(int i = 0; i < pk.size(); i++){
    cvRectangle( img, 
		 cvPoint(pk[i].x - (int)(round(pk[i].w/2)), pk[i].y - (int)(round(pk[i].h/2))),
		 cvPoint(pk[i].x + (int)(round(pk[i].w/2)), pk[i].y + (int)(round(pk[i].h/2))),
		 CV_RGB(0,255,0),
		 1);
  }
}
		 
void kbDrawKeyboard( IplImage* img ){
  float s = (float)img->width/keybd->width;
  int w = round(keybd->width*s);
  int h = round(keybd->height*s);
  
  IplImage* scaled = cvCreateImage(cvSize(w, h), keybd->depth, keybd->nChannels);
  cvResize(keybd, scaled, CV_INTER_NN);
  cvSetImageROI(img, cvRect(0 , img->height - h, img->width, img->height));
  int weight = 0.5;
  cvAddWeighted(img, 0.3, scaled, 0.1, 0.0, img);
  cvResetImageROI(img);
}

int main( int argc, char** argv ){

  // ----- INITS ------ //
  CvCapture* capture = cvCaptureFromCAM( 0 );
  if( !capture ){
    fprintf(stderr,"Could not initialize capturing...\n");
    return -1;
  }

  frame = cvQueryFrame( capture );
  hsv_img = cvCreateImage( cvGetSize(frame), 8, 3);
  h_img = cvCreateImage( cvGetSize(frame), 8, 1);
  v_img = cvCreateImage( cvGetSize(frame), 8, 1);
  int c;

  cvNamedWindow( "VKeyboard", CV_WINDOW_AUTOSIZE );
  //cvNamedWindow( "H image", CV_WINDOW_AUTOSIZE );
  //cvNamedWindow( "V image", CV_WINDOW_AUTOSIZE );

  cvSetMouseCallback("VKeyboard", &on_mouse, (void*)hsv_img);
  while ( 1 ) {
    CBlobResult blobs;
    CBlob currentBlob;
    std::vector<Peak> peaks;

    frame = cvQueryFrame( capture );
    if( !frame )
      break;

    kbDrawKeyboard(frame);

    // COLOR THRESHOLDING
    cvCvtColor( frame, hsv_img, CV_RGB2HSV);
    cvSplit( hsv_img, h_img, s_img, v_img, NULL);

    cvInRangeS( h_img, cvScalar(values[0] - 5,0,0,0), cvScalar(values[0] + 5,0,0,0), h_img);
    cvInRangeS( v_img, cvScalar(values[2] - 15,0,0,0), cvScalar(values[2] + 15,0,0,0), v_img);
    /*
    // BLOB EXTRACTION - last arg is backgd
    blobs = CBlobResult( h_img, NULL, 0 );
    peaks.reserve(blobs.GetNumBlobs());

    // BLOB FILTERS
    //blobs.Filter(blobs, B_EXCLUDE, CBlobGetArea(), B_GREATER, 10000);
    blobs.Filter(blobs, B_EXCLUDE, CBlobGetArea(), B_LESS_OR_EQUAL, 10);

    // MAIN BLOB PARAMETER EXTRACTION LOOP
    for (int i = 0; i < blobs.GetNumBlobs(); i++){
    currentBlob = blobs.GetBlob(i);
    if (currentBlob.Area()){
    long area = currentBlob.Area();
    long c_x = currentBlob.MinX() + (( currentBlob.MaxX() - currentBlob.MinX() ) / 2.0);
    long c_y = currentBlob.MinY() + (( currentBlob.MaxY() - currentBlob.MinY() ) / 2.0);

    Peak p;
    p.x = c_x;
    p.y = c_y;
    p.area = area;

    CvRect bbox = currentBlob.GetBoundingBox();
    p.bboxx = bbox.x;
    p.bboxy = bbox.y;
    p.h = bbox.height;
    p.w = bbox.width;
    p.bbox_ar = bbox.width / bbox.height;

    p.cmmts = currentBlob.Moment( c_x, c_y );
	  
    peaks.push_back(p);
    }
    }

    draw_bounding_box( frame, peaks);
    */ 
    cvShowImage( "VKeyboard", frame );
    //cvShowImage( "H image", h_img );
    //cvShowImage( "V image", v_img );

    c = cvWaitKey(10);
    switch ( (char) c){
    case 27: // Esc
      break;
    case 13: // Enter
      break;
    case 32: // Space
      break;
    }


  }

  cvReleaseCapture( &capture );
  cvDestroyWindow("VKeyboard");
  //cvDestroyWindow("HSV image");
  //cvDestroyWindow("H image");
  //cvDestroyWindow("S image");
  //cvDestroyWindow("V image");

  return 0;
}
