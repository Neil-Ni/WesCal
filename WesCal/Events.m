//
//  Events.m
//  WesCal
//
//  Created by Tzu-Yang Ni on 11/9/11.
//  Copyright (c) 2011 yoseka. All rights reserved.
//

#import "Events.h"

@implementation Events

@synthesize EventName=_Name;
@synthesize EventDate=_Date;
@synthesize EventTime=_Time;
@synthesize EventCategory=_Category;

-(id)initWithEvent:(NSString *)Name andTime:(NSString *)Date andTime:(NSString *)Time andCategory:(NSString *)Category{
    [self setEventDate:Date];
    [self setEventName:Name];
    [self setEventTime:Time];
    [self setEventCategory:Category];
    return self;
}
    

@end
