//
//  main.m
//  Chapter13
//
//  Created by Christian Ramir Lazain on 4/11/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //Tells if it is currently day light savings time
        NSTimeZone *currentTimeZone = [NSTimeZone systemTimeZone];
        if ([currentTimeZone isDaylightSavingTime]) {
            NSLog(@"IT IS CURRENTLY DAYLIGHT SAVINGS TIME");
        } else {
            NSLog(@"CURRENTLY, IT IS NOT DAYLIGHT SAVINGS TIME");
        }
        
    }
    return 0;
}

