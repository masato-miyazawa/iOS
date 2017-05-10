//
//  FoodTruck.h
//  FoodTruck
//.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FoodTruck;

typedef enum { Sushi=0, BBQ, Burger, Chicken, Water } FoodType;

@protocol FoodTruckDelegate <NSObject>

-(double)foodTruck:(FoodTruck *)truck priceForFood:(FoodType) food;

@end

@interface FoodTruck : NSObject

@property (nonatomic, weak) id<FoodTruckDelegate> delegate;
@property FoodType foodType;

-(instancetype)initWithName:(NSString *)pun andFoodType:(FoodType)foodType;

-(void)serve:(int)orders;
-(void)cashOut;


@end
