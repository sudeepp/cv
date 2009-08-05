#!/usr/bin/env python

from numpy import *
from random import *
from filters import *
from opencv_utils import *
from highgui import *
from cv import *
import time
from math import pow
from qt_utils import *
import sys

def mouse_callback ( event, x, y, flags, param):
    # Camera video feed
    global hsv_img, hsv_val
    hsv_val = cvGet2D(hsv_img, y, x)

def mouse_callback2 ( event, x, y, flags, param):
    # Reference image
    global pks
    # Polygon test
    #if len(pks)>3:
    #    print in_polygon(pks, (x,y))
    if event == CV_EVENT_LBUTTONDOWN:
        print 'Appending ', x, y
        pks.append((x,y))

def in_polygon(pks, pt):
    j = len(pks) - 1
    inPoly = False
    x, y = pt[0], pt[1]

    for i in range(0, len(pks)):
        if pks[i][0] < x and pks[j][0] >= x or pks[j][0] < x and pks[i][0] >= x:
            if pks[i][1] + ( x - pks[i][0] )/(pks[j][0] - pks[i][0])*(pks[j][1] - pks[i][1]) < y :
                inPoly = not inPoly
        j = i

    return inPoly

def calibrate_polygon(pks, hsv_img):
    global pts, s_pts, t_pts
    for i in range(0, hsv_img.width):
        for j in range(0, hsv_img.height):
            if in_polygon(pks, (i, j)):
                handv = cvGet2D( hsv_img, j, i)
                pts.append((handv[0], handv[2]))

    if len(pts) < 1000:
        print 'Not enough calibration points'
        exit(1)
        pts = []
    else:
        data = sample(pts, 1000)
        perc_train = 0.8
        num_train = int(len(data)*perc_train)
        t_pts = data[0:num_train] #train data
        s_pts = data[num_train + 1: len(data)] #test data
        #calibrated = True
        print 'Calibration pixels sampled'

    return s_pts, t_pts

def write_to_file(file, sample, ch):
    for i in range(0,len(sample)):
        if ch == 'b':
            buf = "%i ,%i ,-1;\n" % (sample[i][0], sample[i][1])
        elif ch == 'g':
            buf = "%i ,%i ,+1;\n" % (sample[i][0], sample[i][1])
        file.write(buf)
    #file.close()
    print 'Data written to ', file.name
    
#### MAIN ####
if len(sys.argv) == 2:
    if sys.argv[1] == 'debug':
        debug = 1
        print ' #### DEBUG MODE ####'
    else:
        debug = 0
else:
    debug = 0

# HSV TRESHOLD
ColorThreshFilter = FilterFunc("color-thresh")

img,hdr = VideoIn(blocking = True)
init_ref = cvCloneMat(img)
init_ref = scale_image(img, 640, 480)
init_ref = convert_color(init_ref)
ref = cvCloneMat(init_ref)

h_img = cvCreateImage(cvSize(img.width, img.height),img.depth, 1)
s_img = cvCreateImage(cvSize(img.width, img.height),img.depth, 1)
v_img = cvCreateImage(cvSize(img.width, img.height),img.depth, 1)
h_img = scale_image(h_img,640,480)
s_img, v_img = cvCloneMat(h_img), cvCloneMat(h_img)

hsv_img = cvCloneMat(init_ref)
cvCvtColor( init_ref, hsv_img, CV_RGB2HSV)


filtered_h, filtered_s, filtered_v = cvCloneMat(h_img), cvCloneMat(h_img), cvCloneMat(h_img)
filtered = cvCloneMat(h_img)

cvNamedWindow("Color", CV_WINDOW_AUTOSIZE)
cvSetMouseCallback( "Color", mouse_callback, None)
cvNamedWindow("Reference", CV_WINDOW_AUTOSIZE)
cvSetMouseCallback( "Reference", mouse_callback2, None)
#cvCreateTrackbar("Low", "Color", 0,180, h_low)
#cvCreateTrackbar("High", "Color", 0,180, h_high)

hsv_val = None
pks, pksval = [], [] # points physically selected for calibration
pts, s_pts, t_pts = [], [], [] # all pixels within polygon, sample pixels, and their h & v values

hval_low, hval_high = 30, 150
hv_peaks = []
calibrated = False

filtered, hdr = ColorThreshFilter(hsv_img, hdr)
training_file = open("balltrain.train", "w")
test_file = open("balltrain.test", "w")
debug_show(filtered,4)

while 1:
    if calibrated:
        img,hdr = VideoIn(blocking = True)
        img = scale_image(img,640,480)
        rgb_img = make_color_image(img)
        rgb_img = convert_color(rgb_img)
        hsv_img = cvCloneMat(img)

        cvCvtColor( rgb_img, hsv_img, CV_RGB2HSV)

        # COLOR THRESHOLDING
        #cvSplit(hsv_img, h_img, s_img, v_img, None)
        filtered, hdr = ColorThreshFilter(hsv_img, hdr)
        image_show(filtered, "H & V", 5)


        #if hsv_val:
        #    cvInRangeS(h_img, int(hsv_val[0] - 5), int(hsv_val[0] + 5), filtered_h)
        #    cvInRangeS(s_img, int(hsv_val[1] - 10), int(hsv_val[1] + 10), filtered_s)
        #    cvInRangeS(v_img, int(hsv_val[2] - 10), int(hsv_val[2] + 10), filtered_v)

        cvMoveWindow("Color", 0,0)
        cvShowImage("Color", rgb_img)
        #image_show(filtered_h, "H", 5)
        #image_show(filtered_s, "S", 5)
        #image_show(filtered_v, "V", 5)    

        cvMoveWindow("H & V", 640, 0)
        #cvMoveWindow("H", 640, 0)
        #cvMoveWindow("V", 640,500)
        #cvMoveWindow("S", 1800, 0)
        cvMoveWindow("Reference", 0, 500)
        c = cvWaitKey(10)
        
    if not calibrated:
        c = cvWaitKey(50)
    
    # DRAWING
    for i in range(0,len(pks)):
        cvCircle(ref,(pks[i][0],pks[i][1]),2,CV_RGB(0,255,0),1)

    if len(pks) > 1:
        for i in range(1, len(pks)):
            cvLine(ref, cvPoint(pks[i-1][0], pks[i-1][1]), cvPoint(pks[i][0], pks[i][1]), CV_RGB(0,240, 0), 1, 4)
            
    cvShowImage("Reference", ref)
    
    if '\x1b' == c :
        test_file.close()
        training_file.close()
        break
    elif 'd' == c :
        if len(pks)>0:
            pks.pop()
        ref = cvCloneMat(init_ref)
        print 'Peaks', pks

    elif 'g' == c:
        print 'Calibrating good pixels ...\n'
        test_data, training_data = calibrate_polygon(pks, hsv_img)
        write_to_file(training_file, training_data, 'g')
        write_to_file(test_file, test_data, 'g')
    elif 'b' == c:
        print 'Calibrating bad pixels ...\n'
        test_data, training_data = calibrate_polygon(pks, hsv_img)
        write_to_file(training_file, training_data,'b')
        write_to_file(test_file, test_data, 'b')
    elif 'r' == c:
        print 'Refreshing..'
        pks = []
        ref = cvCloneMat(init_ref)
    elif 'x' == c:
        print 'Running..'
        calibrated = True
