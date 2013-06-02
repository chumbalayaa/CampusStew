//
//  Item.m
//  CampusStewMock1
//
//  Created by Alexander Chumbley on 5/31/13.
//  Copyright (c) 2013 PPP.com. All rights reserved.
//

#import "Item.h"

@implementation Item

@synthesize image;
@synthesize title;
@synthesize seller;
@synthesize contactInfo;
@synthesize description;
@synthesize price;
@synthesize type;


-(id)initWithFormat:(NSString *)image1 andTitle:(NSString *)title1 andSeller:(NSString *)seller1 andContactInfo:(NSString *)contactInfo1 andDescription:(NSString *)description1 andPrice:(NSString *)price1 andType:(NSString *)type1 {
    
    //Later set image to stock if image=nil
    self = [super init];
    [self setImage:image1];
    [self setTitle:title1];
    [self setSeller:seller1];
    [self setContactInfo:contactInfo1];
    [self setDescription:description1];
    [self setPrice:price1];
    [self setType:type1];
    
    return self;
}
@end
