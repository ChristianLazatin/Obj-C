//
//  OwnedAppliance.h
//  Appliance
//
//  Created by Christian Ramir Lazain on 4/21/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import "Appliance.h"
#import "Appliance.h"

@interface OwnedAppliance : Appliance
{
    NSMutableSet *ownerNames;
}

- (id)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n;
- (void)addOwnerNamesObject:(NSString *)n;
- (void)removeOwnerNamesObject:(NSString *)n;

@end
