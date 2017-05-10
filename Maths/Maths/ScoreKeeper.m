//
//  ScoreKeeper.m
//  Maths
//
//  Created by Derrick Park on 2017-04-20.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _right = 0;
        _wrong = 0;
    }
    return self;
}
- (NSString *)description
{
    CGFloat r = [[NSNumber numberWithInteger:self.right] floatValue];
    CGFloat w = [[NSNumber numberWithInteger:self.wrong] floatValue];
    CGFloat percentage =  (r / (r + w)) * 100;
    return [NSString stringWithFormat:@"score: %zd right, %zd wrong ---- %.1f%%", self.right, self.wrong, percentage];
}

@end
