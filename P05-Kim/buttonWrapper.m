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
@synthesize isKing;
@synthesize location;

- (id) init: (NSInteger) position
{
    self = [super init];
    isRed = FALSE;
    isWhite = FALSE;
    isEmpty = FALSE;
    isKing = FALSE;
    location = position;
    return self;
}
- (BOOL) isDifferent: (buttonWrapper*) bw2
{
    return (isWhite && bw2.isRed) || (isRed && bw2.isWhite);
}

- (void) swapValues: (buttonWrapper*) bw2
{
    //switch red
    BOOL temp = isRed;
    isRed = bw2.isRed;
    bw2.isRed = temp;
    
    //switch white
    temp = isWhite;
    isWhite = bw2.isWhite;
    bw2.isWhite = temp;
    
    //switch empty
    temp = isEmpty;
    isEmpty = bw2.isEmpty;
    bw2.isEmpty = temp;
    
    //switch king
    temp = isKing;
    isKing = bw2.isKing;
    bw2.isKing = temp;
}

- (void) attack: (buttonWrapper*) attacked landingSpot: (buttonWrapper*) landing
{
    //attacked bw becomes empty
    [attacked switchToType:@"EMPTY"];
    //change landingSpot bw to attacker type
    if (isRed)
    {
        [landing switchToType:@"RED"];
    }
    else if (isWhite)
    {
        [landing switchToType:@"WHITE"];
    }
    landing.isKing = isKing;
    //attacking location is now empty
    [self switchToType:@"EMPTY"];
}

- (void) switchToType: (NSString *) type
{
    if ([type isEqualToString:@"RED"])
    {
        isRed = TRUE;
        isWhite = FALSE;
        isEmpty = FALSE;
    }
    else if ([type isEqualToString:@"WHITE"])
    {
        isRed = FALSE;
        isWhite = TRUE;
        isEmpty = FALSE;
    }
    else
    {
        isRed = FALSE;
        isWhite = FALSE;
        isEmpty = TRUE;
        isKing = FALSE;
    }
}

- (NSString*) pr
{   //debugging print type of button
    if (isRed)
    {
        return [NSString stringWithFormat:@"RED, %ld %@", location, (isKing) ? @"King" : @""];
    }
    else if (isWhite) {
        return [NSString stringWithFormat:@"WHITE, %ld %@", location, (isKing) ? @"King" : @""];
    }
    //isEmpty
    return [NSString stringWithFormat:@"EMPTY, %ld %@", location, (isKing) ? @"King" : @""];
}
@end

