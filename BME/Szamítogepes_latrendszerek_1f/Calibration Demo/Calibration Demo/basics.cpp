//
//  basics.cpp
//  OpenCV Demo
//
//  Created by Márton Szemenyei on 16/03/15.
//  Copyright (c) 2015 Márton Szemenyei. All rights reserved.
//

#include "basics.h"

//projectPath_ = "/Users/szemenyeim/SZgLEx/Calibration/Images/";

std::string Number2String( int num )
{
	std::ostringstream ss;
	ss.fill( '0' );
	ss.width( 4 );
	ss << num;
	
	return ss.str();
}