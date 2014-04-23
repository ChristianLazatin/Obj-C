//
//  BlenderSpeed.h
//  global
//
//  Created by Christian Ramir Lazain on 4/23/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef  enum{
    BlenderSpeedStir = 1,
    BlenderSpeedChop = 2,
    BlenderSpeedLiquify = 5,
    BlenderSpeedPulse = 9,
    BlenderSpeedIceCrush = 15
}BlenderSpeed;

@interface BlenderSpeed : NSObject
{
    enum BlenderSpeed speed;
}

- (void)setSpeed:(enum BlenderSpeed)x;

@end
