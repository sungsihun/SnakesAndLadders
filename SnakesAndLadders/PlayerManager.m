//
//  PlayerManager.m
//  SnakesAndLadders
//
//  Created by NICE on 2018-08-05.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

- (instancetype)init {
    if (self = [super init]) {
        _players = [[NSMutableArray alloc] init];
        _currentIndex = 0;
    }
    return self;
}

- (void)createPlayers:(int)numOfPlayers {
    for (int i = 0; i < numOfPlayers; i++) {

        [NSString stringWithFormat:@"player%d", i];
        
        Player *player = [[Player alloc] init];
        [self.players addObject:player];
    }
}

- (Player *)roll {
    NSInteger currentPlayerArrayIndex = self.currentIndex % [self.players count];
    
    Player *currentPlayer = self.players[currentPlayerArrayIndex];
    
    NSInteger currentPlayerNumber = currentPlayerArrayIndex + 1;
    
    [currentPlayer setName:[NSString stringWithFormat:@"player%ld", currentPlayerNumber]];
    [currentPlayer roll];
    
    self.currentIndex++;
    
    return currentPlayer;
    
}

- (void)output {
    
}


@end
