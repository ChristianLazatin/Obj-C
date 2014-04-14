//
//  main.m
//  Stocks
//
//  Created by Christian Ramir Lazain on 4/14/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdlib.h>
#import "StockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        /*This program has three instances of StockHoldings stored in an array. 
         It then iterate through the array to print its value. The data used to
         fill up each instance of StockHolding is generated using a random number*/
        
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
        }
        
        //Print out all of the stocks including its value and cost in dollars
        for (StockHolding *s in stocks_array) {
            
            //Print out the purchase price, current price and number of shares
            NSLog(@"Purchase price is %.2f, current value is %.2f with number of shares at %d ", s.purchaseSharePrice, s.currentSharePrice, s.numberOfShares);
            
            //Print out its cost in dollars and value
            NSLog(@"The cost in dollars is $%.2f with a value of %f.2", s.costInDollars,
                  s.valueInDollars);
        }
        
    }
    return 0;
}

