//
//  MasterViewController.h
//  WesCal
//
//  Created by Tzu-Yang Ni on 11/9/11.
//  Copyright (c) 2011 yoseka. All rights reserved.
//

#import <UIKit/UIKit.h>

//@class DetailViewController;
@class Events;
@class SecondTableView; 


@interface MasterViewController : UITableViewController{
     NSMutableArray *CFAEvents;
     NSMutableArray *WesleyingEvents;
     UITableView *_MyTableView;
     NSMutableArray *ListofItems;
     SecondTableView *SecondTableView;
}
@property (strong, nonatomic) IBOutlet UITableView *MyTableView;
@property (strong,nonatomic) NSMutableArray *CFAEvents;
@property (strong,nonatomic) NSMutableArray *WesleyingEvents;
//@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong,nonatomic) NSMutableArray *ListofItems;
@property (strong,nonatomic) SecondTableView *SecondTableView;

@end
