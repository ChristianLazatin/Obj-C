//
//  Asset.h
//  Class
//
//  Created by Christian Ramir Lazain on 4/10/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee;

@interface Asset : NSObject
{
    NSString *label;
    unsigned int resaleValue;
    __weak Employee *holder;
}
@property (strong) NSString *label;
@property (weak) Employee *holder;
@property unsigned int resaleValue;
@end
