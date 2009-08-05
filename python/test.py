#!/usr/bin/env python

# TIME LAPSE
#AUTHOR: Sudeep Pillai (email: sudeep.pillai+codefusion@gmail.com)

from opencv.cv import *
from opencv.highgui import *
import sys, os
from time import strftime, localtime

#### Functions ####
def print_help():
    print """
-------------------  BIONIC EYE  ------------------------
 Help - h
 Quit - q
---------------------------------------------------------
"""
def print_usage():
    print "Usage: python test.py"

def get_time():
    str = strftime("%s%d%b%Y_%Hh%Mm%Ss", localtime())
    return str

def rgb2hsv(rgb):
    """Converts a RGB color into a HSV one
    See http://en.wikipedia.org/wiki/HSV_color_space
    """
    r, g, b = rgb[0], rgb[1], rgb[2]
    maximum = max(r, g, b)
    minimum = min(r, g, b)
    if maximum == minimum:
        h = 0.0
    elif maximum == r:
        h = 60.0 * ((g - b) / (maximum - minimum)) + 360.0
        if h >= 360.0:
            h -= 360.0
    elif maximum == g:
        h = 60.0 * ((b - r) / (maximum - minimum)) + 120.0
    elif maximum == b:
        h = 60.0 * ((r - g) / (maximum - minimum)) + 240.0

    if maximum == 0.0:
        s = 0.0
    else:
        s = 1.0 - (minimum / maximum)

    v = maximum

    return int(h), int(100*s), int(v)

def mouse_callback(event, x, y, flags, param):
    global frame, hsv_val, rgb_val, hsv_img    
    if event == CV_EVENT_LBUTTONDOWN:
        #rgb_val = cvGet2D( frame, y, x )
        #print 'R', rgb_val[0], 'G', rgb_val[1], 'B', rgb_val[2]
        #hsv_val = rgb2hsv (rgb_val)
        hsv_val = cvGet2D(hsv_img, y,x)
        #print 'H', hsv_val[0], 'S', hsv_val[1], 'V', hsv_val[2]

##### MAIN INITS #####
process = 'time-lapse'

# Sys Args
if len(sys.argv) <  1:
    print_usage()

# Path
path = "%s/%s" % ( "/Users/sudeep/Code/cv/data/cv", process)
if not os.path.exists(path):
    os.makedirs(path)
    print 'Path created: ', path

print_help()

##### VAR INITS #####
hsv_val = None
rgb_val = None

##### MAIN #####

cvNamedWindow("Camera", CV_WINDOW_AUTOSIZE)
cvNamedWindow("Filtered", CV_WINDOW_AUTOSIZE) 
cvNamedWindow("Filtered_s", CV_WINDOW_AUTOSIZE)
cvNamedWindow("Filtered_v", CV_WINDOW_AUTOSIZE)
cvMoveWindow("Camera", 0,0)
cvMoveWindow("Filtered", 640,0)

# Video
#capture = cvCreateFileCapture (sys.argv[1])
#if not(capture):
#    print 'No capture device found'; exit(1)
#print capture
#frame = cvQueryFrame (capture)

#while 1:
#    frame = cvQueryFrame(capture)
#    cvShowImage('Camera', frame)

#    c = cvWaitKey (10)
#    if c == 'q': break;

# Camera
capture = cvCreateCameraCapture (0)
if not(capture):
    print 'No capture device found';exit(1)
frame = cvQueryFrame (capture)
h_img = cvCreateImage(cvSize(frame.width, frame.height), frame.depth, 1)
s_img, v_img = cvCloneMat(h_img), cvCloneMat(h_img)
hsv_img = cvCloneMat(frame)
filtered_h = cvCloneMat(h_img)
filtered_s = cvCloneMat(h_img)
filtered_v = cvCloneMat(h_img)
filtered = cvCloneMat(h_img)

while 1:
    frame = cvQueryFrame (capture)

    # HSV thresholding
    cvCvtColor( frame, hsv_img, CV_RGB2HSV )
    cvShowImage('Camera', frame)
    cvSplit(hsv_img, h_img, s_img, v_img, None)
    if hsv_val:
        cvInRangeS(h_img, int(hsv_val[0] - 20), int(hsv_val[0] + 20), filtered_h)
        cvInRangeS(s_img, int(hsv_val[1] - 10), int(hsv_val[1] + 10), filtered_s)
        cvInRangeS(v_img, int(hsv_val[2] - 10), int(hsv_val[2] + 10), filtered_v)
        cvAnd(filtered_h, filtered_v, filtered)

    cvSetMouseCallback("Camera", mouse_callback,None)
    #cvShowImage('Camera', frame)
    cvShowImage('Filtered', filtered_h)
    cvShowImage('Filtered_s', filtered_s)
    cvShowImage('Filtered_v', filtered_v)
    c = cvWaitKey(10)
    if c == 'q':break

