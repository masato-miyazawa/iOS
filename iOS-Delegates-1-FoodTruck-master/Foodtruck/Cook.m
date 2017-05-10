//
//  Cook.m
//  Foodtruck
//
//  Created by Derrick Park on 2017-04-27.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Cook.h"

@implementation Cook

-(double)foodTruck:(FoodTruck *)truck priceForFood:(FoodType) food {
    switch (food) {
        case Sushi:
            return 10.5;
            break;
        case Burger:
            return 9.5;
        case BBQ:
            return 11.5;
        case Chicken:
            return 8.5;
        case Water:
            return 2.5;
        default:
            NSLog(@"Wrong type");
            return 0;
            break;
    }
}
@end
