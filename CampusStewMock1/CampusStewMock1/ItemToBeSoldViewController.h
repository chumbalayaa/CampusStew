//
//  ItemToBeSoldViewController.h
//  CampusStewMock1
//
//  Created by Harry Rein on 5/31/13.
//  Copyright (c) 2013 PPP.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StoreViewController.h"

@interface ItemToBeSoldViewController : UIViewController

//Properties of an item that is being sold
@property (weak, nonatomic) IBOutlet UILabel *itemTitle;
@property (weak, nonatomic) IBOutlet UILabel *itemPrice;
@property (weak, nonatomic) IBOutlet UIImageView *itemImage;
@property (weak, nonatomic) IBOutlet UILabel *itemDescription;
@property (weak, nonatomic) IBOutlet UILabel *contactInfo;
@property (weak) Item *item;
- (IBAction)backToStore:(id)sender;

@end
