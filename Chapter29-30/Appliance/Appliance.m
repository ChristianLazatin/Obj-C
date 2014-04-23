//
//  Appliance.m
//  Appliance
//
//  Created by Christian Ramir Lazain on 4/21/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

@synthesize productName, voltage;

- (id)init
{
    return [self initWithProductName:@"Unknown"];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts", productName, voltage];
}

- (id)initWithProductName:(NSString *)pn
{
    //Call the NSObject's init method
    self = [super init];
    
    if (self)
    {
        //Give voltage a starting value
        [self setVoltage:120];
        
        //Give the product name
        productName = [pn copy];//[self setProductName:pn];
    }
    
    //Return a pointer to the new object
    return self;
}

@end
