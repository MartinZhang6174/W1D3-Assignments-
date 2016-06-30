//
//  GameController.m
//  Threelow
//
//  Created by Martin Zhang on 2016-06-29.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (instancetype)init {
    if (self = [super init]) {
        
        Dice *diceOne = [[Dice alloc]initWithRandomValue];
        Dice *diceTwo = [[Dice alloc]initWithRandomValue];
        Dice *diceThree = [[Dice alloc]initWithRandomValue];
        Dice *diceFour = [[Dice alloc]initWithRandomValue];
        Dice *diceFive = [[Dice alloc]initWithRandomValue];
        
        NSLog(@"These are your dices to start with:\n%ld\n%ld\n%ld\n%ld\n%ld",(long)diceOne.currentValue, (long)diceTwo.currentValue, (long)diceThree.currentValue, (long)diceFour.currentValue, (long)diceFive.currentValue);
        
        self.diceArray = @[diceOne, diceTwo, diceThree, diceFour, diceFive];
        self.heldDices = [NSMutableSet set];
    }
    return self;
}

- (void)rollDice {
    for (Dice * aDie in self.diceArray) {
        [aDie roll];
        NSLog(@"%ld", (long)aDie.currentValue);
    }
}

// Initwith methods are init methods that are onlu used once when declaring
// PROBLEM: WHEN YOU ARE HOLDING AN ITEM IN THE ARRAY, IT HOLDS THE ITEM(BY INDEX THOOUGH) IN THE INITIAL ARRAY CREATED BY THE FIRST INITIATION AT THE BEGINNING OF THE PROGRAM. I NEED TO CHANGE THAT BY DOING...

- (void)holdDice:(NSString *)diceBeingHeld
{
    NSInteger index = diceBeingHeld.integerValue;

    if (index >= 0 && index < self.diceArray.count - 1) {
        
        Dice * aDie = self.diceArray[index];
        
        [self.heldDices addObject:aDie];
        
        NSLog(@"The dice you chose to hold was %ld", (long)aDie.currentValue);
    }
    

    
//    
//    if([diceBeingHeld isEqualToString:@"1"] {
//        
//        [self.diceArray]
//
//        [self.heldDices = //append value in held NSMutableSet diceBeingHeld]
//    
//    }
}

@end
