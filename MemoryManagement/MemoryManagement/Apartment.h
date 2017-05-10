//
//  Apartment.h
//  MemoryManagement
//
//  Created by Derrick Park on 2017-05-02.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;
@interface Apartment : NSObject

@property NSInteger suiteNum;
@property Person *tenant;

- (instancetype)initWithNumber: (NSInteger) suite;
@end
