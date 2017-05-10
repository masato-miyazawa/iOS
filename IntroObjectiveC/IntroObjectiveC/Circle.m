//
//  Circle.m
//  IntroObjectiveC
//
//  Created by Derrick Park on 2017-04-20.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "Circle.h"

@implementation Circle

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.radius = 0;
        self.name = @"default";
    }
    return self;
}

- (instancetype)initWithRadius: (float) radius andName: (NSString *) name
{
    self = [super init];
    if (self) {
        self.radius = radius;
        self.name = name;
    }
    return self;
}

- (float) area {
    return self.radius * self.radius * 3.14;
}


+ (float) areaWith: (float) radius {
    return radius * radius * 3.14;
}

@end
