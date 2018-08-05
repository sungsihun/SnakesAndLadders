//
//  PlayerManager.h
//  SnakesAndLadders
//
//  Created by NICE on 2018-08-05.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

@property (nonatomic) NSMutableArray *players;
@property (nonatomic) NSInteger currentIndex;

- (void)createPlayers:(NSInteger)numOfPlayers;
- (Player *)roll;
- (void)output;

@end
