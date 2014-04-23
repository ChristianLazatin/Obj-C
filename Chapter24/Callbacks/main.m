//
//  main.m
//  Callbacks
//
//  Created by Christian Ramir Lazain on 4/11/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Logger *logger = [[Logger alloc] init];
        //This part is for the timer
        [[NSNotificationCenter defaultCenter]
         addObserver:logger
            selector:@selector(zoneChange:)//Displays "The system time zone has changed" string
                name:NSSystemTimeZoneDidChangeNotification
              object:nil];
        //This part is commented to see the result of the timer
        //This block gets data from the given URL
        /*NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        __unused NSURLConnection * fetchConn
        =[[NSURLConnection alloc] initWithRequest:request
                                         delegate:logger
                                 startImmediately:YES];*/
        
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                          target:logger
                                                        selector:@selector(sayOuch:)
                                                        userInfo:nil
                                                         repeats:YES];
        //Start the loop
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}

