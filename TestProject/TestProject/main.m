//
//  main.m
//  TestProject
//
//  Created by Derrick Park on 2017-04-12.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

//#import <Foundation/Foundation.h>
#define MAX 100
#define true 1
#define false 0


struct car { int year; char brand[10];};
union student { double gpa; char name; };

typedef struct car Car;
typedef union student Student;
typedef char* string;
int main(int argc, const char * argv[]) {
    Car car1;
    car1.year = 100;
    Car * car3[10];

    Car * car2 = malloc(sizeof(struct car));
    (*car2).year = 2008;
    strcpy(car2->brand, "Toyota");
    
    free(car2);
    
    Student st1;
    st1.name = 'c';
    st1.gpa = 4.0;
//    
//    printf("%lf\n", st1.gpa);
    
    string my_string = "abcde";
    while(*my_string != '\0') {
        printf("%c\n", *my_string);
        my_string++;
    }
    
    
    
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//    }
    return 0;
}
