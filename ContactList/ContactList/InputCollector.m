//
//  InputCollector.m
//  ContactList
//
//  Created by Derrick Park on 2017-04-21.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

- (instancetype)init
{
    self = [super init];
    if (self) {
        _history = [NSMutableArray new];
    }
    return self;
}

- (NSString *) inputForPrompt: (NSString *) promptString {
    NSLog(@"%@", promptString);
    char myStr[256];
    fgets(myStr, 256, stdin);
    NSString *input = [[NSString stringWithCString: myStr encoding: NSUTF8StringEncoding] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    [_history addObject:input];
    return input;
}
@end
