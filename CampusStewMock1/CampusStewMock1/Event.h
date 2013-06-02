//
//  Event.h
//  CampusStewMock1
//
//  Created by Harry Rein on 5/31/13.
//  Copyright (c) 2013 PPP.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Event : NSObject

@property (readwrite, retain) NSString *imageicon;
@property (readwrite, retain) NSString *title;
@property (readwrite, retain) NSString *host;
@property (readwrite, retain) NSString *location;
@property (readwrite, retain) NSString *description;
@property (readwrite, retain) NSString *day;
@property (readwrite, retain) NSString *startTime;
@property (readwrite, retain) NSString *endtime;
@property (readwrite, retain) NSString *type;
@property (readwrite) NSInteger *sizzles;

-(id)initWithFormat: (NSString *) imageicon andTitle: (NSString *) title andHost: (NSString *) host andLocation: (NSString *) location andDescription: (NSString *) description andDay: (NSString *) day andStartTime: (NSString *) startTime andEndTime: (NSString *) endTime andType: (NSString *) type;

@end
