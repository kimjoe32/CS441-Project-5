//
//  ViewController.m
//  P05-Kim
//
//  Created by ETS Admin on 3/27/17.
//  Copyright © 2017 Joe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
    [self createButtons];
    
}

-(void) createButtons
{
    _board = [[NSArray alloc] initWithObjects:
              _b11,_b12,_b13,_b14,
              _b21,_b22,_b23,_b24,
              _b31,_b32,_b33,_b34,
              _b41,_b42,_b43,_b44,
              _b51,_b52,_b53,_b54,
              _b61,_b62,_b63,_b64,
              _b71,_b72,_b73,_b74,
              _b81,_b82,_b83,_b84,
              nil];
    _boardWrapper = [[NSArray alloc] initWithObjects:_bw11,_bw12,_bw13,_bw14,
                     _bw21,_bw22,_bw23,_bw24,
                     _bw31,_bw32,_bw33,_bw34,
                     _bw41,_bw42,_bw43,_bw44,
                     _bw51,_bw52,_bw53,_bw54,
                     _bw61,_bw62,_bw63,_bw64,
                     _bw71,_bw72,_bw73,_bw74,
                     _bw81,_bw82,_bw83,_bw84,
                     nil];
    //row/column stored as int -- location 23 -> row 2, column 3
    int row = 10;
    int column = 1;
    for (buttonWrapper *b in _boardWrapper)
    {
        b.location = row+column;
        if (b.location < 40)
        {
            *b.isRed = FALSE;
            *b.isEmpty = FALSE;
            *b.isWhite = TRUE;
        }
        else if (b.location > 60)
        {
            *b.isRed = FALSE;
            *b.isEmpty = FALSE;
            *b.isWhite = TRUE;
        }
        else
        {
            *b.isRed = FALSE;
            *b.isEmpty = TRUE;
            *b.isWhite = TRUE;
        }
        column++;
        if (column == 5)
        {
            column = 1;
            row += 10;
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
