//
//  registration.cpp
//  OpenCV Demo
//
//  Created by Márton Szemenyei on 17/03/15.
//  Copyright (c) 2015 Márton Szemenyei. All rights reserved.
//

#include "registration.h"

#define KAZE


void TrackObjectsOpticalFlow()
{
	// Read Images
	cv::Mat prev = cv::imread( projectPath_ + "prev.jpg" ), next = cv::imread( projectPath_ + "next.jpg" ), pGray, nGray;
	
	// Resize and convert them
	cv::resize( prev, prev, cv::Size( 640, 480 ) );
	cv::resize( next, next, cv::Size( 640, 480 ) );
	
	cv::cvtColor( prev, pGray, cv::COLOR_BGR2GRAY );
	cv::cvtColor( next, nGray, cv::COLOR_BGR2GRAY );
	
	// The LK algorithm requires a set of interest points to follow
	// We simply set these interest points uniformly across the image
	std::vector< cv::Point2f > interestPoints, nextPoints;
	std::vector< unsigned char > status;
	std::vector< float > error;
	
	// Set interest points
	int dx = 10, dy = 10;
	
	for ( int i ( 0 ); i < prev.cols; i += dx )
	{
		for ( int j( 0 ); j < prev.rows; j += dy )
		{
			interestPoints.push_back( cv::Point2f( i, j ) );
		}
	}
	
	// Run LK optical flow
	cv::calcOpticalFlowPyrLK( pGray, nGray, interestPoints, nextPoints, status, error );
	
	// Draw matches
	for ( int i( 0 ); i < nextPoints.size(); i++ )
	{
		if ( status[ i ] != 0 )
		{
			cv::line(prev, interestPoints[ i ], nextPoints[ i ], cv::Scalar( 255, 0, 0 ) );
		}
	}
	
	cv::imshow( "Flow", prev );
	//cv::waitKey();
	
}

void DetectCorners()
{
	// Read Image, scale and convert it
	cv::Mat img = cv::imread( projectPath_ + "prev.jpg" ), gray;
	cv::resize( img, img, cv::Size( 640, 480 ) );
	cv::cvtColor( img, gray, cv::COLOR_BGR2GRAY );
	
	// Detect Corners using Harris
	std::vector< cv::Point2f > corners;
	cv::goodFeaturesToTrack( gray, corners, 200, 0.01, 4, cv::noArray(), 3, true );
	
	// Draw corners
	for (int i( 0 ); i < corners.size(); i++ )
	{
		cv::circle( img, corners[ i ], 5, cv::Scalar( 0, 0, 255 ) );
	}
	
	cv::imshow( "Corners", img );
	//cv::waitKey();
	
}

void TrackObjectFeatures()
{
	// Read Two Images
	cv::Mat prev = cv::imread( projectPath_ + "prev.jpg" ), next = cv::imread( projectPath_ + "next.jpg" ), pGray, nGray;
	
	// Resize and convert them to gryscale
	cv::resize( prev, prev, cv::Size( 640, 480 ) );
	cv::resize( next, next, cv::Size( 640, 480 ) );
	
	cv::cvtColor( prev, pGray, cv::COLOR_BGR2GRAY );
	cv::cvtColor( next, nGray, cv::COLOR_BGR2GRAY );
	
	// Detect Features using SIFT/ORB/AKAZE
	
#ifndef KAZE
	
	// Use ORB (Oriented FAST and Rotated BRIEF) descriptors
	cv::Ptr< cv::FeatureDetector > detector = cv::ORB::create();
	
#else
	
	// Use Accelerated KAZE descriptors
	cv::Ptr< cv::FeatureDetector > detector = cv::AKAZE::create( cv::AKAZE::DESCRIPTOR_KAZE );
	
#endif
	
	cv::Mat prevDescriptors, nextDescriptors;
	std::vector< cv::KeyPoint > prevPoints, nextPoints;
	std::vector< cv::DMatch > matches;
	
	// Detect features on both images
	detector->detectAndCompute( pGray, cv::noArray(), prevPoints, prevDescriptors );
	detector->detectAndCompute( nGray, cv::noArray(), nextPoints, nextDescriptors );
	
	// Robustly match descriptors either by using a symmetry check or by 2nn method
	bool symmetryCheck = true;
	
#ifndef KAZE
	
	cv::BFMatcher matcher( cv::NORM_HAMMING, symmetryCheck );
	
#else
	
	cv::BFMatcher matcher( cv::NORM_L2, symmetryCheck );
	
#endif
	
	if ( !symmetryCheck )
	{
		// Compute 2 closest Feature matches
		std::vector< std::vector < cv::DMatch > > more_matches;
		matcher.knnMatch( prevDescriptors, nextDescriptors, more_matches, 2 );
		
		std::vector< cv::KeyPoint > newpPoints, newnPoints;
	
		// Filter ambigous matches (where best_distance/second_best_distance < ratio)
		for (int i( 0 ); i < more_matches.size(); i++ )
		{
			if ( more_matches[ i ].size() == 1 || more_matches[ i ][ 0 ].distance / more_matches[ i ][ 1 ].distance < 0.8 )
			{
				// update matches and keypoint vectors
				matches.push_back( cv::DMatch( ( int )newnPoints.size(), ( int )newnPoints.size(), more_matches[ i ][ 0 ].distance ) );
				newpPoints.push_back( prevPoints[ more_matches[ i ][ 0 ].queryIdx ] );
				newnPoints.push_back( nextPoints[ more_matches[ i ][ 0 ].trainIdx ] );
				
			}
		}
		
		// Swap new and old vectors
		newpPoints.swap( prevPoints );
		newnPoints.swap( nextPoints );
		
	
	} else
	{
		// The brute force matches performs symmetry check by default
		matcher.match( prevDescriptors, nextDescriptors, matches );
	
	}
	
	// Draw Matches
	cv::Mat out;
	cv::drawMatches(prev, prevPoints, next, nextPoints, matches, out );
	
	cv::imshow( "Matches", out );
	cv::waitKey();
	
}
