//
//  QuestionFactory.h
//  Maths
//
//  Created by Derrick Park on 2017-04-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property NSArray *questionSubclassNames;
-(Question *) generateRandomQuestion;

@end
