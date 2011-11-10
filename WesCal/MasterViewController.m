//
//  MasterViewController.m
//  WesCal
//
//  Created by Tzu-Yang Ni on 11/9/11.
//  Copyright (c) 2011 yoseka. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "Events.h"
#import "SecondTableView.h"

@implementation MasterViewController

@synthesize MyTableView = _MyTableView;
@synthesize CFAEvents =_CFAEvents;
@synthesize WesleyingEvents =_WesleyingEvents;
@synthesize ListofItems =_ListofItems;
@synthesize SecondTableView = _SecondTableView;

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
            self.clearsSelectionOnViewWillAppear = NO;
            self.contentSizeForViewInPopover = CGSizeMake(320.0, 600.0);
        }
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //start parsing;
    
    
	// Do any additional setup after loading the view, typically from a nib.
    //parse the information and add the information into Wesleying.
    
    self.ListofItems = [[NSMutableArray alloc]initWithObjects:@"My Calendar",@"All", @"Arts",@"Atheletics",@"Talks",@"Academic Calendar",@"CFA",@"Wesleying", nil];
    //sectioned academic calendar into section in months
    
    
    //Events *event1= [[Events alloc]initWithEvent:@"WesleyingEvent1" andTime:@"11/23/2011" andTime:@"19:11" andCategory:@"Wesleying"];
    /*Events *event2= [[Events alloc]initWithEvent:@"CFAEvent1" andTime:@"11/23/2011" andTime:@"20:11" andCategory:@"CFA"];
    */
    
    /*
    NSMutableArray *WesleyanEventsNameArray = [[NSMutableArray alloc] init];
    
    [WesleyanEventsNameArray addObject:event1.EventName];
    [WesleyanEventsNameArray addObject:event2.EventName];
    
    NSDictionary *WesleyanEventsNameDict =[NSDictionary dictionaryWithObject:WesleyanEventsNameArray forKey:@"EventName"];
    
    NSMutableArray *WesleyanEventsCategoryArray = [[NSMutableArray alloc] init];
    
    [WesleyanEventsCategoryArray addObject:event1.EventCategory];
    [WesleyanEventsCategoryArray addObject:event2.EventCategory];

    NSDictionary *WesleyanEventsCategoryDict =[NSDictionary dictionaryWithObject:WesleyanEventsCategoryArray forKey:@"Category"];
    
    
    self.WesleyingEvents =[[NSMutableArray alloc] init];
    [self.WesleyingEvents addObject:WesleyanEventsCategoryDict];
    [self.WesleyingEvents addObject:WesleyanEventsNameDict];
    */
    self.WesleyingEvents =[[NSMutableArray alloc] init];
    //[self.WesleyingEvents addObject:event1.EventName];
    
    
    
   // self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        [self.tableView selectRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0] animated:NO scrollPosition:UITableViewScrollPositionMiddle];
    }
}

- (void)viewDidUnload
{
    [self setMyTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.ListofItems count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *MyIdentifer = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifer];
    
    if(cell == nil) {
        cell = [UITableViewCell alloc];
    }
    
    cell.textLabel.font = [UIFont fontWithName:@"Helvetica Neue Bold" size:14];
    NSString *Category = [self.ListofItems objectAtIndex:indexPath.row];
    cell.textLabel.text = Category;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
 
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
   // NSIndexPath *selectedRowIndex = [self.tableView indexPathForSelectedRow];

    
    SecondTableView *secondTableView = [segue destinationViewController];
    
    NSIndexPath *indexPath= [self.tableView indexPathForSelectedRow]; 
    
    if([[self.ListofItems objectAtIndex:indexPath.row] isEqual:@"MyCalendar"]){
           // segue.identifier = @"Calendar"; 
    }
    
    if([[self.ListofItems objectAtIndex:indexPath.row] isEqual:@"All"]){
        secondTableView.Number = 0;
        [secondTableView setTitle:[self.ListofItems objectAtIndex:indexPath.row]];
    }
    if([[self.ListofItems objectAtIndex:indexPath.row] isEqual:@"Science"]){
        secondTableView.Number = 1;
        [secondTableView setTitle:[self.ListofItems objectAtIndex:indexPath.row]];
        
    }
    if([[self.ListofItems objectAtIndex:indexPath.row] isEqual:@"Humanity"]){
        secondTableView.Number = 2;
        [secondTableView setTitle:[self.ListofItems objectAtIndex:indexPath.row]];
        
    }
    if([[self.ListofItems objectAtIndex:indexPath.row] isEqual:@"Sports"]){
        secondTableView.Number = 3;
        [secondTableView setTitle:[self.ListofItems objectAtIndex:indexPath.row]];
        
    }
    if([[self.ListofItems objectAtIndex:indexPath.row] isEqual:@"Lectures"]){
        secondTableView.Number = 4;
        [secondTableView setTitle:[self.ListofItems objectAtIndex:indexPath.row]];
        
    }
    if([[self.ListofItems objectAtIndex:indexPath.row] isEqual:@"CFA"]){
        secondTableView.Number = 5;
        [secondTableView setTitle:[self.ListofItems objectAtIndex:indexPath.row]];
        
    }
    if([[self.ListofItems objectAtIndex:indexPath.row] isEqual:@"Wesleying"]){
        secondTableView.Number = 6;
        [secondTableView setTitle:[self.ListofItems objectAtIndex:indexPath.row]];
        
    }
    
   // [self.navigationController pushViewController:secondTableView animated:YES];
   /* if ([[segue identifier] isEqualToString:@"Events"]) {
        
        //NSIndexPath *selectedRowIndex = [self.tableView indexPathForSelectedRow];
        SecondTableView *secondTableView = [segue destinationViewController];
        
     //   secondTableView. =[dataController objectInListAtIndex:selectedRowIndex.row];
  //      DetailViewController *detailViewController = [segue destinationViewController];
//        detailViewController.play = [dataController objectInListAtIndex:selectedRowIndex.row];
    }*/
}


@end
