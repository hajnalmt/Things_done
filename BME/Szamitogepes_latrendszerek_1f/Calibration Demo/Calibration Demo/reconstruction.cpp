//
//  reconstruction.cpp
//  OpenCV Demo
//
//  Created by Márton Szemenyei on 16/03/15.
//  Copyright (c) 2015 Márton Szemenyei. All rights reserved.
//

#include "reconstruction.h"



void ReconstructStereo()
{
	// Load stereo images
	cv::Mat left, right;
	
	left = cv::imread( projectPath_ + "r0001.png" );
	right = cv::imread( projectPath_ + "0001.png" );
	
	// Resize and convert them to graysclae
	cv::resize( left, left, cv::Size( 960, 540 ) );
	cv::resize( right, right, cv::Size( 960, 540 ) );
	
	cv::cvtColor( left, left, cv::COLOR_BGR2GRAY );
	cv::cvtColor( right, right, cv::COLOR_BGR2GRAY );
	
	// Load Camera matrices
	cv::FileStorage fs( projectPath_ + "cameraData.yml", cv::FileStorage::READ );
	cv::Mat A1, A2;
	fs[ "A1" ] >> A1;
	fs[ "A2" ] >> A2;
	
	// Load Rectification transforms
	cv::Mat mx1, my1, mx2, my2;
	fs[ "mx1" ] >> mx1;
	fs[ "my1" ] >> my1;
	fs[ "mx2" ] >> mx2;
	fs[ "my2" ] >> my2;
	
	// Load R and t and Q
	cv::Mat R, t, Q;
	fs[ "R" ] >> R;
	fs[ "t" ] >> t;
	fs[ "Q" ] >> Q;
	
	
	// Rectify images
	cv::Mat undiLeft, undiRight, disp;
	cv::remap( left, undiLeft, mx1, my1, cv::INTER_CUBIC );
	cv::remap( right, undiRight, mx2, my2, cv::INTER_CUBIC );
	
	cv::imshow( "Left", undiLeft );
	cv::imshow( "Right", undiRight );
	//cv::waitKey();
	
	// Compute disparity
	// SGBM
	cv::Ptr< cv::StereoSGBM > sgbm = cv::StereoSGBM::create( 30, 64, 9, 500, 2000, 50, 22, 5, 0, 0, cv::StereoSGBM::MODE_HH );

	sgbm->compute( undiLeft, undiRight, disp );
	
	cv::Mat visibleDisp;
	
	cv::normalize( disp, visibleDisp, 0, 255, cv::NORM_MINMAX, CV_8U );
	
	cv::imwrite( projectPath_ + "disp.jpg", disp );
	
	cv::imshow( "Disparity", visibleDisp );
	//cv::waitKey();
	
	
	// Reproject image to 3D with Q matrix
	cv::Mat cloud;
	cv::reprojectImageTo3D( disp, cloud, Q );
	
	std::ofstream file( projectPath_ + "cloud.txt", std::ios::out );
	file << cloud;
	
	
#ifdef __PCL__
	
	pcl::PointCloud<pcl::PointXYZ>::Ptr pCloud ( new pcl::PointCloud< pcl::PointXYZ > );
	
	for( int i( 0 ); i < cloud.rows; i++ )
	{
		float *cPtr = cloud.ptr< float >( i );
		
		for (int j( 0 ); j < cloud.cols; j++ )
		{
			pCloud->push_back( pcl::PointXYZ( cPtr[ 3 * j ], cPtr[ 3 * j + 1 ], cPtr[ 3 * j + 2 ] ) );
			
		}
	}
	
	pcl::visualization::CloudViewer simpleCV( "Cloud Viewer" );
	simpleCV.showCloud( pCloud );
	while ( !simpleCV.wasStopped() ) {
		
	}
	
#else

	cv::viz::Viz3d myWindow("Viz Demo");

	
    cv::viz::Viz3d sameWindow = cv::viz::getWindowByName("Viz Demo");

	sameWindow.spinOnce(1, true);
    while(!sameWindow.wasStopped())
    {
            /// Interact with window

            /// Create a cloud widget
            cv::viz::WCloud cw(cloud, cv::viz::Color::red());
            /// Display it in a window
            myWindow.showWidget("CloudWidget1", cw);

            /// Event loop for 1 millisecond
            sameWindow.spinOnce(1, true);
     }
	
#endif
	
}
