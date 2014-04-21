//
//  main.m
//  Blocks
//
//  Created by Christian Ramir Lazain on 4/21/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSArray *oldStrings = [NSArray arrayWithObjects:@"hohoeel",@"walking",@"Ram",@"hello", nil];
        NSLog(@"Old strings : %@",oldStrings);
        NSMutableArray *newStrings = [NSMutableArray array];
        
        NSArray *vowels = [NSArray arrayWithObjects:@"a",@"e",@"i",@"o",@"u", nil];
        
        //declare the block variable
        void(^devowelizer)(id,NSUInteger,BOOL *);
        
        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            for(NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
                
                
            }
            [newStrings addObject:newString];
        };
        
        [oldStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"new strings: %@",newStrings);
    }
    return 0;
        
       }

