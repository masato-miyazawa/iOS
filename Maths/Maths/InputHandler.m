//
//  InputHandler.m
//  Maths
//
//  Created by Derrick Park on 2017-04-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *) getUserInput {
    char myStr[256];
    fgets(myStr, 256, stdin);
    NSString *input = [[NSString stringWithCString: myStr encoding: NSUTF8StringEncoding] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return input;
}

@end
