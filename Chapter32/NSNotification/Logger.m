//
//  Logger.m
//  NSNotification
//
//  Created by Christian Ramir Lazain on 4/21/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import "Logger.h"

@implementation Logger

- (void)zoneChange:(NSNotification *)note
{
    NSLog(@"The system time zone has changed");
}

@end
