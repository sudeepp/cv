/****************************************************************************
*						AAMLibrary
*			http://code.google.com/p/aam-library
* Copyright (c) 2008-2009 by GreatYao, all rights reserved.
****************************************************************************/

#ifndef AAM_UTIL_H
#define AAM_UTIL_H

#include <vector>
#include <string>
#include <iostream>
#include <fstream>

#include "opencv/cv.h"
#include "opencv/highgui.h"

#include "AAM_Shape.h"
#include "VJfacedetect.h"

#ifndef byte
#define byte unsigned char
#endif

#define TYPE_AAM_BASIC	0
#define TYPE_AAM_IC		1

#define gettime cvGetTickCount() / (cvGetTickFrequency()*1000.)

typedef std::vector<std::string> file_lists;

std::ostream& operator<<(std::ostream &os, const CvMat* mat);

std::istream& operator>>(std::istream &is, CvMat* mat);

class AAM_PAW;

class AAM_Common
{
public:
	static file_lists ScanNSortDirectory(const std::string &path, 
		const std::string &extension);

	//is the current shape within the image boundary?
	static void CheckShape(CvMat* s, int w, int h);

	static void DrawPoints(IplImage* image, const AAM_Shape& Shape);

	static void DrawTriangles(IplImage* image, const AAM_Shape& Shape, 
		const std::vector<std::vector<int> >&tris);
	
	static void DrawAppearance(IplImage*image, const AAM_Shape& Shape,
		const CvMat* t, const AAM_PAW& paw, const AAM_PAW& refpaw);

};

//virtual class for Active Appearance Model
class AAM
{
public:
	AAM();
	virtual ~AAM() = 0;

	virtual const int GetType()const = 0;

	//Build aam model
	virtual void Build(const file_lists& pts_files, 
		const file_lists& img_files, double scale = 1.0) = 0;
	
	//Fit the image using aam 
	virtual void Fit(const IplImage* image, AAM_Shape& Shape, 
		int max_iter = 30, bool showprocess = false) = 0;

	//set search parameters zero
	virtual void SetAllParamsZero() = 0;

	//init search parameters 
	virtual void InitParams(const IplImage* image) = 0;

	//Draw the image according search result
	virtual void Draw(IplImage* image, const AAM_Shape& Shape, int type) = 0;

	// Read data from stream 
	virtual void Read(std::ifstream& is) = 0;

	// write data to stream
	virtual void Write(std::ofstream& os) = 0;

	//Get Mean Shape of model
	virtual const AAM_Shape GetMeanShape()const = 0;
};

class AAM_Pyramid
{
public:
	AAM_Pyramid();
	~AAM_Pyramid();
	
	// Build Multi-Resolution Active Appearance Model
	void Build(const file_lists& pts_files, const file_lists& img_files,
		int type = TYPE_AAM_IC, int level = 1);

	// Doing image alignment
	void Fit(const IplImage* image, AAM_Shape& Shape, 
		int max_iter = 30, bool showprocess = false);

	// Build mapping relation between detect box and shape
	void BuildDetectMapping(const file_lists& pts_files, 
		const file_lists& img_files, VJfacedetect& facedetect,
		double refWidth = 100);

	// Init shape from the mapping  
	bool InitShapeFromDetBox(AAM_Shape& Shape, VJfacedetect& facedetect, 
		const IplImage* image);

	// Write aam to file
	void WriteModel(const std::string& filename);

	// Read aam from file
	void ReadModel(const std::string& filename);

	//Draw the image according search result
	void Draw(IplImage* image, const AAM_Shape& Shape, int type);

	//Get Mean Shape of model
	const AAM_Shape GetMeanShape()const;
	
private:
	std::vector<AAM*>	__model;
	AAM_Shape			__VJDetectShape;
	double				__referenceWidth;

};

#endif // AAM_UTIL_H
