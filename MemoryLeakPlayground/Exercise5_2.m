//
// Created by Yuki Kokubun on 2022/05/26.
//

#import "Exercise5_2.h"


@implementation Exercise5_2 {
    NSObject *swift;
}

- (id)init:(NSObject *)fromSwift {
    self = [super init];
    if (self == nil) {
        return nil;
    }
    self.swift = fromSwift;
    return self;
}

@end