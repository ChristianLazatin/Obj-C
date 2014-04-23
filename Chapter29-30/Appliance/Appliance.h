//
//  Appliance.h
//  Appliance
//
//  Created by Christian Ramir Lazain on 4/21/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject

@property (copy) NSString *productName;
@property int voltage;

- (id)initWithProductName:(NSString*)pn;

@end
