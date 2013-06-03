//
//  StoreViewController.m
//  CampusStewMock1
//
//  Created by Alexander Chumbley on 5/31/13.
//  Copyright (c) 2013 PPP.com. All rights reserved.
//

#import "StoreViewController.h"
#import "Item.h"
#import "ItemToBeSoldViewController.h"

@interface StoreViewController () {
    Item *_item1;
    Item *_item2;
    Item *_item3;
    Item *_item4;
    Item *_item5;
    Item *_item6;
    Item *_item7;
    UIButton *_sizzleButton;

    
}

@end

@implementation StoreViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
//----------------------NAVIGATING SEGUE ACTIONS----------------------------------
- (IBAction)toQuad:(id)sender {
    [self performSegueWithIdentifier:@"toQuad" sender:self];
}

- (IBAction)toProfile:(id)sender {
    [self performSegueWithIdentifier:@"storeToProfile" sender:self];
}


-(IBAction) backToStoreUnwind:(UIStoryboardSegue *)sender{
    //NOT YET USED
}


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"itemDetails"]){
        StoreViewController *startingViewController;
        ItemToBeSoldViewController *destinationViewController;
        
        startingViewController = (StoreViewController *) segue.sourceViewController;
        destinationViewController = (ItemToBeSoldViewController *) segue.destinationViewController;
        
        //set up the next screen with the current item
        destinationViewController.item = self.currentItem;
    }
    
    
}

//-----------------------END OF SEGUES----------------------------------
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _item1 = [[Item alloc] initWithFormat:@"bongImage" andTitle:@"Bong" andSeller:@"Chums" andContactInfo:@"404-201-0690" andDescription:@"It's a good bong. A small scratch on the base but functions nicely." andPrice:@"$100" andType:@"Study Guides"];
    
    _item2 = [[Item alloc] initWithFormat:@"beanBagImage" andTitle:@"Bean Bag Chair" andSeller:@"Chums" andContactInfo:@"404-201-0690" andDescription:@"It's in good condition. I bought it a few years ago but don't have any need for it now that I am graduating." andPrice:@"$50" andType:@"Dorm Items"];
    
    _item3 = [[Item alloc] initWithFormat:@"macroBookImage" andTitle:@"14.02 book" andSeller:@"Harry" andContactInfo:@"404-201-0690" andDescription:@"In good condition." andPrice:@"$40" andType:@"Books"];
    
    _item4 = [[Item alloc] initWithFormat:@"alexImage" andTitle:@"Alex (Prostitute)" andSeller:@"Pimp Harry" andContactInfo:@"404-201-0690" andDescription:@"He's good ;)" andPrice:@"$1000" andType:@"Tasks"];
    
    _item5 = [[Item alloc] initWithFormat:@"redSoloCupImage" andTitle:@"Red solo cups (20 pack)" andSeller:@"Phrat Phil" andContactInfo:@"404-201-0690" andDescription:@"These are some high quality cups." andPrice:@"$4" andType:@"Other"];
    
    _item6 = [[Item alloc] initWithFormat:@"ashTrayImage" andTitle:@"Ash tray" andSeller:@"Chums" andContactInfo:@"404-201-0690" andDescription:@"No ash involved. I bought it a few months back but found my old one so I don't really have a need for it anymore." andPrice:@"$15" andType:@"Dorm Items"];
    
    _item7 = [[Item alloc] initWithFormat:@"condomsImage" andTitle:@"Pack of condoms" andSeller:@"Danny" andContactInfo:@"404-201-0690" andDescription:@"No holes in any of the condoms." andPrice:@"$10" andType:@"Dorm Items"];
    
    self.items = [NSMutableArray array];
    [self.items addObject:_item1];
    [self.items addObject:_item2];
    [self.items addObject:_item3];
    [self.items addObject:_item4];
    [self.items addObject:_item5];
    [self.items addObject:_item6];
    [self.items addObject:_item7];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//-------------------------Table View Elements and Protocol---------------------------
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.items count];
}


-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Campus Store";
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier: @"itemToBeSold"];
    
    //Sets the text and detail text labels
    cell.textLabel.text = ((Item *) self.items[indexPath.row]).title;
    cell.detailTextLabel.text = ((Item *) self.items[indexPath.row]).price;
    
    //Sets the image to the correct image
    UIImage *itemImage;
    itemImage = [UIImage imageNamed: [NSString stringWithFormat: @"%@.png",((Item *) self.items[indexPath.row]).image]];
    cell.imageView.image = itemImage;
    
    //Adds the sizzle button and its functionality
    _sizzleButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _sizzleButton.frame = CGRectMake(270.0, 10.0, 40.0, 40.0);
    
    //check if it should be sizzled or not
    if (((Item *)(self.items[indexPath.row])).sizzled == NO){
        [_sizzleButton setImage:[UIImage imageNamed:@"Sizzle Button(unsizzled).png"] forState:UIControlStateNormal];
    }else{
        [_sizzleButton setImage:[UIImage imageNamed:@"Sizzle Button(sizzled).png"] forState:UIControlStateNormal];
    }
    
    
    _sizzleButton.tag = indexPath.row;//add a tag to the item we are dealing with (tag is the row of the tagged element)
    [_sizzleButton addTarget:self action:@selector(sizzle:) forControlEvents:UIControlEventTouchUpInside];
    [cell addSubview:_sizzleButton];
    
    
    //Get rid of highlighting
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //Set the current Item
    self.currentItem = self.items[indexPath.row];
    [self performSegueWithIdentifier:@"itemDetails" sender:self];
}
//----------------------------End of Table View Elements------------------------------




- (void) sizzle: (id) sender{
    NSLog(@"We are trying to sizzle row %d",((UIControl *)sender).tag);
    //grab the correct row
    
    NSInteger row = ((UIControl *)sender).tag;
    
    //Change the value of the sizzle on that item
    BOOL *newSizzleValue = ((Item *)[self.items objectAtIndex:((UIControl *)sender).tag]).sizzled;
    ((Item *) self.items[row]).sizzled = newSizzleValue;
    
    
}







@end
