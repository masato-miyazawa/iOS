//
//  ContactList.h
//  ContactList
//
//  Created by Derrick Park on 2017-04-21.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
@interface ContactList : NSObject

@property NSMutableArray *contactList;
@property NSMutableArray *emailList;

-(void) addContact: (Contact *) newContact;
-(NSInteger) findContactAtIndex: (NSInteger) i;
-(Contact *) findContactWithKeyword: (NSString *) keyword;

@end
