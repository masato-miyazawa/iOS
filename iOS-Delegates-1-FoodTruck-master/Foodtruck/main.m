//
//  main.m
//  FoodTruck
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "FileManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        [NSUserDefaults standardUserDefaults];
//        [NSFileManager defaultManager];
//        [NSNotificationCenter defaultCenter];
//        FileManager *fm = [FileManager defaultManager];
//        FileManager *fm1 = [FileManager defaultManager];
//        FileManager *fm = [FileManager defaultManager];
//        FileManager *fm1 = [FileManager defaultManager];
//        
//        NSLog(@"%@", fm);
//        NSLog(@"%@", fm1);
        
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:BBQ];
        
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:Sushi];
        
        // create instances of your delegate class
        Cook *cook1 = [[Cook alloc] init];
    
        // set truckA and truckB's delegate to your new instance.
        truckA.delegate = cook1;
        truckB.delegate = cook1;
        [truckA serve:10];
        [truckB serve:5];
        
        
        [truckA cashOut];
        [truckB cashOut];
    }
    return 0;
}
