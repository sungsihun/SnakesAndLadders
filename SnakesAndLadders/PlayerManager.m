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
    }
    return self;
}

- (void)createPlayers:(int)numOfPlayers {
    for (int i = 0; i < numOfPlayers; i++) {
        [self.players addObject:[NSString stringWithFormat:@"player%d", i+1]];
        NSLog(@"%@", self.players[i]);
    }
}

@end
