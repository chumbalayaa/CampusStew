//
//  StoreViewController.h
//  CampusStewMock1
//
//  Created by Alexander Chumbley on 5/31/13.
//  Copyright (c) 2013 PPP.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Item.h"

@interface StoreViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) Item *currentItem;

-(IBAction) backToStoreUnwind:(UIStoryboardSegue *)sender;

@end
