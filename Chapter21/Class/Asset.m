//
//  Asset.m
//  Class
//
//  Created by Christian Ramir Lazain on 4/10/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset
@synthesize label, resaleValue, holder;
-(NSString *)description
{
    //Is holder non-nil?
    if ([self holder]) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>",
                [self label], [self resaleValue], [self holder]];
    }
    else{
        return [NSString stringWithFormat:@"<%@: $%d, unassigned>",
                [self label], [self resaleValue]];
    }
}
-(void)dealloc
{
    NSLog(@"deallocating %@", self);
}
@end
