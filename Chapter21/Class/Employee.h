//
//  Employee.h
//  Class
//
//  Created by Christian Ramir Lazain on 4/10/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person
{
    int EmployeeID;
    NSMutableSet *assets;
}
@property int EmployeeID;
-(void)addAssetsObject:(Asset *)a;
-(unsigned int)valueOfAssets;
@end
