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
    _bw11 = [[buttonWrapper alloc] init];
    _bw11 = [[buttonWrapper alloc] init];
    _bw12 = [[buttonWrapper alloc] init];
    _bw13 = [[buttonWrapper alloc] init];
    _bw14 = [[buttonWrapper alloc] init];
    
    _bw21 = [[buttonWrapper alloc] init];
    _bw22 = [[buttonWrapper alloc] init];
    _bw23 = [[buttonWrapper alloc] init];
    _bw24 = [[buttonWrapper alloc] init];
    
    _bw31 = [[buttonWrapper alloc] init];
    _bw32 = [[buttonWrapper alloc] init];
    _bw33 = [[buttonWrapper alloc] init];
    _bw34 = [[buttonWrapper alloc] init];
    
    _bw41 = [[buttonWrapper alloc] init];
    _bw42 = [[buttonWrapper alloc] init];
    _bw43 = [[buttonWrapper alloc] init];
    _bw44 = [[buttonWrapper alloc] init];
    
    _bw51 = [[buttonWrapper alloc] init];
    _bw52 = [[buttonWrapper alloc] init];
    _bw53 = [[buttonWrapper alloc] init];
    _bw54 = [[buttonWrapper alloc] init];
    
    _bw61 = [[buttonWrapper alloc] init];
    _bw62 = [[buttonWrapper alloc] init];
    _bw63 = [[buttonWrapper alloc] init];
    _bw64 = [[buttonWrapper alloc] init];
    
    _bw71 = [[buttonWrapper alloc] init];
    _bw72 = [[buttonWrapper alloc] init];
    _bw73 = [[buttonWrapper alloc] init];
    _bw74 = [[buttonWrapper alloc] init];
    
    _bw81 = [[buttonWrapper alloc] init];
    _bw82 = [[buttonWrapper alloc] init];
    _bw83 = [[buttonWrapper alloc] init];
    _bw84 = [[buttonWrapper alloc] init];
    
    _board = [[NSMutableDictionary alloc] initWithCapacity:32];
    
    [_board setObject:_b11 forKey:@11];
    [_board setObject:_b12 forKey:@12];
    [_board setObject:_b13 forKey:@13];
    [_board setObject:_b14 forKey:@14];
    [_board setObject:_b21 forKey:@21];
    [_board setObject:_b22 forKey:@22];
    [_board setObject:_b23 forKey:@23];
    [_board setObject:_b24 forKey:@24];
    [_board setObject:_b31 forKey:@31];
    [_board setObject:_b32 forKey:@32];
    [_board setObject:_b33 forKey:@33];
    [_board setObject:_b34 forKey:@34];
    [_board setObject:_b41 forKey:@41];
    [_board setObject:_b42 forKey:@42];
    [_board setObject:_b43 forKey:@43];
    [_board setObject:_b44 forKey:@44];
    [_board setObject:_b51 forKey:@51];
    [_board setObject:_b52 forKey:@52];
    [_board setObject:_b53 forKey:@53];
    [_board setObject:_b54 forKey:@54];
    [_board setObject:_b61 forKey:@61];
    [_board setObject:_b62 forKey:@62];
    [_board setObject:_b63 forKey:@63];
    [_board setObject:_b64 forKey:@64];
    [_board setObject:_b71 forKey:@71];
    [_board setObject:_b72 forKey:@72];
    [_board setObject:_b73 forKey:@73];
    [_board setObject:_b74 forKey:@74];
    [_board setObject:_b81 forKey:@81];
    [_board setObject:_b82 forKey:@82]; 
    [_board setObject:_b83 forKey:@83]; 
    [_board setObject:_b84 forKey:@84];
    
    _boardWrapper = [[NSArray alloc] initWithObjects:
                     _bw11,_bw12,_bw13,_bw14,
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
        {   //top of board = red pieces
            [b setIsRed:TRUE];
        }
        else if (b.location > 60)
        {   //bottom of board = white pieces
            [b setIsWhite:TRUE];
        }
        else
        {   //middle of board has no pieces
            [b setIsEmpty:TRUE];
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
