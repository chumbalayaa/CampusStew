//
//  QuadViewController.m
//  CampusStewMock1
//
//  Created by Alexander Chumbley on 5/31/13.
//  Copyright (c) 2013 PPP.com. All rights reserved.
//

#import "QuadViewController.h"
#import "Event.h"
#import "EventsViewController.h"

@interface QuadViewController (){    
    NSArray *_events;
    Event *_event1;
    Event *_event2;
    Event *_event3;
    Event *_event4;
    Event *_event5;
    Event *_event6;
    Event *_event7;
}

@end

@implementation QuadViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction) backToQuadUnwind:(UIStoryboardSegue *)sender{
    //Unwind segue back to the Quad
    
    //Dehighlight the selected event
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    //Grab all the events and populate the _events array
    _event1 = [[Event alloc] initWithFormat:@"lectureIcon" andTitle:@"Guest Speaker: Albert Einstein" andHost:@"Science Club" andLocation:@"77 Mass Avenue, Cambridge" andDescription:@"Back from the dead, Albert Einstein is here and he will be teaching us all about his take on how the universe was formed. Should be dope." andDay:@"September 9" andStartTime:@"11am" andEndTime:@"2pm" andType:@"Lectures"];
    _event2 = [[Event alloc] initWithFormat:@"raveIcon" andTitle:@"LCA Rave in the Cave" andHost:@"Chums and Harry" andLocation:@"99 Bay State Rd, Boston" andDescription:@"Throwing down on the biggest party of the year. Molly will be arriving in the plenty." andDay:@"September 19" andStartTime:@"9pm" andEndTime:@"2pm" andType:@"Greek"];
    _event3 = [[Event alloc] initWithFormat:@"basketballIcon" andTitle:@"Pickup Basketball in Johnson" andHost:@"Andrew Acker" andLocation:@"Rockwell Cage" andDescription:@"Playing some pickup with the basketball team. All are welcome to join." andDay:@"Today" andStartTime:@"5pm" andEndTime:@"8pm" andType:@"Pickup"];
    _event4 = [[Event alloc] initWithFormat:@"togaIcon" andTitle:@"PBE Toga Party" andHost:@"the PBE brothers" andLocation:@"186 Bay State Rd, Boston" andDescription:@"Throwing down on the biggest party of the year. Bring your toga and your student ID to get in" andDay:@"September 10" andStartTime:@"9pm" andEndTime:@"2pm" andType:@"Greek"];
    _event5 = [[Event alloc] initWithFormat:@"videoGamesIcon" andTitle:@"Playing Fifa in Baker 106" andHost:@"Baker 106 crew" andLocation:@"Baker House, MIT" andDescription:@"Playing some FIFA, come if you are looking to lose" andDay:@"Tonight" andStartTime:@"9pm" andEndTime:@"2am" andType:@"Hangouts"];
    _event6 = [[Event alloc] initWithFormat:@"redSoloCupIcon" andTitle:@"DKE Party" andHost:@"The brothers of DKE" andLocation:@"233 Memorial Drive, Cambridge" andDescription:@"Should be a lot of fun. Bring a student ID. Only allowed in if over 250 lbs, no exceptions." andDay:@"September 30" andStartTime:@"9pm" andEndTime:@"2am" andType:@"Greek"];
    _event7 = [[Event alloc] initWithFormat:@"weedIcon" andTitle:@"Smoking by the river" andHost:@"Harry and Chums" andLocation:@"The Charles River" andDescription:@"I can throw down about a g on a blunt, match me with a 0.5 and you are in" andDay:@"Today" andStartTime:@"8pm" andEndTime:@"10pm" andType:@"HangOuts"];
    
    _events = @[_event1,_event2,_event3,_event4,_event5,_event6,_event7];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Set up for the TableView
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_events count];
}
-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"The Quad";
}


-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *eventcell  = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"eventToBeHeld"];
    eventcell.textLabel.text = ((Event *) _events[indexPath.row]).title;

    NSString *hours = [NSString stringWithFormat:@"%@ to %@",((Event *) _events[indexPath.row]).startTime,((Event *) _events[indexPath.row]).endtime];
    eventcell.detailTextLabel.text = hours;
    
    UIImage *itemIcon;
    itemIcon = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png", ((Event *) _events[indexPath.row]).imageicon]];
    eventcell.imageView.image = itemIcon;
    
    //Get rid of the blue selection that is the default
    eventcell.selectionStyle = UITableViewCellSelectionStyleNone;
    return eventcell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //set the current event to the chosen event
    self.currentEvent = _events[indexPath.row];
    
    //segue to the events details page
    [self performSegueWithIdentifier:@"eventDetails" sender:self];

}


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"eventDetails"]){
        QuadViewController *startingViewController;
        EventsViewController *destinationViewController;
        startingViewController = (QuadViewController *) segue.sourceViewController;
        destinationViewController = (EventsViewController *) segue.destinationViewController;
        
        //Set up the EventsViewController with the current event
        destinationViewController.event = self.currentEvent;

        
    }
}
@end
