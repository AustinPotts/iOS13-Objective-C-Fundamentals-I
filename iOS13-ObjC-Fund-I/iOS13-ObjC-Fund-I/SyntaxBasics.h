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


@property NSNumber *largeNumber; // ; must end most lines

- (instancetype)initWithLargeNumber:(NSNumber *)largeNumber;

@end

NS_ASSUME_NONNULL_END
