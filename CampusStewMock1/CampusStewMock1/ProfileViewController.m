//
//  ProfileViewController.m
//  CampusStewMock1
//
//  Created by Alexander Chumbley on 5/31/13.
//  Copyright (c) 2013 PPP.com. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController (){
    User *_user1;
    UIButton *_addEvent;
    UIButton *_addItem;
}

@end

@implementation ProfileViewController

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
    _user1 = [[User alloc] initWithName:@"Harry Rein" alsoWithPicture:@"harryProfilePic" alsoWithEmail:@"hrein@mit.edu"];
    
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Segue back to page
-(IBAction) backToUserUnwind:(UIStoryboardSegue *)sender{
    
}

//Set up the Table View Elements
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;// FOR NOW
    
    
    //future
    if (section ==0){
        
    }
    
    
}

-(CGFloat)tableView: (UITableView *) tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
    
    //Except for events we still want to be sized as they should be
    if (indexPath.section ==0){ //we are in my events
        
    }else if (indexPath.section ==1){ //we are in sizzled events
        
    }
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *sizzlecell = [tableView dequeueReusableCellWithIdentifier:@"sizzleCell"];
    UITableViewCell *usercell = [tableView dequeueReusableCellWithIdentifier:@"userCell"];
    usercell.selectionStyle = UITableViewCellSelectionStyleNone;
    sizzlecell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    
    
    
    
    if (indexPath.section==0){
        _addEvent = [UIButton buttonWithType:UIButtonTypeContactAdd];
        _addEvent.frame = CGRectMake(270.0, 15.0, 40.0, 40.0);
        [_addEvent addTarget:self action:@selector(addEvent:) forControlEvents:UIControlEventTouchUpInside];
        [usercell addSubview:_addEvent];
        usercell.textLabel.text = @"My Events";
        return usercell;
    }else if (indexPath.section == 1){
        sizzlecell.textLabel.text = @"Sizzled Events";
        return sizzlecell;
    }else if (indexPath.section == 2){
        _addItem = [UIButton buttonWithType:UIButtonTypeContactAdd];
        _addItem.frame = CGRectMake(270.0, 15.0, 40.0, 40.0);
        [_addItem addTarget:self action:@selector(addItem:) forControlEvents:UIControlEventTouchUpInside];
        [usercell addSubview:_addItem];
        usercell.textLabel.text = @"My Items";
        return usercell;
    }else if (indexPath.section == 3){
        sizzlecell.textLabel.text = @"Sizzled Items";
        return sizzlecell;
    }
    return usercell;
}



-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    //Dont do anything just yet
}



//React to addEvent and addItem button presses


-(IBAction)addEvent:(id)sender{
    [self performSegueWithIdentifier:@"addEventSegue" sender:self];
    
}

-(IBAction)addItem: (id)sender{
    [self performSegueWithIdentifier:@"addItemSegue" sender:self];
}















@end
