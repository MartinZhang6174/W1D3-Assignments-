//
//  main.m
//  Threelow
//
//  Created by Martin Zhang on 2016-06-29.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController *gameStarts = [[GameController alloc]init];
        
        while (YES) {
            NSLog(@"What do you want to do?\nRoll -- Roll dices :-0\nQuit -- Quit program :-(\nHold -- hold a dice ;-0\nUnhold -- unhold a dice :-)\n");

            NSString *rollText1 = @"roll";
            NSString *rollText2 = @"Roll";
            NSString *quitText1 = @"quit";
            NSString *quitText2 = @"Quit";
            NSString *holdText1 = @"hold";
            NSString *holdText2 = @"Hold";
            NSString *unholdText1 = @"unhold";
            NSString *unholdText2 = @"Unhold";
            
            char rollCommand[10];
            fgets(rollCommand, 10, stdin);
            
            NSString *rollCommandAfterTrim = [[NSString stringWithUTF8String:rollCommand] stringByTrimmingCharactersInSet:
                                   [NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([rollCommandAfterTrim rangeOfString:rollText1].location != NSNotFound ||
                [rollCommandAfterTrim rangeOfString:rollText2].location != NSNotFound) {
                [gameStarts rollDice];

                
            }
            else if ([rollCommandAfterTrim rangeOfString:quitText1].location != NSNotFound ||
                     [rollCommandAfterTrim rangeOfString:quitText2].location != NSNotFound)
            {
            
                break;
            
            }
            else if([rollCommandAfterTrim rangeOfString:unholdText1].location != NSNotFound ||
                    [rollCommandAfterTrim rangeOfString:unholdText2].location != NSNotFound) {
                
                char diceBeingUnheld[10];
                
                NSLog(@"Tell me which one you want to unhold.");
                
                fgets(diceBeingUnheld, 10, stdin);
                NSString *unholdDiceNumberInputAfterTrim = [NSString stringWithUTF8String:diceBeingUnheld];
                NSString *trimmedUnheldString = [unholdDiceNumberInputAfterTrim stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
                [gameStarts unholdDice:trimmedUnheldString];
            }
            else if([rollCommandAfterTrim rangeOfString:holdText1].location != NSNotFound ||
                    [rollCommandAfterTrim rangeOfString:holdText2].location != NSNotFound) {
                // ask user for index
                
                char diceBeingHeld[10];
                
                
                NSLog(@"Tell me which one you want to hold.");
                
                fgets(diceBeingHeld, 10, stdin);
                NSString *holdDiceNumberInputAfterTrim = [NSString stringWithUTF8String:diceBeingHeld];
                NSString *trimmedHeldString = [holdDiceNumberInputAfterTrim stringByTrimmingCharactersInSet:
                                            [NSCharacterSet whitespaceAndNewlineCharacterSet]];
                [gameStarts holdDice: trimmedHeldString];
            }
            

        }
        
        
    }
    return 0;
}
