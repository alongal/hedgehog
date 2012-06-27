//
//  CalendarFunctions.m
//  MyCalendar
//
//  Created by Alon Gal on 27/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalendarFunctions.h"
#import "Singleton.h"


@implementation CalendarFunctions


+ (id)sharedInstance
{
    DEFINE_SHARED_INSTANCE_USING_BLOCK(^{
        return [[self alloc] init];
    });
}


- (NSInteger)numberOfdaysInMonth:(NSInteger)month withYear:(NSInteger)year
{
    NSCalendar *c = [NSCalendar currentCalendar];
    NSDateComponents* dc = [[NSDateComponents alloc] init];
    [dc setMonth:month];
    [dc setDay:10];
    [dc setYear:year];
    NSDate* date = [c dateFromComponents:dc];
    NSRange days = [c rangeOfUnit:NSDayCalendarUnit inUnit:NSMonthCalendarUnit forDate:date];
    
//    NSLog(@"There are %d in this month", days.length);
    
    return days.length;
}


@end
