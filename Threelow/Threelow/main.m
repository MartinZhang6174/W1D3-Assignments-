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
            NSLog(@"What do you want to do?\nRoll -- Roll dices :-0\nQuit -- Quit program :-(\nHold -- hold a dice ;-0");

            NSString *rollText1 = @"roll";
            NSString *rollText2 = @"Roll";
            NSString *quitText1 = @"quit";
            NSString *quitText2 = @"Quit";
            NSString *holdText1 = @"hold";
            NSString *holdText2 = @"Hold";
            
            char rollCommand[10];
            fgets(rollCommand, 10, stdin);
            
            NSString *rollCommandAfterTrim = [[NSString stringWithUTF8String:rollCommand] stringByTrimmingCharactersInSet:
                                   [NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([rollCommandAfterTrim rangeOfString:rollText1].location != NSNotFound ||
                [rollCommandAfterTrim rangeOfString:rollText2].location != NSNotFound) {
                [gameStarts rollDice];

//                if (k = 0; k < 5; k ++) {
//                    
//                    NSLog(<#NSString * _Nonnull format, ...#>);
//                    
//                }
                
            }
            else if ([rollCommandAfterTrim rangeOfString:quitText1].location != NSNotFound ||
                    [rollCommandAfterTrim rangeOfString:quitText2].location != NSNotFound)
            {
            
                break;
            
            }
            else if([rollCommandAfterTrim rangeOfString:holdText1].location != NSNotFound ||
               [rollCommandAfterTrim rangeOfString:holdText2].location != NSNotFound) {
                // ask user for index
                
                char diceBeingHeld[10];
                
                NSString *diceNumberInputAfterTrim = [[NSString stringWithUTF8String:diceBeingHeld] stringByTrimmingCharactersInSet:
                                                  [NSCharacterSet whitespaceAndNewlineCharacterSet]];
                
                NSLog(@"Tell me which one you want to hold.");
                
                fgets(diceBeingHeld, 10, stdin);
                
                [gameStarts holdDice: diceNumberInputAfterTrim];
            }

        }
        
        
    }
    return 0;
}
