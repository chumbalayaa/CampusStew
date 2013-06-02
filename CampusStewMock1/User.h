//
//  User.h
//  CampusStewMock1
//
//  Created by Alexander Chumbley on 6/2/13.
//  Copyright (c) 2013 PPP.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (readwrite) NSString *name;
@property (readwrite) NSString *email;
@property (readwrite) NSString *profilePicture;
@property (readwrite) NSMutableArray *sizzledEvents;
@property (readwrite) NSMutableArray *sizzledItems;

@property (readwrite) NSMutableArray *myEvents;
@property (readwrite) NSMutableArray *myItems;

- (id) initWithName: (NSString *) userName alsoWithPicture: (NSString *) picture alsoWithEmail: (NSString *) email;


@end
