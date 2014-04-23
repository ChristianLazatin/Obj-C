//
//  main.m
//  Appliance
//
//  Created by Christian Ramir Lazain on 4/21/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Appliance *a = [[Appliance alloc] init];
        NSLog(@"a is %@", a);
        //[a setProductName:@"Washing Machine"];
        [a setValue:@"Washing Machine" forKey:@"productName"];
        [a setVoltage:240];
        NSLog(@"a is %@", a);
        
        NSLog(@"the product name is %@", [a valueForKey:@"productName"]);
        
    }
    return 0;
}

