//
//  main.m
//  bitwise
//
//  Created by Christian Ramir Lazain on 4/16/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        /*Every other bit is turned on, odd number*/
        
        unsigned long long a = 1;
        
        for (int i = 0; i < 32; ++i) {
            
            // Left shift two places, for every other bit
            a = a << 2;
            
            // Bitwise-OR a and 1 to get the next number and set a to new number
            a = a | 1;
            
            printf("At iteration %d, \"a\" is %lld \n (hex: 0x%llx)\n", i, a, a);
        }
        
        printf("\n\nThe number in decimal is %lld. In hex, that's 0x%llx.\n", a, a);

    }
    return 0;
}

