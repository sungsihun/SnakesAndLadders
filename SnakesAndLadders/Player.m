//
//  Player.m
//  SnakesAndLadders
//
//  Created by NICE on 2018-08-05.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "Player.h"

@implementation Player

- (void)roll {
    NSUInteger dice = arc4random_uniform(6) + 1;
    NSLog(@"%ld", dice);
}

@end
