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


//Swift
//func explorePrimitive(){
//}

- (void)explorePrimitives {
    //
    // Primitives - number types
    //
    NSLog(@"---------------Primitives---------------");
    // Integer
    // 4 bytes wide, -2,147,483,648 through 2,147,483,647
    
    // Long integer
    // 8 bytes wide, -9,223,372,036,854,775,808 through 9,223,372,036,854,775,807
    // Single precision floating-point, 32-bit number
    // Double precision floating-point, 64-bit number
    // Boolean
    // only two value choices, YES for true, NO for false
    //
    // Math
    //
    // All standard arithmetic operators apply: +, -, *, /, %
    // Integer division, result is always a whole number and not rounded
    // Double division, 1 double and 1 int operand, result is promoted to double
    // Floating point imprecision
    // Print statements show floating point numbers aren't as precise as they appear
    //
    // NSInteger
    //
    // autosizes itself based on current platform
    NSLog(@"---------------End Primitives---------------\n\n");
}

@end
