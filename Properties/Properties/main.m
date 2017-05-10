//
//  main.m
//  Properties
//
//  Created by Derrick Park on 2017-05-02.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        Person *derrick = [[Person alloc]init];
        NSMutableString *name = [[NSMutableString alloc]initWithString:@"Ayako"];
        
        [derrick setYourName:name];
        [derrick getName];
        NSLog(@"%@", derrick.name);
        [name appendString:@" is not Derrick"];
        NSLog(@"%@", derrick.name);
        
    }
    return 0;
}









