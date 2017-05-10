//
//  AdditionQuestion.m
//  Maths
//
//  Created by Derrick Park on 2017-04-20.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _leftValue = arc4random_uniform(100);
        _rightValue = arc4random_uniform(100);
        _startTime = [NSDate date];
        
    }
    return self;
}

-(void) generateQuestion {}

-(NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval) answerTime {
    return [_endTime timeIntervalSinceDate: _startTime];
}
@end
