//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Derrick Park on 2017-04-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    
    self.question = [NSString stringWithFormat:@"%li * %li = ?", (long) self.leftValue, (long) self.rightValue];
    self.answer = self.leftValue * self.rightValue;
}

@end
