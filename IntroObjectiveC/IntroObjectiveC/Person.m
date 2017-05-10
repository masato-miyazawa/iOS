//
//  Person.m
//  IntroObjectiveC
//
//  Created by Derrick Park on 2017-04-19.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "Person.h"
//#import "Person_MyExtension.h"

@interface Person ()

@property int age;

@end

@implementation Person

- (instancetype)init
{
    self = [self initWithName:@"" WithAge:0];
    return self;
}

- (instancetype)initWithName: (NSString *) name WithAge: (int) age
{
    self = [super init];
    if (self) {
        _age = age;
        _name = name;
    }
    return self;
}

+ (void) printSomething {
    NSLog(@"Hello");
}

- (void) print_name: (NSString *) name withAge:(int)age {
    
    NSLog(@"This person's name is %@, and %d years old.", name , age);
}


@end
