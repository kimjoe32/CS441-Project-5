//
//  ViewController.h
//  P05-Kim
//
//  Created by ETS Admin on 3/27/17.
//  Copyright © 2017 Joe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "buttonWrapper.h"
@interface ViewController : UIViewController
@property (nonatomic, strong) NSMutableDictionary *board;
@property (nonatomic, strong) NSMutableDictionary *boardWrapper;
-(IBAction)clicked:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *redTurnSign;
@property (strong, nonatomic) IBOutlet UIImageView *whiteTurnSign;
@property (strong, nonatomic) IBOutlet UILabel *lostRedLabel;
@property (strong, nonatomic) IBOutlet UILabel *lostWhiteLabel;

@property (strong, nonatomic) IBOutlet UIButton *b11;
@property (strong, nonatomic) IBOutlet UIButton *b13;
@property (strong, nonatomic) IBOutlet UIButton *b15;
@property (strong, nonatomic) IBOutlet UIButton *b17;

@property (strong, nonatomic) IBOutlet UIButton *b22;
@property (strong, nonatomic) IBOutlet UIButton *b24;
@property (strong, nonatomic) IBOutlet UIButton *b26;
@property (strong, nonatomic) IBOutlet UIButton *b28;

@property (strong, nonatomic) IBOutlet UIButton *b31;
@property (strong, nonatomic) IBOutlet UIButton *b33;
@property (strong, nonatomic) IBOutlet UIButton *b35;
@property (strong, nonatomic) IBOutlet UIButton *b37;

@property (strong, nonatomic) IBOutlet UIButton *b42;
@property (strong, nonatomic) IBOutlet UIButton *b44;
@property (strong, nonatomic) IBOutlet UIButton *b46;
@property (strong, nonatomic) IBOutlet UIButton *b48;

@property (strong, nonatomic) IBOutlet UIButton *b51;
@property (strong, nonatomic) IBOutlet UIButton *b53;
@property (strong, nonatomic) IBOutlet UIButton *b55;
@property (strong, nonatomic) IBOutlet UIButton *b57;

@property (strong, nonatomic) IBOutlet UIButton *b62;
@property (strong, nonatomic) IBOutlet UIButton *b64;
@property (strong, nonatomic) IBOutlet UIButton *b66;
@property (strong, nonatomic) IBOutlet UIButton *b68;

@property (strong, nonatomic) IBOutlet UIButton *b71;
@property (strong, nonatomic) IBOutlet UIButton *b73;
@property (strong, nonatomic) IBOutlet UIButton *b75;
@property (strong, nonatomic) IBOutlet UIButton *b77;

@property (strong, nonatomic) IBOutlet UIButton *b82;
@property (strong, nonatomic) IBOutlet UIButton *b84;
@property (strong, nonatomic) IBOutlet UIButton *b86;
@property (strong, nonatomic) IBOutlet UIButton *b88;

@property (strong, nonatomic) buttonWrapper *bw11;
@property (strong, nonatomic) buttonWrapper *bw13;
@property (strong, nonatomic) buttonWrapper *bw15;
@property (strong, nonatomic) buttonWrapper *bw17;

@property (strong, nonatomic) buttonWrapper *bw22;
@property (strong, nonatomic) buttonWrapper *bw24;
@property (strong, nonatomic) buttonWrapper *bw26;
@property (strong, nonatomic) buttonWrapper *bw28;

@property (strong, nonatomic) buttonWrapper *bw31;
@property (strong, nonatomic) buttonWrapper *bw33;
@property (strong, nonatomic) buttonWrapper *bw35;
@property (strong, nonatomic) buttonWrapper *bw37;

@property (strong, nonatomic) buttonWrapper *bw42;
@property (strong, nonatomic) buttonWrapper *bw44;
@property (strong, nonatomic) buttonWrapper *bw46;
@property (strong, nonatomic) buttonWrapper *bw48;

@property (strong, nonatomic) buttonWrapper *bw51;
@property (strong, nonatomic) buttonWrapper *bw53;
@property (strong, nonatomic) buttonWrapper *bw55;
@property (strong, nonatomic) buttonWrapper *bw57;

@property (strong, nonatomic) buttonWrapper *bw62;
@property (strong, nonatomic) buttonWrapper *bw64;
@property (strong, nonatomic) buttonWrapper *bw66;
@property (strong, nonatomic) buttonWrapper *bw68;

@property (strong, nonatomic) buttonWrapper *bw71;
@property (strong, nonatomic) buttonWrapper *bw73;
@property (strong, nonatomic) buttonWrapper *bw75;
@property (strong, nonatomic) buttonWrapper *bw77;

@property (strong, nonatomic) buttonWrapper *bw82;
@property (strong, nonatomic) buttonWrapper *bw84;
@property (strong, nonatomic) buttonWrapper *bw86;
@property (strong, nonatomic) buttonWrapper *bw88;
@end

