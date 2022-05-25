//
//  IDLCircle.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import "IDLCircle.h"

@interface IDLCircle ()

@end

@implementation IDLCircle

+ (instancetype)circleWithCircle:(IDLCircle *)circle {
    IDLCircle *otherCircle = [IDLCircle new];
    otherCircle.x = circle.x;
    otherCircle.y = circle.y;
    otherCircle.radius = circle.radius;
    return otherCircle;
}

- (instancetype)clone {
    return [IDLCircle circleWithCircle:self];
}

@end
