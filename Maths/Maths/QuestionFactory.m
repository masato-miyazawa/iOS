//
//  QuestionFactory.m
//  Maths
//
//  Created by Derrick Park on 2017-04-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassNames= @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

-(Question *) generateRandomQuestion {
    NSString *questionType = [_questionSubclassNames objectAtIndex: arc4random_uniform(4)];
    return [[NSClassFromString(questionType) alloc] init];
}
@end
