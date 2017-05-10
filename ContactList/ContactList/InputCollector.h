//
//  InputCollector.h
//  ContactList
//
//  Created by Derrick Park on 2017-04-21.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property NSMutableArray *history;
- (NSString *) inputForPrompt: (NSString *) promptString;

@end
