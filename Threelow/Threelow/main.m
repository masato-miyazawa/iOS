//
//  main.m
//  Threelow
//
//  Created by Derrick Park on 2017-04-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "GameController.h"
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        InputCollector *input = [[InputCollector alloc] init];
        
        NSString *menu = @"\n'roll' to roll the dice\n'hold' to hold a dice\n'reset' to un-hold all dice\n'show' to see current dice\n'done' to end the game\n'display' to show current stats";

        GameController *player1 = [[GameController alloc] init];
//        GameController *player2 = [[GameController alloc] init];
        
        while (true) {
            NSString *command1 = [input inputForPrompt: menu];
            if ([command1 isEqualToString:@"roll"]) {
                [player1 roll];
            } else if ([command1 isEqualToString:@"hold"]) {
                NSUInteger dieNum = [[input inputForPrompt: @"Enter the number of the die: "] integerValue];
                [player1 holdDie: dieNum - 1];
            } else if ([command1 isEqualToString:@"reset"]) {
                [player1 resetDice];
            } else if ([command1 isEqualToString:@"done"]) {
                [player1 displayScore: true];
            } else if ([command1 isEqualToString:@"display"]) {
                [player1 displayScore: false];
            }
            
        }
        
    }
    return 0;
}
