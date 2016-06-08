//
//  basics.h
//  OpenCV Demo
//
//  Created by Márton Szemenyei on 16/03/15.
//  Copyright (c) 2015 Márton Szemenyei. All rights reserved.
//

//#define __PCL__

#ifndef __OpenCV_Demo__basics__
#define __OpenCV_Demo__basics__


#include <iostream>
#include <string>
#include <strstream>
#include <fstream>
#include <stdio.h>


#include <opencv2/opencv.hpp>
#include <opencv2/calib3d/calib3d.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/features2d/features2d.hpp>

#ifdef __PCL__

#include <pcl/pcl_base.h>
#include <pcl/point_cloud.h>
#include <pcl/visualization/cloud_viewer.h>

#else

#include <opencv2/viz/vizcore.hpp>

#endif

std::string Number2String( int num );

const std::string projectPath_ = "Images/";

#endif /* defined(__OpenCV_Demo__basics__) */
