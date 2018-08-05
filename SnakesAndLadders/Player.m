//
//  Player.m
//  SnakesAndLadders
//
//  Created by NICE on 2018-08-05.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init {
    if (self = [super init]) {
        _currentSquare = 0;
        _gameLogic = @{
                        @4 : @10,
                        @9 : @21,
                       @17 : @-10,
                       @20 : @18,
                       @28 : @56,
                       @40 : @49,
                       @51 : @16,
                       @63 : @18,
                       @64 : @-4,
                       @89 : @-63,
                       @95 : @-20,
                       @99 : @-21
                       };
    }
    return self;
}

- (void)roll {
    NSInteger dice = arc4random_uniform(6) + 1;
    NSLog(@"Dice >>>> %ld", dice);
    
    self.currentSquare += dice;
    NSLog(@"Current Square >>>> %ld", self.currentSquare);
}

@end
