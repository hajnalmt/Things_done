//
//  main.cpp
//  Calibration Demo
//
//  Created by Márton Szemenyei on 15/03/15.
//  Copyright (c) 2015 Márton Szemenyei. All rights reserved.
//


#include "calibration.h"

using namespace std;

void CalibrateCameras()
{
	vector< cv::Mat > images;
	
	cout << "Reading Images" << endl;
	
	int cntr = 0;
	
	// Reading all the images
	while ( true ) {
		images.push_back( cv::imread( projectPath_  + Number2String( (++cntr)++ ) + ".png" ) );
		if( images.back().data == 0 )
		{
			images.pop_back();
			break;
		}
		
		// Optional: don't read all the images (takes a lot of time to calibrate with 80 images)
		else if ( cntr > 40 ) {
			//break;
		}
	}
	
	cout << "Getting Chessboard corners" << endl;
	
	// Chessboard pattern size
	int sizeX = 9, sizeY = 6;
	
	// Vectors for points in the images and scenes
	std::vector< std::vector< cv::Point2f > > imgPts;
	std::vector< std::vector< cv::Point3f > > scenePts;
	
	for ( int i( 0 ); i < ( int )images.size(); i++ )
	{
		std::vector< cv::Point2f > cornerPts;
		std::vector< cv::Point3f > scenePtsT;
		
		// Find chessboard corners
		if ( cv::findChessboardCorners( images[ i ], cv::Size( sizeX, sizeY ), cornerPts, cv::CALIB_CB_ADAPTIVE_THRESH + cv::CALIB_CB_NORMALIZE_IMAGE
									   ) )
		{
			
			cv::Mat temp;
			cv::cvtColor(images[ i ], temp, cv::COLOR_BGR2GRAY );
			
			// Subpixel accuracy refinement
			cv::cornerSubPix(temp, cornerPts, cv::Size( sizeX, sizeY ), cv::Size(-1, -1),
							 cv::TermCriteria::TermCriteria( cv::TermCriteria::EPS + cv::TermCriteria::MAX_ITER , 10000, 0.000001 ) );
			
			
			// Display chessboard corners
			cv::drawChessboardCorners( images[ i ], cv::Size( sizeX, sizeY ), cornerPts, true );
			cv::imshow( "Chess", images[ i ] );
			cv::waitKey();
			
			// Add scene coordinates for patterns
			for ( int y( 0 ); y < sizeY; y++ )
			{
				for( int x( 0 ); x < sizeX; x++ )
				{
					// The Z coordinate is always zero
					scenePtsT.push_back( cv::Point3f( x, y, 0 ) );
					
				}
			}
			
			// Add correspondences from the current frame to the vector
			imgPts.push_back( cornerPts );
			scenePts.push_back( scenePtsT );
		}
		
	}
	
	cout << "Calibrating Camera" << endl;
	
	// Camera matrix and distorition coefficients
	cv::Mat A( cv::Matx33f( 1, 0, ( images[ 0 ].cols - 1 ) / 2,
						    0, 1, ( images[ 0 ].rows -1 ) / 2,
						    0, 0, 1) ), k;
	
	// External parameters for every shot
	std::vector< cv::Mat > Rs, Ts;
	
	// Calibration
	float err = cv::calibrateCamera( scenePts, imgPts, images[ 0 ].size(), A, k, Rs, Ts, cv::CALIB_FIX_ASPECT_RATIO + cv::CALIB_FIX_PRINCIPAL_POINT + cv::CALIB_ZERO_TANGENT_DIST );
	
	cout << "Calibration Completed! Squared Geometric Error: " << err << endl;
	
	cv::Mat undist;
	
	// Undistort first image
	cv::undistort( images[ 0 ], undist, A, k );
	
	cv::imshow( "Undistorted", undist );
	cv::imshow( "Original", images[ 0 ] );
	cv::imwrite(projectPath_ + "udi.png", undist );
	//cv::waitKey();
	
	cout << "Saving Results" << endl;
	
	cout << "Camera Matrix: " << A << endl;
	
	cout << "Distorition coefficients: " << k << endl;
	
	cv::FileStorage fs( projectPath_ + "camera.yml", cv::FileStorage::WRITE );
	fs << "A" << A;
	fs << "k" << k;
	fs.release();
	
}

void StereoCalibrate()
{
	vector< cv::Mat > lImages, rImages;
	
	cout << "Reading Images" << endl;
	
	int cntr = 1;
	
	// Read all the images
	while ( true ) {
		
		rImages.push_back( cv::imread( projectPath_ + Number2String( cntr ) + ".png" ) );
		lImages.push_back( cv::imread( projectPath_ + "r" + Number2String( ( cntr ) ) + ".png" ) );
		cntr++;
		
		if( lImages.back().data == 0 )
		{
			lImages.pop_back();
			break;
		}
		
		// Optional: read the first few images only
		else if ( cntr > 3 ) {
			break;
		}
	}
	
	cout << "Getting Chessboard corners" << endl;
	
	// Chessboard pattern size
	int sizeX = 9, sizeY = 6;
	
	// Vectors for points in the images and scenes
	std::vector< std::vector< cv::Point2f > > lImgPts, rImgPts;
	std::vector< std::vector< cv::Point3f > > scenePts;
	
	for ( int i( 0 ); i < ( int )lImages.size(); i++ )
	{
		std::vector< cv::Point2f > lCornerPts;
		std::vector< cv::Point2f > rCornerPts;
		std::vector< cv::Point3f > scenePtsT;
		
		// Find chessboard corners for both images
		if ( cv::findChessboardCorners( lImages[ i ], cv::Size( sizeX, sizeY ), lCornerPts, cv::CALIB_CB_ADAPTIVE_THRESH + cv::CALIB_CB_NORMALIZE_IMAGE
									   ) &&
			cv::findChessboardCorners( rImages[ i ], cv::Size( sizeX, sizeY ), rCornerPts, cv::CALIB_CB_ADAPTIVE_THRESH + cv::CALIB_CB_NORMALIZE_IMAGE
									  ))
		{
			// Display chessboard corners
			cv::Mat temp, tempr;
			cv::cvtColor(lImages[ i ], temp, cv::COLOR_BGR2GRAY );
			cv::cvtColor(rImages[ i ], tempr, cv::COLOR_BGR2GRAY );
			
			// Subpixel accuracy refinement
			cv::cornerSubPix(temp, lCornerPts, cv::Size( sizeX, sizeY ), cv::Size(-1, -1),
							 cv::TermCriteria::TermCriteria( cv::TermCriteria::EPS + cv::TermCriteria::MAX_ITER , 10000, 0.000001 ) );
			cv::cornerSubPix(tempr, rCornerPts, cv::Size( sizeX, sizeY ), cv::Size(-1, -1),
							 cv::TermCriteria::TermCriteria( cv::TermCriteria::EPS + cv::TermCriteria::MAX_ITER , 10000, 0.000001 ) );
			
			
			// Display chessboard corners
			/*cv::drawChessboardCorners( temp, cv::Size( sizeX, sizeY ), lCornerPts, true );
			cv::imshow( "Chess", temp );
			cv::waitKey();*/
			
			// Add scene coordinates for patterns
			for ( int y( 0 ); y < sizeY; y++ )
			{
				for( int x( 0 ); x < sizeX; x++ )
				{
					// The Z coordinate is always zero
					scenePtsT.push_back( cv::Point3f( x, y, 0 ) );
					
				}
			}
			
			// Add correspondences from the current frame to the vector
			lImgPts.push_back( lCornerPts );
			rImgPts.push_back( rCornerPts );
			scenePts.push_back( scenePtsT );
		}
		
	}
	
	// Camera matrices and distorition coefficients, R, t, Fundamental and Essential matrices
	cv::Mat A1, A2, k1, k2, R, t, E, F;
	
	std::vector< cv::Mat > Rs, Ts;
	
	cout << "Running Stereo Calibration" << endl;
	
	// Read previous calibration results.
	cv::FileStorage tempFs( projectPath_ + "camera.yml", cv::FileStorage::READ );
	tempFs[ "A" ] >> A1;
	tempFs[ "k" ] >> k1;
	A2 = A1.clone();
	k2 = k1.clone();
	
	// Calibration
	float err = cv::stereoCalibrate( scenePts, lImgPts, rImgPts, A1, k1, A2, k2, lImages[ 0 ].size(), R, t, E, F, cv::CALIB_FIX_INTRINSIC );
	
	cout << "Calibration Completed! Squared Geometric Error: " << err << endl;
	
	cout << "Computing Rectification transform" << endl;
	
	cv::Mat R1, R2, t1, t2, P1, P2, Q, mx1, my1, mx2, my2;
	
	cv::stereoRectify( A1, k1, A2, k2, lImages[ 0 ].size(), R, t, R1, R2, P1, P2, Q );
	
	// Create undistortion & rectification map
	cv::initUndistortRectifyMap( A1, k1, R1, P1, lImages[ 0 ].size(), CV_16SC2, mx1, my1 );
	cv::initUndistortRectifyMap( A2, k2, R2, P2, lImages[ 0 ].size(), CV_16SC2, mx2, my2 );
	
	cv::Mat undist1, undist2;
	
	// Recity first image
	cv::remap(lImages[ 0 ], undist1, mx1, my1, cv::INTER_CUBIC );
	cv::remap(rImages[ 0 ], undist2, mx2, my2, cv::INTER_CUBIC );
	
	cv::imshow( "Rectified1", undist1 );
	cv::imshow( "Rectified2", undist2 );
	//cv::waitKey();
	
	cout << "Saving Results" << endl;
	
	cv::FileStorage fs( projectPath_  + "cameraData.yml", cv::FileStorage::WRITE );
	
	// Intrinsic parameters
	fs << "A1" << A1;
	fs << "A2" << A1;
	fs << "k1" << k1;
	fs << "k2" << k1;
	
	// Extrinsic / Stereo Parameters
	fs << "R" << R;
	fs << "t" << t;
	fs << "E" << E;
	fs << "F" << F;
	
	// Rectification transforms
	fs << "R1" << R1;
	fs << "R2" << R2;
	
	// Rectified Projection matrices
	fs << "P1" << P1;
	fs << "P2" << P2;
	
	// Undistort + rectify maps
	fs << "mx1" << mx1;
	fs << "mx2" << mx2;
	fs << "my1" << my1;
	fs << "my2" << my2;
	
	// Stereo mapping matrix:
	// [ X ]       [ x ]
	// [ Y ] = Q * [ y ]
	// [ Z ]       [ d ]
	// Only works for rectified images
	fs << "Q" << Q;
	fs.release();

}


