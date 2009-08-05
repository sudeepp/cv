#!/usr/bin/env python

# TIME LAPSE
#AUTHOR: Sudeep Pillai (email: sudeep.pillai+codefusion@gmail.com)

from numpy import *
from random import *
from opencv.cv import *
from opencv.highgui import *
import sys, os
from time import strftime, localtime

#### Functions ####
def print_help():
    print """
-------------------  VIRTUAL KEYBOARD  ------------------------
 Help - h
 Quit - Esc
---------------------------------------------------------
"""
def print_usage():
    print "Usage: python test.py"

def get_time():
    str = strftime("%s%d%b%Y_%Hh%Mm%Ss", localtime())
    return str
def draw_keyboard():
    cvLine(

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
    global hsv_val, hsv_img, pks
    if event == CV_EVENT_LBUTTONDOWN:
        print 'Appending', x, y
        pks.append((x,y))
    hsv_val = cvGet2D(hsv_img, y,x)

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
    
def color_thresh_filter(hsv):
    print 'test'

##### MAIN INITS #####
process = 'vkeybd'

# Sys Args
if len(sys.argv) <  1:
    print_usage()

print_help()

##### MAIN #####
# Camera
capture = cvCreateCameraCapture (0)
if not(capture):
    print 'No capture device found';exit(1)

cvNamedWindow('Cam', CV_WINDOW_AUTOSIZE)

while 1:
    frame = cvQueryFrame(capture)
    cvShowImage('Cam', frame)
    c = cvWaitKey(5)
    if '\x1b' == c : break
