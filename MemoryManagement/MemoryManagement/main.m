//
//  main.m
//  MemoryManagement
//
//  Created by Derrick Park on 2017-05-02.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Apartment.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Person *derrick = [[Person alloc] initWithName:@"Derrick"];
        Apartment *apt = [[Apartment alloc] initWithNumber:123];
        
        derrick.myApt = apt;
        apt.tenant = derrick;
        

        derrick = nil;
        apt = nil;
        
        
    }
    return 0;
}
