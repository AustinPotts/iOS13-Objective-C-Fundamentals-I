//
//  main.m
//  iOS13-ObjC-Fund-I
//
//  Created by Austin Potts on 3/16/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h> // Used for frameworks 
#import "LSILog.h" // used for project files

#import "SyntaxBasics.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool { // automatic Reference Counting  (ARC) - auto release objects
        
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        
       // let honda = "Civic" //Swift
       // printf("I have a \(honda)") // Swift
        
        NSString *honda = @"Civic";  //Objective C is based on C
        NSLog(@"I have a %@ from %d", honda, 2010); // Using a string token to print (%@ = Object)
        //%d or %i = integer
        
        //Swift
        //let basics = SyntaxBasics(largeNumber: 23333333)
        
        
        // [SyntaxBasics alloc] = creating memory for our object (buying land to build house)
        
        //Building the house [[SyntaxBasics alloc] initWithLargeNumber:@2356777];
        
        //Alloc needed for each Object
        
        
        SyntaxBasics *basics = [[SyntaxBasics alloc] initWithLargeNumber:@2356777];
        
        //%li = long integer
        NSLog(@"number: %li", basics.largeNumber.longValue);
        
        //Swift
        // basics.explorePrimitives() call a funtion in swift
        [basics explorePrimitive];
        
        
        [basics exploreObjects];
        // Swift
        //        basics.exploreCollections(array: ["John", "Jim", "Sue"])
        [basics exploreCollectionsWithArray:@[@"Malcolm Reynolds",
                                              @"Jean-Luc Picard",
                                              @"James T. Kirk",
                                              @"Kathryn Janeway"]];
        [basics exploreNumbers];

    }
    return 0;
}
