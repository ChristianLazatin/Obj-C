//
//  StockHolding.h
//  Portfolio
//
//  Created by Christian Ramir Lazain on 4/23/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "list.h"

@interface StockHolding : NSObject

@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

- (void)keepPrice:(NSMutableArray *)p;

- (float)costInDollars;
- (float)valueInDollars;

@end
