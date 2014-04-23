//
//  Logger.h
//  Callbacks
//
//  Created by Christian Ramir Lazain on 4/11/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject
{
    NSMutableData *incomingData;
}
- (void)sayOuch:(NSTimer *)t;
- (void)zoneChange:(NSNotification *)note;
@end
