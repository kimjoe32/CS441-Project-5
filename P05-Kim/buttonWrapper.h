//
//  buttonWrapper.h
//  P05-Kim
//
//  Created by ETS Admin on 3/27/17.
//  Copyright © 2017 Joe. All rights reserved.
//
//  holds properties of checker pieces
#import <UIKit/UIKit.h>
@interface buttonWrapper : NSObject {
    
}
@property (nonatomic) BOOL isRed;
@property (nonatomic) BOOL isWhite;
@property (nonatomic) BOOL isEmpty;
@property (nonatomic) BOOL isKing;
@property (nonatomic) NSInteger location;
- (NSString*) pr;
- (id) init: (NSInteger) position;
- (void) attack: (buttonWrapper*) attacked landingSpot: (buttonWrapper*) landing;
- (void) swapValues: (buttonWrapper*) bw2;
- (BOOL) isDifferent: (buttonWrapper*) bw2;
- (void) switchToType: (NSString *) type;
@end
