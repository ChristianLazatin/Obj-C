//
//  main.m
//  NSNotification
//
//  Created by Christian Ramir Lazain on 4/21/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        /*Checks if the user's locale change*/
        [[NSNotificationCenter defaultCenter] addObserverForName:NSCurrentLocaleDidChangeNotification
                                                          object:nil
                                                           queue:nil
                                                      usingBlock:^(NSNotification *note)
                                                                {
                                                                    NSLog(@"The user's locale changed to %@",[[NSLocale currentLocale] localeIdentifier]);
                                                                }];
    }
    return 0;
}

