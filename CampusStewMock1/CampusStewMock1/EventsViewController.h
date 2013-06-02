//
//  EventsViewController.h
//  CampusStewMock1
//
//  Created by Harry Rein on 5/31/13.
//  Copyright (c) 2013 PPP.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Event.h"
#import "QuadViewController.h"

@interface EventsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *icon;
@property (weak, nonatomic) IBOutlet UILabel *eventTitle;
@property (weak, nonatomic) IBOutlet UIButton *sizzleButton;
@property (weak, nonatomic) IBOutlet UILabel *sizzles;
@property (weak, nonatomic) IBOutlet UILabel *host;
@property (weak, nonatomic) IBOutlet UILabel *hours;
@property (weak, nonatomic) IBOutlet UILabel *day;
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) IBOutlet UITextView *description1;
@property (weak) Event *event;

@end
