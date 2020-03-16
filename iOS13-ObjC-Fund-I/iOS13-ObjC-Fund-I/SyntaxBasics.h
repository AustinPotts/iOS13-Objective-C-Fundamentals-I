//
//  SyntaxBasics.h
//  iOS13-ObjC-Fund-I
//
//  Created by Austin Potts on 3/16/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>


// Help with marking up optional values (everthing between between/end will be non optional)



NS_ASSUME_NONNULL_BEGIN


// SWIFT
//class SyntaxBasics: NSObject {
//    var largeNumber: int
//
//    init(largeNumber: Int) {
//        self.largeNumber = largeNumber
//        super.init()
//    }
//}

@interface SyntaxBasics : NSObject

// Properties

@property NSNumber *largeNumber; // ; must end most lines


// Initializers
- (instancetype)initWithLargeNumber:(NSNumber *)largeNumber;

//Methods


// - = instance method (actual object)
// + = class method (blueprint)

-(void)explorePrimitive;
- (void)exploreObjects;
- (void)exploreCollectionsWithArray:(NSArray *)shipCaptains;
- (void)exploreNumbers;


@end

NS_ASSUME_NONNULL_END
