//
//  Person.h
//  MemoryManagement
//
//  Created by Derrick Park on 2017-05-02.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Apartment;

@interface Person : NSObject

@property NSString *name;
@property (weak) Apartment *myApt;

- (instancetype)initWithName: (NSString *) name;

@end
