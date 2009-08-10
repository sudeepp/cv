
#include "AAM_IC.h"
#include "AAM_Basic.h"
#include "AAM_MovieAVI.h"
#include "VJfacedetect.h"

using namespace std;

static void usage()
{
	printf("Usage: fit model_file cascade_file (image/video)_file\n");
	exit(0);
}

int main(int argc, char** argv)
{

	AAM_Pyramid model;
	model.ReadModel(argv[1]);
	VJfacedetect facedet;
	facedet.LoadCascade(argv[2]);

	char str[64];
	int iter = 0;
	cvNamedWindow("Fitting");
	IplImage* image;
		
	while (iter < 1000){
	  sprintf(str, "%s_%04d.pgm", "../../../visionext/trunk/BioID/BioID", iter);
	  image = cvLoadImage(str, 0);
	  AAM_Shape Shape;
	  bool flag = flag = model.InitShapeFromDetBox(Shape, facedet, image);
	  if(flag == false) {
	    fprintf(stderr, "The image doesn't contain any faces\n");
	    exit(0);
	  }
	  model.Fit(image, Shape, 30, true);
	  model.Draw(image, Shape, 2);
		
	  cvShowImage("Fitting", image);
	  int c = cvWaitKey(0);
	  if (c == 1048603) // dont ask
	    break;
	  if (c == 1048686){
	    iter++;
	  }
	}
	

	cvReleaseImage(&image);	

	return 0;
}
