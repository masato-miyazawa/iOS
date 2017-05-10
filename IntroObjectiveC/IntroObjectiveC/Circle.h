//
//  Circle.h
//  IntroObjectiveC
//
//  Created by Derrick Park on 2017-04-20.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "Phone.h"

@interface Circle : Phone

@property float radius;
@property NSString* name;

- (instancetype)initWithRadius: (float) radius andName: (NSString *) name;
- (float) area;
+ (float) areaWith: (float) radius;


@end
