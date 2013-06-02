//
//  LoginFacebookViewController.h
//  CampusStewMock1
//
//  Created by Alexander Chumbley on 6/2/13.
//  Copyright (c) 2013 PPP.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>


@interface LoginFacebookViewController : UIViewController <PFLogInViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UILabel *welcomeLabel;

- (IBAction)logoutTouchAction:(id)sender;

@end
