//
//  Person.h
//  Properties
//
//  Created by Derrick Park on 2017-05-02.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy, getter=getName, setter=setYourName:) NSString *name;
@property (assign) NSInteger age;





@end
