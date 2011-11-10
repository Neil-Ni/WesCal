//
//  SecondTableView.m
//  WesCal
//
//  Created by Tzu-Yang Ni on 11/9/11.
//  Copyright (c) 2011 yoseka. All rights reserved.
//

#import "SecondTableView.h"
#import "DetailViewController.h"

@implementation SecondTableView
//@synthesize ListofItems =_ListofItems;
//@synthesize detailViewController = _detailViewController;
@synthesize Number; 

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    All = [[NSMutableArray alloc] initWithObjects:@"All1",@"All2", @"All3", nil]; 
    Science =[[NSMutableArray alloc] initWithObjects:@"Science1",@"Science2", @"Science3", nil]; 
    Humanity =[[NSMutableArray alloc] initWithObjects:@"Humanity1",@"Humanity2", @"Humanity3", nil]; 
    Sports =[[NSMutableArray alloc] initWithObjects:@"Sports1",@"Sports2", @"Sports3", nil]; 
    Lectures =[[NSMutableArray alloc] initWithObjects:@"Lectures1",@"Lectures2", @"Lectures3", nil]; 
    CFA =[[NSMutableArray alloc] initWithObjects:@"CFA1",@"CFA2", @"CFA3", nil]; 
    Wesleying =[[NSMutableArray alloc] initWithObjects:@"Wesleying1",@"Wesleying2", @"Wesleying3", nil]; 
    
    [super viewDidLoad];
  //  self.ListofItems = [[NSMutableArray alloc]initWithObjects:@"MyCalendar",@"All", @"Science",@"Humanity",@"Sports",@"Lectures",@"CFA",@"Wesleying", nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
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
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(Number ==0){
        return [All count];
    }
    if(Number ==1){
        return [Science count];
    }
    
    if(Number ==2){
        return [Humanity count];
    }
    
    if(Number ==3){
        return [Sports count];
    }
    
    if(Number ==4){
        return [Lectures count];
    }
    
    if(Number ==5){
        return [CFA count];
    }
    
    if(Number ==6){
        return [Wesleying count];
    }
    [self.tableView reloadData];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *MyIdentifer = @"secondviewcell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifer];
    
    if(cell == nil) {
        cell = [UITableViewCell alloc];
    }
    
    cell.textLabel.font = [UIFont fontWithName:@"Helvetica Neue Bold" size:14];
    if(Number ==0){
        cell.textLabel.text= [All objectAtIndex:indexPath.row];
    }
    if(Number ==1){
        cell.textLabel.text= [Science objectAtIndex:indexPath.row];
    }
    
    if(Number ==2){
        cell.textLabel.text= [Humanity objectAtIndex:indexPath.row];
    }
    
    if(Number ==3){
        cell.textLabel.text= [Sports objectAtIndex:indexPath.row];
   }
    
    if(Number ==4){
        cell.textLabel.text= [Lectures objectAtIndex:indexPath.row];
    }
    
    if(Number ==5){
        cell.textLabel.text= [CFA objectAtIndex:indexPath.row];
    }
    
    if(Number ==6){
        cell.textLabel.text= [Wesleying objectAtIndex:indexPath.row];
    }
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // NSIndexPath *selectedRowIndex = [self.tableView indexPathForSelectedRow];
    
    
    DetailViewController *DetailView = [segue destinationViewController];
    
    NSIndexPath *indexPath= [self.tableView indexPathForSelectedRow]; 
    if(Number ==0){
        [DetailView setTitle:[All objectAtIndex:indexPath.row]];
    }
    if(Number ==1){
        [DetailView setTitle:[Science objectAtIndex:indexPath.row]];
    }
    
    if(Number ==2){
        [DetailView setTitle:[Humanity objectAtIndex:indexPath.row]];
    }
    
    if(Number ==3){
        [DetailView setTitle:[Sports objectAtIndex:indexPath.row]];
    }
    
    if(Number ==4){
        [DetailView setTitle:[Lectures objectAtIndex:indexPath.row]];
   }
    
    if(Number ==5){
        [DetailView setTitle:[CFA objectAtIndex:indexPath.row]];
 }
    
    if(Number ==6){
        [DetailView setTitle:[Wesleying objectAtIndex:indexPath.row]];
   }
    
    /*if([[self.ListofItems objectAtIndex:indexPath.row] isEqual:@"MyCalendar"]){
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
        
    }*/
    

}

#pragma mark - Table view delegate


@end
