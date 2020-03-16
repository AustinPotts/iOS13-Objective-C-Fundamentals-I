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

- (void)exploreObjects {
    //
    // Objects (class-based types)
    //
    NSLog(@"---------------Objects---------------");
    // NSString
    NSString *lambda = @"Go all in";
    NSLog(@"%@", lambda);  // %@ = Objective-C object
    // String concatenation/interpolation
    // "The length is " + "\(94)" // Swift
    // @"hello " + @"world"; // Invalid operands to binary expression ('NSString *' and 'NSString *')
    NSString *label = @"The length is";
    int length = 94;
    NSString *lengthString = [NSString stringWithFormat:@"%@ %d", label, length];
    NSLog(@"%@", lengthString);
    // `id` type used to store an object of any type
    // AnyObject
    id mysteryObject = @"An NSString Object";
    NSLog(@"%@", [mysteryObject description]);
    mysteryObject = @[@"Apple", @"Microsoft"];
    NSLog(@"%@", [mysteryObject description]);
    NSLog(@"---------------End Objects---------------");
}


- (void)exploreCollectionsWithArray:(NSArray *)shipCaptains {
    NSLog(@"---------------Collections---------------");
    
    //NSArray = constant array
    
    // Array - ordered collection of objects, immutable
    NSLog(@"Serenity: %@", shipCaptains[0]);
    // Array comparison
    NSArray *sameCaptains = @[@"Malcolm Reynolds",
                              @"Jean-Luc Picard",
                              @"James T. Kirk",
                              @"Kathryn Janeway"];
    // Swift
    //    if shipCaptains == sameCaptains {
    //
    //    }
    if ([shipCaptains isEqualToArray:sameCaptains]) {
        NSLog(@"Arrays are equal!");
    } else {
        NSLog(@"Arrays are not equal");
    }
    // for loop
    // Swift
//    for i in 0 ..< shipCaptains.count {
//        print(shipCaptains[i])
//    }
    // i++ = i += 1
    // for (variable; condition; increment)
    for (int i = 0; i < shipCaptains.count; i++) {  // c-style for loop
        NSLog(@"Captain on the bridge: %@", shipCaptains[i]);
    }
    for (NSString *captain in shipCaptains) { // for in loop
        NSLog(@"Captain on the bridge: %@", captain);
    }
    // Check element for membership
    if ([shipCaptains containsObject:@"Kathryn Janeway"]) {
        NSLog(@"U.S.S Voyager reporting for duty");
    }
    // Find index of object
    NSUInteger index = [shipCaptains indexOfObject:@"James T. Kirk"];
    if (index == NSNotFound) {
        NSLog(@"Captain not found!");
    } else {
        NSLog(@"Captain %@ was found at index: %lu", shipCaptains[index], (unsigned long)index);
    }
    // Same as above NSArray type, except can be mutated
    // note: array literal syntax can't be used for NSMutableArray
    // Swift
//    let array = [1, 2, 3] // constant
//    var array = [1, 2, 3]
//    array.append(4)
    NSMutableArray *mutableShipCaptains = [[NSMutableArray alloc] initWithObjects:@"Malcolm Reynolds", @"James T. Kirk", nil];
    [mutableShipCaptains addObject:@"Han Solo"];
    [mutableShipCaptains addObjectsFromArray:@[@"Jean-Luc Picard", @"Kathryn Janeway"]];
    NSLog(@"%@", mutableShipCaptains);
    
    
    // Dictionary - unordered collection of key-value pairs, immutable
    
    NSDictionary *occupations = @{@"Malcolm": @"Captain", @"Kaylee": @"Mechanic"};
    NSLog(@"%@", [occupations objectForKey:@"Malcolm"]);
    
    
    // NSMutableDictionary - same as above, but can be mutated
    // note: dictionary literal syntax can't be used for NSMutableDictionary
    NSMutableDictionary *mutableOccupations = [occupations mutableCopy];
    [mutableOccupations setObject:@"Public Relations" forKey:@"Jayne"];
    NSLog(@"%@", mutableOccupations);
    NSLog(@"---------------End Collections---------------");
}


- (void)exploreNumbers {
    //
    // NSNumber, a lightweight wrapper around the number primitives
    //
    NSLog(@"---------------NSNumber---------------");
    // Once converted to NSNumber, value can be converted back
    // to a primitive with methods shown below
    NSNumber *aBool = [NSNumber numberWithBool:NO];
    NSLog(@"%@", [aBool boolValue] ? @"YES" : @"NO");
    
    NSNumber *intAsNumber = [NSNumber numberWithInt:2147483647];
    NSLog(@"%i", [intAsNumber intValue]);
    
    NSNumber *longAsNumber = [NSNumber numberWithLong:9223372036854775807];
    NSLog(@"%li", [longAsNumber longValue]);
    
    NSNumber *floatAsNumber = [NSNumber numberWithFloat:26.99f];
    NSLog(@"%f", [floatAsNumber floatValue]);
    
    NSNumber *doubleAsNumber = [NSNumber numberWithDouble:26.99];
    NSLog(@"%f", [doubleAsNumber doubleValue]);
    
    // It's also possible to convert an NSNumber to a string
    NSString *asString = [self.largeNumber stringValue];
    NSLog(@"%@", asString);
    // The following literal shortcuts allow for easier NSNumber
    // initialization compared to the above methods
    NSNumber *boolLiteral = @NO;
    NSNumber *intLiteral = @42;
    NSNumber *longLiteral = @9223372036854775807L;
    NSNumber *floatLiteral = @26.99F;
    NSNumber *doubleLiteral = @26.99;
    NSLog(@"bool: %@, int: %@, long: %@, float: %@, double: %@", boolLiteral, intLiteral, longLiteral, floatLiteral, doubleLiteral);
    NSNumber *aNumber = @12.5;
    NSNumber *anotherNumber = @12.5;
    // Because both values are objects, == doesn't work in the usual way
    if (aNumber == anotherNumber) {
        NSLog(@"Numbers are equal");
    }
    else {
        NSLog(@"Numbers are not equal");
    }
    // NSNumber has a method for equating two number objects instead
    if ([anotherNumber isEqualToNumber:aNumber]) {
        NSLog(@"Numbers are equal");
    }
    else {
        NSLog(@"Numbers are not equal");
    }
    NSLog(@"---------------End NSNumber---------------");
}


@end
