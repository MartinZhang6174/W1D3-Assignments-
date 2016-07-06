//
//  GameController.h
//  Threelow
//
//  Created by Martin Zhang on 2016-06-29.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

- (void)rollDice;
- (void)holdDice:(NSString *)diceBeingHeld;
- (void)unholdDice:(NSString *)diceBeingUnheld;

@property (nonatomic, strong) NSArray *diceArray;

@property (nonatomic, strong) NSMutableSet *heldDices;





@end
