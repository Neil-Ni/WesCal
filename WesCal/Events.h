//
//  Events.h
//  WesCal
//
//  Created by Tzu-Yang Ni on 11/9/11.
//  Copyright (c) 2011 yoseka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Events : NSObject{
    NSString *EventName;
    NSString *EventTime;
    NSString *EventCategory;
    NSDate *EventDate;

}

@property (nonatomic, strong) NSString *EventName;
@property (nonatomic, strong) NSString *EventTime;
@property (nonatomic, strong) NSDate *EventDate;
@property (nonatomic, strong) NSString *EventCategory;

-(id) initWithEvent:(NSString *)Name andTime:(NSString *)Date andTime:(NSString *)Time andCategory:(NSString *)Category;

@end
