//
//  ForeignStockHolding.m
//  Stocks2
//
//  Created by Christian Ramir Lazain on 4/14/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float)costInDollars
{
    return conversionRate * [super costInDollars];
}

- (float)valueInDollars
{
    return conversionRate * [super valueInDollars];
}

@end
