//
//  buttonWrapper.m
//  P05-Kim
//
//  Created by ETS Admin on 3/27/17.
//  Copyright © 2017 Joe. All rights reserved.
//
#import "buttonWrapper.h"
@implementation buttonWrapper

@synthesize isRed;
@synthesize isWhite;
@synthesize isEmpty;
@synthesize location;

- (id) init
{
    self = [super init];
    isRed = FALSE;
    isWhite = FALSE;
    isEmpty = FALSE;
    location = 0;
    return self;
}

- (void) pr
{   //debugging print type of button
    if (isRed)
    {
        NSLog(@"RED, %ld", (long)location);
    }
    else if (isWhite) {
        NSLog(@"WHITE, %ld", location);
    }
    else {
        NSLog(@"EMPTY, %ld", location);
    }
}
@end

