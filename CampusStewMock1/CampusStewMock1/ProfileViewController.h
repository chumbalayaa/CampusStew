//
//  ProfileViewController.h
//  CampusStewMock1
//
//  Created by Alexander Chumbley on 5/31/13.
//  Copyright (c) 2013 PPP.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface ProfileViewController : UIViewController <UITableViewDataSource>

@property (weak, nonatomic) User *currentUser;

- (IBAction)addEvent:(id)sender;
- (IBAction)addItem:(id)sender;

-(IBAction) backToUserUnwind:(UIStoryboardSegue *)sender;

@end

