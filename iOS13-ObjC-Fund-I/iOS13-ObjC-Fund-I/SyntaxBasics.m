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
    int age = 33;
    NSLog(@"You are %i years old ", age); //%i or %d for Int
    // Long integer
    // 8 bytes wide, -9,223,372,036,854,775,808 through 9,223,372,036,854,775,807
    long milesFromTheSun = 9988898899L; //L = long
    NSLog(@"You are %ld miles from the sun", milesFromTheSun);
    
    // Single precision floating-point, 32-bit number
    float distance = -21.09f; // f = Float
    NSLog(@"You are %f from the sun", distance);
    
    // Double precision floating-point, 64-bit number
    double distance2 = -21.09f; // f = Float
    NSLog(@"You are %f from the sun and a double %f", distance, distance2);
    
    // Boolean
    // only two value choices, YES for true, NO for false
    BOOL isOn = NO; // YES;
    NSLog(@"is on: %d", isOn);
    NSLog(@"is on: %@", isOn ? @"YES" : @"NO");
    
    //
    // Math
    //
    
    // All standard arithmetic operators apply: +, -, *, /, %
    int integerDivision = 5 / 4; //cut off the decimal 1.25-> 1
    NSLog(@"integerDivision: %i", integerDivision);
    
    // Integer division, result is always a whole number and not rounded
    
    
    //Swift
    //let doubleDivision = Double(4)
    // Double division, 1 double and 1 int operand, result is promoted to double
    double doubleDivison = 5.0 / (double)4; //casting when type is in ()
    NSLog(@"doubleDivision: %f", doubleDivison);
    
    
    
    // Floating point imprecision
    // Print statements show floating point numbers aren't as precise as they appear
    NSLog(@"%0.8f", 0.1);
    NSLog(@"%0.17f", 4.2 - 4.1); //limiting decimal places after the .
    
    
    
    //
    // NSInteger
    //
    // autosizes itself based on current platform
    
    NSInteger anInteger = -5;
    NSUInteger aPositiveInteger = 80;
    NSLog(@"anInteger %li", (long)anInteger); //Casting (long) so it doesnt flip flop
    NSLog(@"aPositiveInteger %lu", (unsigned long)aPositiveInteger);
    
    
    NSLog(@"---------------End Primitives---------------\n\n");
}

@end
