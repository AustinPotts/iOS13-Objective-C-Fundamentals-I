//
//  main.m
//  iOS13-ObjC-Fund-I
//
//  Created by Austin Potts on 3/16/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h> // Used for frameworks 
#import "LSILog.h" // used for project files

int main(int argc, const char * argv[]) {
    @autoreleasepool { // automatic Reference Counting  (ARC) - auto release objects
        
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        
       // let honda = "Civic" //Swift
       // printf("I have a \(honda)") // Swift
        
        NSString *honda = @"Civic";  //Objective C is based on C
        NSLog(@"I have a %@ from %d", honda, 2010); // Using a string token to print (%@ = Object)
        //%d
    }
    return 0;
}
