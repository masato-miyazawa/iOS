//
//  Dice.h
//  Threelow
//
//  Created by Derrick Park on 2017-04-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property NSUInteger faceValue;
@property Boolean held;

+(instancetype)dice;
-(void) roll;

@end
