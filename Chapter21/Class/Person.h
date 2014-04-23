//
//  Person.h
//  Class
//
//  Created by Christian Ramir Lazain on 4/10/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>
// The class Person inherits all the instance variables // and methods defined by the class NSObject
@interface Person : NSObject
{
    // It has two instance variables
    float heightInMeters;
    int weightInKilos;
}
// You will be able to set those instance variables using these methods
- (void)setHeightInMeters:(float)h;
@property float heightInMeters;
- (void)setWeightInKilos:(int)w;
@property int weightInKilos;
// This method calculates the Body Mass Index
- (float)bodyMassIndex;
@end
