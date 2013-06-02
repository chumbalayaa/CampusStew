//
//  Event.m
//  CampusStewMock1
//
//  Created by Harry Rein on 5/31/13.
//  Copyright (c) 2013 PPP.com. All rights reserved.
//

#import "Event.h"

@implementation Event

-(id)initWithFormat: (NSString *) imageicon1 andTitle: (NSString *) title1 andHost: (NSString *) host1 andLocation: (NSString *) location1 andDescription: (NSString *) description1 andDay: (NSString *) day1 andStartTime: (NSString *) startTime1 andEndTime: (NSString *) endTime1 andType: (NSString *) type1{
    //Later set image to stock if image=nil
    self = [super init];
    [self setImageicon:imageicon1];
    [self setTitle:title1];
    [self setHost:host1];
    [self setLocation:location1];
    [self setDescription:description1];
    [self setDay: day1];
    [self setStartTime:startTime1];
    [self setEndtime:endTime1];
    [self setType:type1];
    [self setSizzles:0]; //Initialize Sizzles to Zero to start
    return self;
}
@end
