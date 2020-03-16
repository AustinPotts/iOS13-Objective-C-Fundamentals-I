//
//  SyntaxBasics.m
//  iOS13-ObjC-Fund-I
//
//  Created by Austin Potts on 3/16/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SyntaxBasics.h"

// Control + Command + up to flip between related files (.h,.m)

// Control + Command + Enter to add split screen file


@implementation SyntaxBasics

- (instancetype)initWithLargeNumber:(NSNumber *)largeNumber {
    self = [super init]; // Calling the NSOBject init
    if (self) { // if (self != nil)
    
        
        //always use the _ when setting variables in your init methods & when cleaning up things in your dealloc (deinit)
        _largeNumber = largeNumber;
        
    }
    return self;
}


@end
