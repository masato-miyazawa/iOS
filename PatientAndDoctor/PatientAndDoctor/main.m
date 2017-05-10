//
//  main.m
//  PatientAndDoctor
//
//  Created by Derrick Park on 2017-04-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Doctor *doc1 = [[Doctor alloc] initWithName:@"Derrick" Specializantion:@"Surgeon"];
        Patient *pat1 = [[Patient alloc] initWithName:@"Ryu" Age:30 HealthCard:true];
        
        if([pat1 visitDoctor:doc1]) {
            NSLog(@"\n%@", pat1);
            [pat1 requestMedication:doc1];
        } else {
            NSLog(@"Bye");
        }
        
        
        
    }
    return 0;
}
