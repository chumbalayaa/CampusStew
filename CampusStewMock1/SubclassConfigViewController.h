//
//  SubclassConfigViewController.h
//  CampusStewMock1
//
//  Created by Alexander Chumbley on 6/1/13.
//  Copyright (c) 2013 PPP.com. All rights reserved.
//

#import <Parse/Parse.h>

@interface SubclassConfigViewController : PFLogInViewController <PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UILabel *welcomeLabel;

- (IBAction)logOutButtonTabAction:(id)sender;

@end
