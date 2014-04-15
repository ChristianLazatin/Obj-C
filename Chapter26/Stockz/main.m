//
//  main.m
//  Stockz
//
//  Created by Christian Ramir Lazain on 4/15/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        NSMutableDictionary *stock;
       
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"AAPL"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200]
                  forKey:@"shares"];
        [stock  setObject:[NSDate date]
                   forKey:@"selling date"];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160]
                  forKey:@"shares"];
        [stock  setObject:[NSDate date]
                   forKey:@"selling date"];
        [stocks addObject:stock];
        
        
        [stocks writeToFile:@"/tmp/stocks.plist"
                 atomically:YES];
        
         NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/tmp/stocks.plist"];
        
        for (NSDictionary *d in stockList) {
            NSLog(@"I have %@ shares of %@ at %@", [d objectForKey:@"shares"],
                                                   [d objectForKey:@"symbol"],
                                                   [d objectForKey:@"selling date"]);
        }
    }
    return 0;
}

