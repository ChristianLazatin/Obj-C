//
//  StockHolding.h
//  Stocks2
//
//  Created by Christian Ramir Lazain on 4/14/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject

@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

- (float)costInDollars;
- (float)valueInDollars;


@end
