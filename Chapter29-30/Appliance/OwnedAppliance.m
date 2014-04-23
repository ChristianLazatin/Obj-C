//
//  OwnedAppliance.m
//  Appliance
//
//  Created by Christian Ramir Lazain on 4/21/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import "OwnedAppliance.h"

@implementation OwnedAppliance

- (id)initWithProductName:(NSString *)pn
{
    return [self initWithProductName:pn firstOwnerName:nil];
}

- (id)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n
{
    //Call the superclass' initializer
    self = [super initWithProductName:pn];
    
    if(self)
    {
        //Make a set to hold owner names
        ownerNames = [[NSMutableSet alloc] init];
        
        //Is the first owner name non-nill?
        if (n) {
            [ownerNames addObject:n];
        }
    }
    //Return a pointer to the new object
    return self;
}

-(void)addOwnerNamesObject:(NSString *)n
{
    [ownerNames addObject:n];
}

-(void)removeOwnerNamesObject:(NSString *)n
{
    [ownerNames removeObject:n];
}

@end
