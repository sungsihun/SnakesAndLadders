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
        _gameOver = NO;
        _currentSquare = 0;
        _gameLogic = @{
                        @4 : @14,
                        @9 : @31,
                       @17 : @7,
                       @20 : @38,
                       @28 : @84,
                       @40 : @59,
                       @51 : @67,
                       @63 : @81,
                       @64 : @60,
                       @89 : @26,
                       @95 : @75,
                       @99 : @78
                       };
    }
    return self;
}

- (void)roll {
    NSInteger dice = arc4random_uniform(6) + 1;
    NSLog(@"🎲 You rolled 🎲 >>>> %ld", dice);
    
    self.currentSquare += dice;
    
    if (self.currentSquare < 100) {
        NSLog(@"%@ landed on %ld", self.name, self.currentSquare);
        
        for (NSNumber *key in self.gameLogic) {
            
            if ([key isEqualToNumber:[NSNumber numberWithInteger:self.currentSquare]]) {
                
                if (key < self.gameLogic[key]){
                    NSLog(@"Stairway to heaven!");
                } else {
                    NSLog(@"🐍");
                }
                NSLog(@"You jumped from %ld to %@", self.currentSquare, self.gameLogic[key]);
                self.currentSquare = [self.gameLogic[key] intValue];
            }
        }
    } else {
        self.gameOver = YES;
    }
}

@end
