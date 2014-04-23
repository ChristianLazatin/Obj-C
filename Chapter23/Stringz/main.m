//
//  main.m
//  Stringz
//
//  Created by Christian Ramir Lazain on 4/11/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //Check for errors
        NSError *error = nil;
        NSMutableString *str =[[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Aaron is cool!\n"];
        }
        BOOL success = [str writeToFile:@"/tmp/cool.txt" atomically:YES
                encoding:NSUTF8StringEncoding error:&error];
        if (success)
            NSLog(@"done writing /tmp/cool.txt");
        else
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        
    }
    return 0;
}

