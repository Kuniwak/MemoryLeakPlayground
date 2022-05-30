#import "Exercise5_2.h"


@implementation Exercise5_2

- (id)init:(NSObject *)fromSwift {
    self = [super init];
    if (self == nil) {
        return nil;
    }
    _swift = fromSwift;
    _weight = [[Weight alloc] init];
    return self;
}

@end