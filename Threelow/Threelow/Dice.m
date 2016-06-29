//
//  Dice.m
//  Threelow
//
//  Created by Martin Zhang on 2016-06-29.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import "Dice.h"

@implementation Dice


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.currentValue = arc4random_uniform(6) + 1;
    }
    return self;
}

@end
