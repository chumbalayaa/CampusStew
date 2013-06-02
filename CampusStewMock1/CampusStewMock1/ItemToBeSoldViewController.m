//
//  ItemToBeSoldViewController.m
//  CampusStewMock1
//
//  Created by Harry Rein on 5/31/13.
//  Copyright (c) 2013 PPP.com. All rights reserved.
//

#import "ItemToBeSoldViewController.h"

@interface ItemToBeSoldViewController ()

@end

@implementation ItemToBeSoldViewController

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
    
    //Set up the title, price and description (Also with fonts)
    self.itemTitle.text = self.item.title;
    [self.itemTitle setFont:[UIFont fontWithName:@"ClementePDae-Light" size:35]];
    self.itemPrice.text = self.item.price;
    [self.itemPrice setFont:[UIFont fontWithName:@"ClementePDac-ExtraLight" size:30]];
    self.itemDescription.text = self.item.description;
    [self.itemDescription setFont:[UIFont fontWithName:@"ClementePDae-Light" size:20]];
    
    //Set up the image
    UIImage *itemImage;
    itemImage = [UIImage imageNamed: [NSString stringWithFormat: @"%@.png", self.item.image]];
    self.itemImage.image = itemImage;
    
    //Set up the contact information
    NSString *contactInfo = [NSString stringWithFormat: @"Item sold by %@ \n %@", self.item.seller,self.item.contactInfo];
    self.contactInfo.text = contactInfo;
    [self.contactInfo setFont:[UIFont fontWithName:@"ClementePDae-Light" size:20]];

	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backToStore:(id)sender {
}
@end
