//
//  CalendarFunctions.h
//  MyCalendar
//
//  Created by Alon Gal on 27/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CalendarFunctions : NSObject


+ (id)sharedInstance;
- (NSInteger)numberOfdaysInMonth:(NSInteger)month withYear:(NSInteger)year;


@end
