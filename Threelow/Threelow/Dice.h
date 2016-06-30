//
//  Dice.h
//  Threelow
//
//  Created by Martin Zhang on 2016-06-29.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property NSInteger currentValue;

- (instancetype)initWithRandomValue;

- (void)roll;

@end
