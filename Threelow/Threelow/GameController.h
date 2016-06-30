//
//  GameController.h
//  Threelow
//
//  Created by Martin Zhang on 2016-06-29.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property (nonatomic, strong) NSArray *diceArray;

@property (nonatomic, strong) NSMutableSet *heldDices;

- (void)rollDice;
- (void)holdDice:(NSString *)diceBeingHeld;


@end
