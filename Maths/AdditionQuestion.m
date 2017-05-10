//
//  AdditionQuestion.m
//  Maths
//
//  Created by Derrick Park on 2017-04-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "AdditionQuestion.h"


@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    
    super.question = [NSString stringWithFormat:@"%li + %li = ?", (long) super.leftValue, (long) super.rightValue];
    super.answer = super.leftValue + super.rightValue;
}

@end
