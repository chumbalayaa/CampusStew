//
//  QuadViewController.h
//  CampusStewMock1
//
//  Created by Alexander Chumbley on 5/31/13.
//  Copyright (c) 2013 PPP.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Event.h"

@interface QuadViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) Event *currentEvent;

-(IBAction) backToQuadUnwind:(UIStoryboardSegue *)sender;
@end
