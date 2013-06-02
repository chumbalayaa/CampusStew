//
//  FacebookLogInViewController.h
//  CampusStewMock1
//
//  Created by Harry Rein on 6/1/13.
//  Copyright (c) 2013 PPP.com. All rights reserved.
//

#import <Parse/Parse.h>

@interface FacebookLogInViewController : PFLogInViewController <PFLogInViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UILabel *welcomeLabel;


- (IBAction)logoutTouchAction:(id)sender;

@end
