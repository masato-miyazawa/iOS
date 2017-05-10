//
//  Contact.m
//  ContactList
//
//  Created by Derrick Park on 2017-04-21.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithFirstname:(NSString *) firstname lastname: (NSString *) lastname email: (NSString *) email index: (NSInteger) index
{
    self = [super init];
    if (self) {
        _firstname = firstname;
        _lastname = lastname;
        _email = email;
        _index = index;
        _phoneNumber = [NSMutableDictionary new];
        _numbers = [NSMutableArray new];
    }
    return self;
}

-(NSString *)description {
    return [NSString stringWithFormat:@"%ld: <%@ %@> (%@)", _index, _firstname, _lastname, _email];
}

-(void) addPhoneNumbers:(enum Phone) type numbers: (NSString *) number {
    switch (type) {
        case Mobile:
            [_phoneNumber setObject:number forKey:@"Mobile"];
            break;
        case Work:
            [_phoneNumber setObject:number forKey:@"Work"];
            break;
        case Home:
            [_phoneNumber setObject:number forKey:@"Home"];
            break;
        default:
            NSLog(@"Wrong type!");
            break;
    }
}



@end
