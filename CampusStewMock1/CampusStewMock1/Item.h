//
//  Item.h
//  CampusStewMock1
//
//  Created by Alexander Chumbley on 5/31/13.
//  Copyright (c) 2013 PPP.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject {
    
   
    
}

@property (readwrite, retain) NSString *image;
@property (readwrite, retain) NSString *title;
@property (readwrite, retain) NSString *seller;
@property (readwrite, retain) NSString *contactInfo;
@property (readwrite, retain) NSString *description;
@property (readwrite, retain) NSString *price;
@property (readwrite, retain) NSString *type;

-(id)initWithFormat : (NSString *)image andTitle: (NSString *) title andSeller: (NSString *) seller
        andContactInfo: (NSString *) contactInfo andDescription: (NSString *) description andPrice: (NSString *) price andType: (NSString *) type;
@end
