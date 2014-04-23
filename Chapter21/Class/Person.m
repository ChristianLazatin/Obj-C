//
//  Person.m
//  Class
//
//  Created by Christian Ramir Lazain on 4/10/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import "Person.h"

@implementation Person

/*-(float)heightInMeters
{   return heightInMeters;  }
-(int)weightInKilos
{   return weightInKilos;    }
- (void)setHeightInMeters:(float)h
{
    heightInMeters = h;
}
- (void)setWeightInKilos:(int)w
{
    weightInKilos = w;
}
*/
@synthesize heightInMeters, weightInKilos;
- (float)bodyMassIndex
{
    return weightInKilos / (heightInMeters * heightInMeters);
}
@end
