//
//  main.m
//  SnakesAndLadders
//
//  Created by NICE on 2018-08-05.
//  Copyright © 2018 NICE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Player *player = [[Player alloc] init];
        
        NSLog(@"\n\n========== Snakes & Ladders==========\n\n========== Welcome!!! \n\n==========to start type 'roll' or 'r' ");
        
        
        while (TRUE) {
            
            if (player.gameOver == YES) {
                NSLog(@"========== GAME OVER ==========");
                break;
            }
            
            NSString *inputString = [[NSString alloc] init];
            inputString = [InputHandler getInput];
            if ([inputString  isEqual: @"roll"] || [inputString  isEqual: @"r"]){
                [player roll];
            }
        }
    }
    return 0;
}
