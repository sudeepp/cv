/****************************************************************************
*						AAMLibrary
*			http://code.google.com/p/aam-library
* Copyright (c) 2008-2009 by GreatYao, all rights reserved.
****************************************************************************/

#include "AAM_IC.h"
#include "AAM_Basic.h"

using namespace std;

static void usage()
{
	printf("Usage: train [options] train_path image_ext point_ext cascade_file model_file\n"
	"\noptions:\n"
		"   -t	type of aam (0 aam_basic, 1 aam_ic, default 0)\n"
		"   -p	level of parymid (default 2)\n\n");
	exit(0);
}

int main(int argc, char** argv)
{
	int i;
	int type = TYPE_AAM_BASIC;
	int level = 2;

	for(i = 1; i < argc; i++)
	{
		if(argv[i][0] != '-')break;
		if(++i>=argc)
			usage();
		switch(argv[i-1][1])
		{
		case 't':
			type = atoi(argv[i]);
			break;
		case 'p':
			level = atoi(argv[i]);
			break;
		default:
			fprintf(stderr, "unknown options\n");
			usage();
		}
	}

	if(i+5 != argc)	usage();

	file_lists imgFiles = AAM_Common::ScanNSortDirectory(argv[i], argv[i+1]);
	file_lists ptsFiles = AAM_Common::ScanNSortDirectory(argv[i], argv[i+2]);
	
	printf("Number of points: %i\n Number of images: %i\n", ptsFiles.size(), imgFiles.size());
	if(ptsFiles.size() != imgFiles.size()){
		fprintf(stderr, "ERROR(%s, %d): #Shapes != #Images\n",
			__FILE__, __LINE__);
		exit(0);
	}

	VJfacedetect facedet;
	facedet.LoadCascade(argv[i+3]);
	AAM_Pyramid model;
	model.Build(ptsFiles, imgFiles, type, level);
	model.BuildDetectMapping(ptsFiles, imgFiles, facedet);
	model.WriteModel(argv[i+4]);
	
	return 0;
}
