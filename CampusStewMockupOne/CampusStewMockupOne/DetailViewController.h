//
//  DetailViewController.h
//  CampusStewMockupOne
//
//  Created by Harry Rein on 5/31/13.
//  Copyright (c) 2013 PPP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
