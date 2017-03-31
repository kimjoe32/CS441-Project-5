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
NSInteger lastClickedLocation;
NSString *playerTurn = @"WHITE";
NSInteger lostRedPieces;
NSInteger lostWhitePieces;

- (void)viewDidLoad {
    [super viewDidLoad];
    lostRedPieces = 0;
    lostWhitePieces = 0;
    [self createButtons];
}

-(void) createButtons
{
    _b11 = [[UIButton alloc] initWithFrame:CGRectMake(23, 184, 46, 46)];
    _b13 = [[UIButton alloc] initWithFrame:CGRectMake(115, 184, 46, 46)];
    _b15 = [[UIButton alloc] initWithFrame:CGRectMake(207, 184, 46, 46)];
    _b17 = [[UIButton alloc] initWithFrame:CGRectMake(299, 184, 46, 46)];
    
    _b22 = [[UIButton alloc] initWithFrame:CGRectMake(69, 230, 46, 46)];
    _b24 = [[UIButton alloc] initWithFrame:CGRectMake(161, 230, 46, 46)];
    _b26 = [[UIButton alloc] initWithFrame:CGRectMake(253, 230, 46, 46)];
    _b28 = [[UIButton alloc] initWithFrame:CGRectMake(345, 230, 46, 46)];
    
    _b31 = [[UIButton alloc] initWithFrame:CGRectMake(23, 276, 46, 46)];
    _b33 = [[UIButton alloc] initWithFrame:CGRectMake(115, 276, 46, 46)];
    _b35 = [[UIButton alloc] initWithFrame:CGRectMake(207, 276, 46, 46)];
    _b37 = [[UIButton alloc] initWithFrame:CGRectMake(299, 276, 46, 46)];
    
    _b42 = [[UIButton alloc] initWithFrame:CGRectMake(69, 322, 46, 46)];
    _b44 = [[UIButton alloc] initWithFrame:CGRectMake(161, 322, 46, 46)];
    _b46 = [[UIButton alloc] initWithFrame:CGRectMake(253, 322, 46, 46)];
    _b48 = [[UIButton alloc] initWithFrame:CGRectMake(345, 322, 46, 46)];
    
    _b51 = [[UIButton alloc] initWithFrame:CGRectMake(23, 368, 46, 46)];
    _b53 = [[UIButton alloc] initWithFrame:CGRectMake(115, 368, 46, 46)];
    _b55 = [[UIButton alloc] initWithFrame:CGRectMake(207, 368, 46, 46)];
    _b57 = [[UIButton alloc] initWithFrame:CGRectMake(299, 368, 46, 46)];
    
    _b62 = [[UIButton alloc] initWithFrame:CGRectMake(69, 414, 46, 46)];
    _b64 = [[UIButton alloc] initWithFrame:CGRectMake(161, 414, 46, 46)];
    _b66 = [[UIButton alloc] initWithFrame:CGRectMake(253, 414, 46, 46)];
    _b68 = [[UIButton alloc] initWithFrame:CGRectMake(345, 414, 46, 46)];
    
    _b71 = [[UIButton alloc] initWithFrame:CGRectMake(23, 460, 46, 46)];
    _b73 = [[UIButton alloc] initWithFrame:CGRectMake(115, 460, 46, 46)];
    _b75 = [[UIButton alloc] initWithFrame:CGRectMake(207, 460, 46, 46)];
    _b77 = [[UIButton alloc] initWithFrame:CGRectMake(299, 460, 46, 46)];
    
    _b82 = [[UIButton alloc] initWithFrame:CGRectMake(69, 506, 46, 46)];
    _b84 = [[UIButton alloc] initWithFrame:CGRectMake(161, 506, 46, 46)];
    _b86 = [[UIButton alloc] initWithFrame:CGRectMake(253, 506, 46, 46)];
    _b88 = [[UIButton alloc] initWithFrame:CGRectMake(345, 506, 46, 46)];
    
    _bw11 = [[buttonWrapper alloc] init: 11]; _bw13 = [[buttonWrapper alloc] init: 13];
    _bw15 = [[buttonWrapper alloc] init: 15]; _bw17 = [[buttonWrapper alloc] init: 17];
    
    _bw22 = [[buttonWrapper alloc] init: 22]; _bw24 = [[buttonWrapper alloc] init: 24];
    _bw26 = [[buttonWrapper alloc] init: 26]; _bw28 = [[buttonWrapper alloc] init: 28];
    
    _bw31 = [[buttonWrapper alloc] init: 31]; _bw33 = [[buttonWrapper alloc] init: 33];
    _bw35 = [[buttonWrapper alloc] init: 35]; _bw37 = [[buttonWrapper alloc] init: 37];
    
    _bw42 = [[buttonWrapper alloc] init: 42]; _bw44 = [[buttonWrapper alloc] init: 44];
    _bw46 = [[buttonWrapper alloc] init: 46]; _bw48 = [[buttonWrapper alloc] init: 48];
    
    _bw51 = [[buttonWrapper alloc] init: 51]; _bw53 = [[buttonWrapper alloc] init: 53];
    _bw55 = [[buttonWrapper alloc] init: 55]; _bw57 = [[buttonWrapper alloc] init: 57];
    
    _bw62 = [[buttonWrapper alloc] init: 62]; _bw64 = [[buttonWrapper alloc] init: 64];
    _bw66 = [[buttonWrapper alloc] init: 66]; _bw68 = [[buttonWrapper alloc] init: 68];
    
    _bw71 = [[buttonWrapper alloc] init: 71]; _bw73 = [[buttonWrapper alloc] init: 73];
    _bw75 = [[buttonWrapper alloc] init: 75]; _bw77 = [[buttonWrapper alloc] init: 77];
    
    _bw82 = [[buttonWrapper alloc] init: 82]; _bw84 = [[buttonWrapper alloc] init: 84];
    _bw86 = [[buttonWrapper alloc] init: 86]; _bw88 = [[buttonWrapper alloc] init: 88];
    
    _board = [[NSMutableDictionary alloc] initWithCapacity:32];
    
    [_board setObject:_b11 forKey:@11]; [_board setObject:_b13 forKey:@13];
    [_board setObject:_b15 forKey:@15]; [_board setObject:_b17 forKey:@17];
    
    [_board setObject:_b22 forKey:@22]; [_board setObject:_b24 forKey:@24];
    [_board setObject:_b26 forKey:@26]; [_board setObject:_b28 forKey:@28];
    
    [_board setObject:_b31 forKey:@31]; [_board setObject:_b33 forKey:@33];
    [_board setObject:_b35 forKey:@35]; [_board setObject:_b37 forKey:@37];
    
    [_board setObject:_b42 forKey:@42]; [_board setObject:_b44 forKey:@44];
    [_board setObject:_b46 forKey:@46]; [_board setObject:_b48 forKey:@48];
    
    [_board setObject:_b51 forKey:@51]; [_board setObject:_b53 forKey:@53];
    [_board setObject:_b55 forKey:@55]; [_board setObject:_b57 forKey:@57];
    
    [_board setObject:_b62 forKey:@62]; [_board setObject:_b64 forKey:@64];
    [_board setObject:_b66 forKey:@66]; [_board setObject:_b68 forKey:@68];
    
    [_board setObject:_b71 forKey:@71]; [_board setObject:_b73 forKey:@73];
    [_board setObject:_b75 forKey:@75]; [_board setObject:_b77 forKey:@77];
    
    [_board setObject:_b82 forKey:@82]; [_board setObject:_b84 forKey:@84];
    [_board setObject:_b86 forKey:@86]; [_board setObject:_b88 forKey:@88];
    
    _boardWrapper = [[NSMutableDictionary alloc] initWithCapacity:32];
    
    [_boardWrapper setObject:_bw11 forKey:@11]; [_boardWrapper setObject:_bw13 forKey:@13];
    [_boardWrapper setObject:_bw15 forKey:@15]; [_boardWrapper setObject:_bw17 forKey:@17];
    
    [_boardWrapper setObject:_bw22 forKey:@22]; [_boardWrapper setObject:_bw24 forKey:@24];
    [_boardWrapper setObject:_bw26 forKey:@26]; [_boardWrapper setObject:_bw28 forKey:@28];
    
    [_boardWrapper setObject:_bw31 forKey:@31]; [_boardWrapper setObject:_bw33 forKey:@33];
    [_boardWrapper setObject:_bw35 forKey:@35]; [_boardWrapper setObject:_bw37 forKey:@37];
    
    [_boardWrapper setObject:_bw42 forKey:@42]; [_boardWrapper setObject:_bw44 forKey:@44];
    [_boardWrapper setObject:_bw46 forKey:@46]; [_boardWrapper setObject:_bw48 forKey:@48];
    
    [_boardWrapper setObject:_bw51 forKey:@51]; [_boardWrapper setObject:_bw53 forKey:@53];
    [_boardWrapper setObject:_bw55 forKey:@55]; [_boardWrapper setObject:_bw57 forKey:@57];
    
    [_boardWrapper setObject:_bw62 forKey:@62]; [_boardWrapper setObject:_bw64 forKey:@64];
    [_boardWrapper setObject:_bw66 forKey:@66]; [_boardWrapper setObject:_bw68 forKey:@68];
    
    [_boardWrapper setObject:_bw71 forKey:@71]; [_boardWrapper setObject:_bw73 forKey:@73];
    [_boardWrapper setObject:_bw75 forKey:@75]; [_boardWrapper setObject:_bw77 forKey:@77];
    
    [_boardWrapper setObject:_bw82 forKey:@82]; [_boardWrapper setObject:_bw84 forKey:@84];
    [_boardWrapper setObject:_bw86 forKey:@86]; [_boardWrapper setObject:_bw88 forKey:@88];
    
    //row/column stored as int -- location 26 -> row 2, column 3
    int row = 10;
    int column = 1;
    while (row + column < 90)
    {
        NSInteger position = row+column;
        NSNumber * val = [NSNumber numberWithInteger:position];
        buttonWrapper * bw = [_boardWrapper objectForKey:val];
        UIButton * uib = [_board objectForKey:val];
        UIImage * img;
        
        
        if (position < 40)
        {   //top of board = red pieces
            [bw switchToType:@"RED"];
            img = [UIImage imageNamed:@"redPiece.png"];
        }
        else if (position > 60)
        {   //bottom of board = white pieces
            [bw switchToType:@"WHITE"];
            img = [UIImage imageNamed:@"whitePice.png"];
        }
        else
        {   //middle of board has no pieces + shouldn't be clickable
            img = [UIImage imageNamed:@""];
            [bw switchToType:@"EMPTY"];
        }
        [uib setImage: img forState:UIControlStateNormal];
        [uib setTag:position];
        [self.view addSubview:uib];
        [uib setShowsTouchWhenHighlighted:TRUE];
        [uib addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchDown];
        
        column += 2;
        if (column > 8)
        {
            column = (column == 9) ? 2 : 1;
            row += 10;
        }
    }
}

- (IBAction) clicked:(id)sender;
{
    if (lastClickedLocation == 0)
    {   //first button clicked, mark which one - make sure not empty or other team button
        NSNumber * buttonNum = [NSNumber numberWithInteger:[sender tag]];
        buttonWrapper * bw = [_boardWrapper objectForKey:buttonNum];
        if (!bw.isEmpty &&
            (([playerTurn isEqualToString:@"WHITE"] && bw.isWhite) || ([playerTurn isEqualToString:@"RED"] && bw.isRed))
            )
        {
            lastClickedLocation = [sender tag];
        }
    }
    else
    {
        NSNumber * firstButtonNum = [NSNumber numberWithInteger:lastClickedLocation];
        NSNumber * secondButtonNum = [NSNumber numberWithInteger:[sender tag]];
        NSNumber * furtherButtonNum;
        buttonWrapper * firstbw = [_boardWrapper objectForKey:firstButtonNum];
        buttonWrapper * secondbw = [_boardWrapper objectForKey:secondButtonNum];
        UIButton * firstButton = [_board objectForKey:firstButtonNum];;
        UIButton * secondButton = [_board objectForKey:secondButtonNum];;
        
        //clicked button that's not next to last clicked button
        if (labs(lastClickedLocation - [sender tag]) != 9 && labs(lastClickedLocation - [sender tag]) != 11)
        {
            if (![firstbw isDifferent:secondbw] && !secondbw.isEmpty)
            {   //if both buttons are the same type, make second button the new first button
                lastClickedLocation = [sender tag];
                return;
            }
        }
        else
        {   //clicked second button thats next to first button
            
            NSInteger distance = firstbw.location - secondbw.location;
            buttonWrapper * furtherbw;
            if (distance == 11 && (firstbw.isWhite || firstbw.isKing)) //above left
            {
                if ([firstbw isDifferent:secondbw])
                {   //both are different colors - see if second button can be attacked
                    furtherButtonNum = [NSNumber numberWithInteger:lastClickedLocation - 22];
                    furtherbw = [_boardWrapper objectForKey:furtherButtonNum];
                    
                    if (furtherbw.isEmpty && firstbw.location > 30 && firstbw.location % 10 >= 3)
                    {   //attack
                        [self attack:furtherButtonNum
                            attacker:firstButton    attackerbw:firstbw
                            attacked:secondButton   attackedbw:secondbw];
                    } //else nothing should happen
                }
                else if (secondbw.isEmpty)
                {   //clicked empty button
                    [self moveToEmptySpace:firstButton btn1bw:firstbw btn2:secondButton btn2bw:secondbw];
                }
                else
                {   //clicked button of same team, make it new firstButton
                    lastClickedLocation = [sender tag];
                }
            }
            else if (distance == 9 && (firstbw.isWhite || firstbw.isKing)) //above right
            {
                if ([firstbw isDifferent:secondbw])
                {   //both are different colors - see if second button can be attacked
                    furtherButtonNum = [NSNumber numberWithInteger:lastClickedLocation - 18];
                    furtherbw = [_boardWrapper objectForKey:furtherButtonNum];
                    
                    if (furtherbw.isEmpty && firstbw.location > 30 && firstbw.location % 10 <= 6)
                    {   //attack
                        [self attack:furtherButtonNum
                            attacker:firstButton    attackerbw:firstbw
                            attacked:secondButton   attackedbw:secondbw];
                    } //else nothing should happen
                }
                else if (secondbw.isEmpty)
                {   //clicked empty button
                    [self moveToEmptySpace:firstButton btn1bw:firstbw btn2:secondButton btn2bw:secondbw];
                }
                else
                {   //clicked button of same team, make it new firstButton
                    lastClickedLocation = [sender tag];
                }
            }
            else if (distance == -9 && (firstbw.isRed || firstbw.isKing)) //below left
            {
                if ([firstbw isDifferent:secondbw])
                {   //both are different colors - see if second button can be attacked
                    furtherButtonNum = [NSNumber numberWithInteger:lastClickedLocation + 18];
                    furtherbw = [_boardWrapper objectForKey:furtherButtonNum];
                    
                    if (furtherbw.isEmpty && firstbw.location < 70 && firstbw.location % 10 >= 3)
                    {   //attack
                        [self attack:furtherButtonNum
                            attacker:firstButton    attackerbw:firstbw
                            attacked:secondButton   attackedbw:secondbw];
                    } //else nothing should happen
                }
                else if (secondbw.isEmpty)
                {   //clicked empty button
                    [self moveToEmptySpace:firstButton btn1bw:firstbw btn2:secondButton btn2bw:secondbw];
                }
                else
                {   //clicked button of same team, make it new firstButton
                    lastClickedLocation = [sender tag];
                }
            }
            else if (distance == -11 && (firstbw.isRed || firstbw.isKing)) //below right
            {
                if ([firstbw isDifferent:secondbw])
                {   //both are different colors - see if second button can be attacked
                    furtherButtonNum = [NSNumber numberWithInteger:lastClickedLocation + 22];
                    furtherbw = [_boardWrapper objectForKey:furtherButtonNum];
                    
                    if (furtherbw.isEmpty && firstbw.location < 70 && firstbw.location % 10 <= 6)
                    {   //attack
                        [self attack:furtherButtonNum
                            attacker:firstButton    attackerbw:firstbw
                            attacked:secondButton   attackedbw:secondbw];
                    } //else nothing should happen
                }
                else if (secondbw.isEmpty)
                {   //clicked empty button
                    [self moveToEmptySpace:firstButton btn1bw:firstbw btn2:secondButton btn2bw:secondbw];
                }
                else
                {   //clicked button of same team, make it new firstButton
                    lastClickedLocation = [sender tag];
                }
            }
        }
    }
}

-(void) moveToEmptySpace: (UIButton*) btn1
                  btn1bw: (buttonWrapper*) btn1bw
                    btn2: (UIButton*) btn2
                  btn2bw: (buttonWrapper*) btn2bw
{   //move btn1 to the empty space marked by btn2
    [self swapImages:btn1 image2:btn2];
    [btn1bw swapValues:btn2bw];
    lastClickedLocation = 0;
    [self nextPlayerTurn];
    [self makeKing:btn2 bw:btn2bw];
}

- (void) makeKing:(UIButton*) btn bw:(buttonWrapper*) bw
{   //check to make king
    if (((bw.isRed && bw.location > 80) || (bw.isWhite && bw.location < 20)) && !bw.isKing)
    {
        bw.isKing = TRUE;
        UIImage * img;
        if (bw.isRed)
        {
            img = [UIImage imageNamed:@"redKing.png"];
            [btn setImage:img forState:UIControlStateNormal];
        }
        else
        {
            img = [UIImage imageNamed:@"whiteKing.png"];
            [btn setImage:img forState:UIControlStateNormal];
        }
    }
}

- (void) attack:(NSNumber *) furtherButtonNum
       attacker: (UIButton*) firstButton    attackerbw: (buttonWrapper*) firstbw
       attacked: (UIButton*) secondButton   attackedbw: (buttonWrapper*) secondbw
{
    buttonWrapper * furtherbw = [_boardWrapper objectForKey:furtherButtonNum];
    UIButton * furtherButton = [_board objectForKey:furtherButtonNum];
    
    //increment lost pieces counter
    if ([secondbw isRed])
    {
        lostRedPieces++;
        [_lostRedLabel setText:[NSString stringWithFormat:@"%ld", lostRedPieces]];
    }
    else
    {
        lostWhitePieces++;
        [_lostWhiteLabel setText:[NSString stringWithFormat:@"%ld", lostWhitePieces]];
    }

    [firstbw attack: secondbw landingSpot: furtherbw];
    [self swapImages:firstButton image2:furtherButton]; //attacker image = empty, landing image = old attacker image
    [secondButton setImage:nil forState:UIControlStateNormal];//make attacked image = NULL
    lastClickedLocation = 0;
    [self makeKing:furtherButton bw:furtherbw];
    if (lostRedPieces >= 12)
    {
        //white wins
        [_whiteTurnSign setImage:[UIImage imageNamed:@"whiteWins.png"]];
        [self disableAllButtons];
    }
    else if (lostWhitePieces >= 12)
    {
        //red wins
        [_redTurnSign setImage:[UIImage imageNamed:@"redWins.png"]];
        [self disableAllButtons];
    }
    else
    {
        [self nextPlayerTurn];
    }
    
}

- (void) nextPlayerTurn
{
    playerTurn = ([playerTurn isEqualToString:@"WHITE"]) ? @"RED" : @"WHITE";
    if ([playerTurn isEqualToString:@"WHITE"])
    {
        [_whiteTurnSign setAlpha:1];
        [_redTurnSign setAlpha:0];
    }
    else
    {
        [_whiteTurnSign setAlpha:0];
        [_redTurnSign setAlpha:1];
    }
}
- (void) disableAllButtons
{
    for (id k in _board)
    {
        UIButton * btn = [_board objectForKey:k];
        [btn setEnabled:FALSE];
    }
}
- (void) swapImages: (UIButton *) btn1 image2:(UIButton *) btn2
{
    UIImage * temp = [btn1 imageForState:UIControlStateNormal];
    [btn1 setImage:[btn2 imageForState:UIControlStateNormal] forState: UIControlStateNormal];
    [btn2 setImage:temp forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(IBAction)restart:(id)sender
{
    //remove old buttons
    for (id k in _board)
    {
        UIButton * btn = [_board objectForKey:k];
        [btn removeFromSuperview];
        btn = nil;
    }
    [self createButtons];
    playerTurn = @"RED"; //nextPlayerTurn switches back to white
    [self nextPlayerTurn];
    [_whiteTurnSign setImage:[UIImage imageNamed:@"whiteTurn.png"]];
    [_redTurnSign setImage:[UIImage imageNamed:@"redTurn.png"]];
    lastClickedLocation = 0;
    lostRedPieces = 0;
    [_lostRedLabel setText:[NSString stringWithFormat:@"%ld", lostRedPieces]];
    lostWhitePieces = 0;
    [_lostWhiteLabel setText:[NSString stringWithFormat:@"%ld", lostWhitePieces]];
}

@end
