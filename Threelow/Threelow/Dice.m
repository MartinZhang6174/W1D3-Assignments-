//
//  Dice.m
//  Threelow
//
//  Created by Martin Zhang on 2016-06-29.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//


#import "Dice.h"
#import "GameController.h"

@implementation Dice


- (instancetype)initWithRandomValue
{
    self = [super init];
    if (self) {
        self.currentValue = arc4random_uniform(6) + 1;
    }
//    
//    NSString *holdText1 = @"hold";
//    NSString *holdText2 = @"Hold";
//    
//    NSLog(@"What do you want to do next?\nHold -- hold dice :-)");
//    
//    char holdCommand[10];
//    
//    fgets(holdCommand, 10, stdin);
//    
//    NSString *holdCommandAfterTrim = [[NSString stringWithUTF8String:holdCommand] stringByTrimmingCharactersInSet:
//                                      [NSCharacterSet whitespaceAndNewlineCharacterSet]];
//    
//    if([holdCommandAfterTrim rangeOfString:holdText1].location != NSNotFound ||
//       [holdCommandAfterTrim rangeOfString:holdText2].location != NSNotFound) {
//        
//        Dice *diceHeld = [[Dice alloc]];
//    
//        NSLog(@"You held a dice.");
//        
//        
//    
//    }

    
    return self;

}

- (void)roll {
    self.currentValue = arc4random_uniform(6) + 1;
}

@end
