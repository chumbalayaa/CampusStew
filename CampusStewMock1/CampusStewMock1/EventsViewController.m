//
//  EventsViewController.m
//  CampusStewMock1
//
//  Created by Harry Rein on 5/31/13.
//  Copyright (c) 2013 PPP.com. All rights reserved.
//

#import "EventsViewController.h"
#import "Event.h"


@interface EventsViewController ()

@end
@implementation EventsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Set up the title, host, location and description
    self.eventTitle.text = self.event.title;
    NSString *thehost = [NSString stringWithFormat: @"Hosted by %@", self.event.host];
    self.host.text= thehost;
    self.location.text = self.event.location;
    self.description1.text = self.event.description;
    
    //Set up the hours and day
    NSString *hours = [NSString stringWithFormat:@"%@ to %@",self.event.startTime,self.event.endtime];
    self.hours.text = hours;
    self.day.text = self.event.day;
    
    
    //Set up the icon
    UIImage *itemImage;
    itemImage = [UIImage imageNamed: [NSString stringWithFormat: @"%@.png", self.event.imageicon]];
    self.icon.image = itemImage;
    
    //Set up the sizzle button and the sizzlenumber
    NSString *sizzleNumber = [NSString stringWithFormat:@"%d",(int) self.event.sizzles];
    self.sizzles.text = sizzleNumber;
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



    
@end
