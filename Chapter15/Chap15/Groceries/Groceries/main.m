//  main.m
//  Groceries
//
//  Created by Christian Ramir Lazain on 4/11/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //This uses an mutable array to print out grocery items
        
        //Initialize a mutable array
        NSMutableArray *groceryItems = [NSMutableArray array];
        
        //Declare the grocey items
        NSString *ham = [[NSString alloc] initWithFormat:@"Mekeni Ham"];
        NSString *hotdog = [[NSString alloc] initWithFormat:@"Tender Juicy Hotdog"];
        NSString *noodles = [[NSString alloc] initWithFormat:@"Pancit Canton"];
        NSString *rice = [[NSString alloc] initWithFormat:@"Sinandomeng"];
        
        //Insert the grocery items to groceryItems
        [groceryItems insertObject:ham atIndex:0];
        [groceryItems insertObject:hotdog atIndex:1];
        [groceryItems insertObject:noodles atIndex:2];
        [groceryItems insertObject:rice atIndex:3];
        
        NSLog(@"The grocery items are: ");
        
        //Print all the grocery items
        for (NSString *i in groceryItems) {
            NSLog(@"%@",i);
        }
        
    }
    return 0;
}

