//
//  User.m
//  CampusStewMock1
//
//  Created by Harry Rein on 6/1/13.
//  Copyright (c) 2013 PPP.com. All rights reserved.
//

#import "User.h"

@implementation User


-(id) initWithName:(NSString *)userName alsoWithPicture: (NSString *) picture alsoWithEmail:(NSString *)userEmail{
    self = [super init];
    [self setName:userName];
    [self setProfilePicture:picture];
    
    NSMutableArray *array;
    array = [[NSMutableArray alloc] init];
    [self setSizzledEvents:array];
    
    NSMutableArray *array2;
    array = [[NSMutableArray alloc] init];
    [self setSizzledItems:array2];
    
    [self setEmail:userEmail];
    return self;
}
@end
