//
//  main.m
//  Chapter12_Objects
//
//  Created by Christian Ramir Lazain on 4/11/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //Outputs the number of seconds since my birthdate
        NSDate *dateOfBirth = [NSDate dateWithString:@"1991-07-25 00:00:00 +0000"];
        NSDate *now = [NSDate date];
        NSTimeInterval seconds = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"Number of seconds since birth is %f", seconds);
        
    }
    return 0;
}

