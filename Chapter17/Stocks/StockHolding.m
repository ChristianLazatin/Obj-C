//
//  StockHolding.m
//  Stocks
//
//  Created by Christian Ramir Lazain on 4/14/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice, currentSharePrice, numberOfShares;

- (float)costInDollars
{
    return purchaseSharePrice * numberOfShares;
}

- (float)valueInDollars
{
    return currentSharePrice * numberOfShares;
}
@end
