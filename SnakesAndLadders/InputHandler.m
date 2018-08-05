//
//  InputHandler.m
//  SnakesAndLadders
//
//  Created by NICE on 2018-08-05.
//  Copyright © 2018 NICE. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *)getInput {
    char input[100];
    
    printf("> ");
    fgets(input, 100, stdin);
    
    NSString *inputString = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
    
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return inputString;
}

@end
