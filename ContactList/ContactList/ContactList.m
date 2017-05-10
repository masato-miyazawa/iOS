//
//  ContactList.m
//  ContactList
//
//  Created by Derrick Park on 2017-04-21.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactList = [[NSMutableArray alloc] init];
        _emailList = [NSMutableArray new];
    }
    return self;
}

-(void) addContact:(Contact *)newContact {

    [_contactList addObject:newContact];
    [_emailList addObject:[newContact email]];
//    BOOL found = NO;
//    for (Contact* contact in _contactList) {
//        if ([[contact email] isEqualToString:[newContact email]]) {
//            found = YES;
//        }
//    }
//    if (found) {
//        NSLog(@"Email already in use. Try again with a different email.");
//    } else {
//        [_contactList addObject:newContact];
//        [_emailList addObject:[newContact email]];
//    }
    
}

-(NSString *)description {
    NSMutableString *result = [NSMutableString new];
    for (Contact* contact in _contactList) {
        [result appendString: [contact description]];
        [result appendString: @"\n"];
    }
    return result;
}

-(NSInteger) findContactAtIndex: (NSInteger) i {
    for (Contact* contact in _contactList) {
        if (contact.index == i) {
            return i;
        }
    }
    return -1;
}

-(Contact *) findContactWithKeyword: (NSString *) keyword {
    for (Contact* contact in _contactList) {
        if ([[contact firstname] containsString:keyword]|| [[contact lastname] containsString:keyword] || [[contact email] containsString:keyword]) {
            return contact;
        }
        
    }
    return nil;
}

@end
