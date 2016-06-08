//
//  main.cpp
//  OpenCV Demo
//
//  Created by Márton Szemenyei on 16/03/15.
//  Copyright (c) 2015 Márton Szemenyei. All rights reserved.
//

#include "calibration.h"
#include "reconstruction.h"
#include "registration.h"


int main ()
{
	
	std::cout << "OpenCV demo program" << std::endl;
	
	std::cout << "Running camera calibration" << std::endl;
	
	CalibrateCameras();

	std::cout << "Camera calibration finished" << std::endl;
	
	std::cout << "Press any key to continue" << std::endl;
	
	std::cin.get();
	
	std::cout << "Running stereo camera calibration" << std::endl;
	
	StereoCalibrate();
	
	std::cout << "Stereo camera calibration finished" << std::endl;
	
	std::cout << "Press any key to continue" << std::endl;
	
	std::cin.get();
	
	std::cout << "Running stereo reconstruction" << std::endl;
	
	ReconstructStereo();
	
	std::cout << "Stereo reconstruction finished" << std::endl;
	
	std::cout << "Press any key to continue" << std::endl;
	
	std::cin.get();
	
	std::cout << "Running optical flow" << std::endl;
	
	TrackObjectsOpticalFlow();
	
	std::cout << "Optical flow finished" << std::endl;
	
	std::cout << "Press any key to continue" << std::endl;
	
	std::cin.get();
	
	std::cout << "Running Harris corner detection" << std::endl;
	
	DetectCorners();
	
	std::cout << "Harris finished" << std::endl;
	
	std::cout << "Press any key to continue" << std::endl;
	
	std::cin.get();
	
	std::cout << "Running ORB/AKAZE feature detection" << std::endl;
	
	TrackObjectFeatures();
	
	std::cout << "ORB/AKAZE finished" << std::endl;
	
	return 0;
	
}
