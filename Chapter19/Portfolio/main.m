//
//  main.m
//  Portfolio
//
//  Created by Christian Ramir Lazain on 4/23/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*This program displays the current prices of the stocks coming from
         the StockHolding class. */
        
        //Initialize an object of list
        list *cPrice = [[list alloc] init];
        
        //Initialize price which gathers the current prices
        cPrice.price = [[NSMutableArray alloc] init];
        
        //Initialize an array with capacity of three that will store the stocks
        NSMutableArray *stocks_array = [[NSMutableArray alloc] initWithCapacity:3];
        
        for (int i = 0; i < 3; i++) {
            //Initialize one stock at a time
            StockHolding *new_stock =[[StockHolding alloc] init];
            
            //Input a random number from 0 - 5000
            new_stock.purchaseSharePrice = arc4random()%5000;
            new_stock.currentSharePrice = arc4random()%5000;
            
            //Input a random number from 0 - 1000
            new_stock.numberOfShares = arc4random()%1000;
            
            //Store the object on the array of stocks
            [stocks_array insertObject:new_stock atIndex:i];
            
            [cPrice.price insertObject:[NSNumber numberWithFloat:(new_stock.currentSharePrice)] atIndex:i];
            
            //Clean up
            new_stock = Nil;
        }
        
        NSLog(@"Current Prices are: \n");
        
        for (NSMutableArray *i in cPrice.price) {
            NSLog(@"%@",i);
        }
        
        //Clean up
        cPrice = Nil;
        stocks_array = Nil;
    }
    return 0;
}

