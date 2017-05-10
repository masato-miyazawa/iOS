//
//  QuestionManager.m
//  Maths
//
//  Created by Derrick Park on 2017-04-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array];
    }
    return self;
}

-(NSString *) timeOutput {
    Question *lastQuestion = [_questions objectAtIndex: [_questions count] - 1];
    Question *firstQuestion = [_questions objectAtIndex: 0];
    NSTimeInterval timeInterval = [[lastQuestion endTime] timeIntervalSinceDate:[firstQuestion startTime]];
    long sec = lroundf(timeInterval);
    int seconds = sec % 60;
    return [NSString stringWithFormat: @"total time: %ds, average time: %lus", seconds, seconds / [_questions count]];
}

@end
