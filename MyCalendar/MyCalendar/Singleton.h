//
//  Singleton.h
//  MyCalendar
//
//  Created by Alon Gal on 27/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#define DEFINE_SHARED_INSTANCE_USING_BLOCK(block) \
static dispatch_once_t pred = 0; \
__strong static id _sharedObject = nil; \
dispatch_once(&pred, ^{ \
_sharedObject = block(); \
}); \
return _sharedObject; \
