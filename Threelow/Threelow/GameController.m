//
//  GameController.m
//  Threelow
//
//  Created by Derrick Park on 2017-04-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

#define MAX_ROLL 5

@interface GameController()
{
    @private int rollCount;
}
@end
@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _displayDice = [NSMutableArray arrayWithObjects: [Dice dice], [Dice dice], [Dice dice],[Dice dice], [Dice dice], nil];
        rollCount = MAX_ROLL;
        
    }
    return self;
}

-(void) roll {
    if (rollCount > 0) {
        for (Dice *die in _displayDice) {
            if ([die held] != true) {
                [die roll];
            }
        }
        rollCount--;
        NSLog(@"Remaining Rolls: %d", rollCount);
    } else {
        NSLog(@"You can't roll more than %d times.", MAX_ROLL);
    }
    
    [self displayScore: false];
}

-(void) holdDie: (NSUInteger) die {
    if (![[_displayDice objectAtIndex:die] held]) {
        [[_displayDice objectAtIndex:die] setHeld: true];
        
    } else {
        [[_displayDice objectAtIndex:die] setHeld: false];
    }
    [self displayScore: false];
}

-(void) resetDice {
    for (Dice *die in _displayDice) {
        [die setHeld: false];
    }
    [self displayScore: false];
}

-(void) displayCurrentDeck {
    NSMutableString *currentDeck = [NSMutableString string];
    for (Dice *die in _displayDice) {
        [currentDeck appendFormat:@" %@ ", [die description]];
    }
    NSLog(@"%@", currentDeck);
}

-(void) holdAll {
    for (Dice *die in _displayDice) {
        if ([die held] != true) {
            [die setHeld: true];
        }
    }
}

-(void) displayScore:(Boolean) done {
    if (rollCount == 0 || done == true) {
        [self holdAll];
        NSLog(@" GAME OVER ");
    }
    NSInteger currentScore = 0;
    for (Dice *die in _displayDice) {
        if ([die held] == true) {
            if ([die faceValue] == 3) {
                currentScore += 0;
            } else {
                currentScore += [die faceValue];
            }
        }
    }
    NSLog(@"Remaining Rolls: %d", rollCount);
    NSLog(@"-----------------------");
    NSLog(@"--   Current Dice    --");
    [self displayCurrentDeck];
    NSLog(@"");
    NSLog(@"--    Total Score    --");
    NSLog(@"Score: %ld ", currentScore);
    NSLog(@"-----------------------");
    
}

@end
