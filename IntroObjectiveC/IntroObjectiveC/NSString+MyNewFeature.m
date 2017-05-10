//
//  NSString+MyNewFeature.m
//  IntroObjectiveC
//
//  Created by Derrick Park on 2017-04-20.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "NSString+MyNewFeature.h"

@implementation NSString (MyNewFeature)

-(NSString *) replaceSpaceWithUnderscore {
    NSString *newString = [self stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    return newString;
}

@end
