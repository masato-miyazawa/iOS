//
//  NSString+MyPigLatin.m
//  PigLatin
//
//  Created by Derrick Park on 2017-04-28.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "NSString+MyPigLatin.h"

@implementation NSString (MyPigLatin)


-(NSString *)stringByPigLatinization {
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"];
    NSArray *clusters = @[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl"];
    NSMutableArray *pigLatinized = [NSMutableArray array];
    
    for (NSString* word in [self componentsSeparatedByString:@" "]) {
        if ([clusters containsObject:[word substringToIndex:2]]) {
            NSString *pigLatin = [[[NSString stringWithFormat:@"%@%@ay", [word substringFromIndex:2], [word substringToIndex:2]] lowercaseString] capitalizedString];
            [pigLatinized addObject: pigLatin];

        }
        else if (![vowels characterIsMember:[word characterAtIndex:0]]) {
            NSString *pigLatin = [[[NSString stringWithFormat:@"%@%cay", [word substringFromIndex:1], [word characterAtIndex:0]] lowercaseString] capitalizedString];
            [pigLatinized addObject: pigLatin];
            
        } else {
            NSString *pigLatin = [[NSString stringWithFormat:@"%@ay", [word lowercaseString]] capitalizedString];
            [pigLatinized addObject: pigLatin];
        }
    }
    
    return [pigLatinized componentsJoinedByString:@" "];
    
}


@end
