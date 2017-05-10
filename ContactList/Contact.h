//
//  Contact.h
//  ContactList
//
//  Created by Derrick Park on 2017-04-21.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

enum Phone {Mobile, Work, Home};

@property NSString *firstname;
@property NSString *lastname;
@property NSString *email;
@property NSInteger index;
@property NSMutableDictionary *phoneNumber;
@property NSMutableArray *numbers;

- (instancetype)initWithFirstname:(NSString *) firstname lastname: (NSString *) lastname email: (NSString *) email index: (NSInteger) index;
-(void) addPhoneNumbers:(enum Phone) type numbers: (NSString *) number;

@end
