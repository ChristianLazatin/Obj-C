//
//  main.m
//  Chapter_14
//
//  Created by Christian Ramir Lazain on 4/11/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //Prints out the name of your computer
        NSHost *myCompInfo = [NSHost currentHost];
        NSString *localCompName = [myCompInfo localizedName];
        NSLog(@"The local name of my computer is %@", localCompName);
        
    }
    return 0;
}

