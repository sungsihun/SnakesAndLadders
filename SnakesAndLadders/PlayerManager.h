//
//  PlayerManager.h
//  SnakesAndLadders
//
//  Created by NICE on 2018-08-05.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayerManager : NSObject

@property (nonatomic) NSMutableArray *players;

-(void)createPlayers:(int)numOfPlayers;

@end
