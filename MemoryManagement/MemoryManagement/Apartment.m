//
//  Apartment.m
//  MemoryManagement
//
//  Created by Derrick Park on 2017-05-02.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "Apartment.h"

@implementation Apartment

- (instancetype)initWithNumber: (NSInteger) suite
{
    self = [super init];
    if (self) {
        _suiteNum = suite;
    }
    return self;
}

-(void)dealloc {
    NSLog(@"Apartment is dead");
}

@end
