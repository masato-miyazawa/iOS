//
//  FileManager.m
//  Foodtruck
//
//  Created by Derrick Park on 2017-04-27.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "FileManager.h"

@implementation FileManager


+(FileManager *) defaultManager {
    static FileManager *defaultManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        defaultManager = [[FileManager alloc] init];
        
    });
    return defaultManager;
}





//static FileManager *defaultManager;
//
//+(void) initialize {
//    static Boolean isInitialized = false;
//    if (!isInitialized) {
//        defaultManager = [[FileManager alloc] init];
//        isInitialized = true;
//    }
//}
//
//+(FileManager *) defaultManager {
//    return defaultManager;
//}



@end
