//
//  Person.m
//  Properties
//
//  Created by Derrick Park on 2017-05-02.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "Person.h"

@implementation Person {
    NSString *_name;
}

- (instancetype)initWithName: (NSString *) name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

-(NSString *) getName {
    return _name;
}

-(void) setName: (NSString *) name {
    _name = name;
}

@end

















