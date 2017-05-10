//
//  Person.m
//  MemoryManagement
//
//  Created by Derrick Park on 2017-05-02.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName: (NSString *) name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"This Person is dead");
}

@end
