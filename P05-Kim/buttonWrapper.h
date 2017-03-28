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
@property (nonatomic) NSInteger location;
- (void) pr;
- (id) init;
@end
