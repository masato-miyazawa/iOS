//
//  GameController.h
//  Threelow
//
//  Created by Derrick Park on 2017-04-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property NSMutableArray *displayDice;

-(void) roll;
-(void) holdDie: (NSUInteger) die;
-(void) displayCurrentDeck;
-(void) resetDice;
-(void) displayScore:(Boolean) done;

@end
