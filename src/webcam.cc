//#ifdef _CH_
//#pragma package <opencv>
//#endif

//#define CV_NO_BACKWARD_COMPATIBILITY

//#ifndef _EiC
#include "cv.h"
#include "highgui.h"
#include <stdio.h>
#include <ctype.h>
//#endif

IplImage *image = 0;


int main( int argc, char** argv )
{
 
  CvCapture* capture = cvCaptureFromCAM( 0 );
  int c;
  if( !capture ){
    fprintf(stderr,"Could not initialize capturing...\n");
    return -1;
  }

  cvNamedWindow( "CamShiftDemo", 1 );
  IplImage* frame = 0;
   
  while(1)
    {

      frame = cvQueryFrame( capture );
      if( !frame )
	break;

      cvShowImage( "CamShiftDemo", frame );

      c = cvWaitKey(10);
      if( (char) c == 27 )
	break;
    }

  cvReleaseCapture( &capture );
  cvDestroyWindow("CamShiftDemo");

  return 0;
}

//#ifdef _EiC
//main(1,"camshiftdemo.c");
//#endif
