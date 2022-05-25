//
//  IDLRectangle.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import "IDLRectangle.h"

@implementation IDLRectangle

+ (instancetype)rectTangleWithRectTangle:(IDLRectangle *)rectangle {
    IDLRectangle *otherRectangle = [IDLRectangle new];
    otherRectangle.x = rectangle.x;
    otherRectangle.y = rectangle.y;
    otherRectangle.width = rectangle.width;
    otherRectangle.height = rectangle.height;
    return otherRectangle;
}

- (instancetype)clone {
    return [IDLRectangle rectTangleWithRectTangle:self];
}


@end
