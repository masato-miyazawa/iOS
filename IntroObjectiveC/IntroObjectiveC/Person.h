//
//  Person.h
//  IntroObjectiveC
//
//  Created by Derrick Park on 2017-04-19.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject

@property NSString *name;

- (instancetype)initWithName: (NSString *) name WithAge: (int) age;

+ (void) printSomething;


@end
