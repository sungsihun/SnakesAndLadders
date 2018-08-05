//
//  Player.h
//  SnakesAndLadders
//
//  Created by NICE on 2018-08-05.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject


@property (nonatomic) NSInteger currentSquare;

- (void)roll;

@end
