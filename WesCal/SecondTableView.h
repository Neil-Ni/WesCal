//
//  SecondTableView.h
//  WesCal
//
//  Created by Tzu-Yang Ni on 11/9/11.
//  Copyright (c) 2011 yoseka. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;
@interface SecondTableView : UITableViewController {
    NSMutableArray *All;
    NSMutableArray *Science;
    NSMutableArray *Humanity;
    NSMutableArray *Sports;
    NSMutableArray *Lectures;
    NSMutableArray *CFA;
    NSMutableArray *Wesleying;
    int Number;
}
@property int Number;
//@property (strong,nonatomic) NSMutableArray *ListofItems;
//@property (strong, nonatomic) DetailViewController *detailViewController;

@end
