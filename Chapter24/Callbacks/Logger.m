//
//  Logger.m
//  Callbacks
//
//  Created by Christian Ramir Lazain on 4/11/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import "Logger.h"

@implementation Logger

- (void)zoneChange:(NSNotification *)note
{
    NSLog(@"The system time zone has changed!");
}

- (void)sayOuch:(NSTimer *)t
{
    NSLog(@"Ouch!");
}

//Called each time a chunk of data arrives
- (void)connection:(NSURLConnection *)connection
    didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
    
    //Create a mutable data if it doesn't already exist
    if (!incomingData) {
        incomingData = [[NSMutableData alloc] init];
    }
    [incomingData appendData:data];
}

//Called when the last chunk has been processed
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");
    
    NSString *string = [[NSString alloc] initWithData:incomingData
                                             encoding:NSUTF8StringEncoding];
    incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
    
    //Uncomment the next line to see the entire fetched file
    //NSLog(@"The while string is %@", string);
}

//Called if the fetch fails
- (void)connection:(NSURLConnection *)connection
  didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    incomingData = nil;
}

@end
