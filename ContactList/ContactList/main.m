//
//  main.m
//  ContactList
//
//  Created by Derrick Park on 2017-04-20.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int count = 0;
        ContactList *contactList = [[ContactList alloc] init];
        InputCollector *ic = [[InputCollector alloc] init];
        BOOL on = YES;
        
        while (on) {
            NSString *prompt = @"\nWhat would you like to do next\nnew - Create a new contact\nlist - List all contacts\nshow - Display details along with an index\nfind <keyword> - Find contact with a keyword\nhistory - View last three commands\nquit - Exit Application";
            
            NSString *input = [ic inputForPrompt:prompt];
            
            if ([input isEqualToString:@"quit"]) {
                NSLog(@"Bye.");
                on = NO;
                break;
            } else if ([input isEqualToString:@"new"]) {
                NSString *email = [ic inputForPrompt:@"Enter your email address: "];
                if (![[contactList emailList] containsObject:email]){
                    NSString *firstname = [ic inputForPrompt:@"Enter your firstname: "];
                    NSString *lastname = [ic inputForPrompt:@"Enter your lastname: "];
                    Contact *contact = [[Contact alloc] initWithFirstname:firstname lastname:lastname email:email index: count ];
                    while (true) {
                        NSString *phone = [ic inputForPrompt:@"Do you want to add a phone number? (y/n)\n"];
                        if ([phone isEqualToString:@"y"]) {
                            NSInteger type = [[ic inputForPrompt:@"Select the following option(0: Mobile, 1: Work, 2: Home): "] integerValue];
                            NSString *number = [ic inputForPrompt:@"Enter your phone number (eg. XXX-XXX-XXXX): "];
                            [contact addPhoneNumbers:(int) type numbers:number];
                        } else {
                            break;
                        }
                    }
                    [contactList addContact: contact];
                    count++;
                } else {
                    NSLog(@"\nEmail already in use. Try again with a different email.");
                }
                
                
            } else if ([input isEqualToString:@"list"]) {
                NSLog(@"%@", [contactList description]);
                
            } else if ([input isEqualToString:@"show"]) {
                NSInteger i = [contactList findContactAtIndex: [[ic inputForPrompt:@"Enter the index: "] integerValue]];
                if (i != -1) {
                    Contact * cont = [[contactList contactList] objectAtIndex:i];
                    NSLog(@"Firstname: %@\nLastname: %@\nE-mail: %@", [cont firstname], [cont lastname], [cont email]);
                } else {
                    NSLog(@"There is not contact info at index %li", (long)i);
                }
            } else if ([[input substringToIndex:4] isEqualToString:@"find"]){
                NSString *keyword = [input substringFromIndex:5];
                Contact *found = [contactList findContactWithKeyword:keyword];
                if (found != nil) {
                    NSLog(@"%@", [found description]);
                } else {
                    NSLog(@"There is not contact info with keyword %@", keyword);
                }
            } else if ([input isEqualToString:@"history"]) {
                
                if ([[ic history] count] >= 3) {
                    NSLog(@"%@\n%@\n%@\n", [[ic history] objectAtIndex: [[ic history] count] - 1],
                          [[ic history] objectAtIndex: [[ic history] count] - 2],
                          [[ic history] objectAtIndex: [[ic history] count] - 3]);
                } else if ([[ic history] count] == 2) {
                    NSLog(@"%@\n%@\n", [[ic history] objectAtIndex: 1],
                          [[ic history] objectAtIndex: 0]);
                } else {
                    NSLog(@"%@\n", [[ic history] objectAtIndex: 0]);
                }
                
            }
        }
        
    }
    return 0;
}
