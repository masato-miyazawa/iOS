//
//  main.m
//  Maths
//
//  Created by Derrick Park on 2017-04-20.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "Question.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"MATHS!\n\n\n");
        BOOL gameon = YES;
        ScoreKeeper *sk = [[ScoreKeeper alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        while (gameon) {
            Question *q1 = [questionFactory generateRandomQuestion];
            [[questionManager questions] addObject: q1];
            NSLog(@"%@", [q1 question]);
            
            NSString *input = [InputHandler getUserInput];
            
            if ([input isEqualToString:@"quit"]) {
                gameon = NO;
            }
            else if ([q1 answer] == [input integerValue]) {
                NSLog(@"Right!");
                sk.right++;
                
            } else {
                NSLog(@"Wrong!");
                sk.wrong++;
            }
            NSLog(@"%@", sk);
            NSLog(@"%@", [questionManager timeOutput]);
        }
        NSLog(@"Game Over");
        
    }
    return 0;
}
