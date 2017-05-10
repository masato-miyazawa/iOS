//
//  main.m
//  IntroObjectiveC
//
//  Created by Derrick Park on 2017-04-13.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Phone.h"
#import "Iphone.h"
#import "NSString+MyNewFeature.h"
#import "Circle.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        // insert code here...
        NSDate *date = [[NSDate alloc] init];
        
        NSDate *date2 = [[NSDate alloc] initWithTimeIntervalSince1970:12341234];
        
        NSDate *date3 = [NSDate date];
        
        NSDate *date4 = [NSDate dateWithTimeIntervalSince1970:123121523];
        
        NSString *st1 = [NSString stringWithFormat:@"My name is %@", @"Derrick"];
        
        NSString *st2 = [[NSString alloc] initWithFormat:@"My name is %@", @"Derrick"];
        
        
        Phone *p1 = [Phone new];
        [p1 nameOfPhone];
        Iphone *p2 = [Iphone new];
        [p2 nameOfPhone];
    
        NSString *myString = @"Today is 420";
        NSLog(@"Hello guys, %@", [myString replaceSpaceWithUnderscore]);
        
        Person *person1 = [Person new];
        [person1 name];
        [person1 setName:@"Hello"];
        
        NSString* a[] = {@"a", @"b", @"c"};
        (void) a;
        
        NSArray *myArr1 = @[@"a", @"b", @"c"];
        (void) myArr1;
        NSArray *myArr2 = [[NSArray alloc]initWithObjects:@"a",@"b",@"c", nil];
        
        [myArr2 objectAtIndex:0];
        (void) myArr2[0];
        
        
        NSMutableArray *mutArr = [NSMutableArray array];
        [mutArr addObject:@"Hello"];
        [mutArr addObject:@"Hola"];
        [mutArr removeObject:@"Hello"];
        
        Circle *c1 = [[Circle alloc] initWithRadius:10.0 andName:@"Circle one"];
        Circle *c2 = [[Circle alloc] initWithRadius:11.0 andName:@"Circle two"];
        
        [c1 area];
        [c2 area];
        
        [Circle areaWith:20];
        
        while (true) {
            
        }
                      

    }
    
    return 0;
}


