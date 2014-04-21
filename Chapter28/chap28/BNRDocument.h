//
//  BNRDocument.h
//  chap28
//
//  Created by Christian Ramir Lazain on 4/21/14.
//  Copyright (c) 2014 klab. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BNRDocument : NSDocument <NSTableViewDataSource,NSTableViewDelegate>
{
    NSMutableArray *todoItems;
    IBOutlet NSTableView *itemTableView;
    
}


- (IBAction)createNewItem:(id)sender;

- (IBAction)deleteEntry:(id)sender;

@end
