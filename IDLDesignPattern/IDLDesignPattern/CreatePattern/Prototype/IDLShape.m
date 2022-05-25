//
//  IDLShape.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import "IDLShape.h"

@interface IDLShape ()

@end

@implementation IDLShape

+ (instancetype)shapWithShap:(IDLShape *)shape {
    IDLShape *otherShape = [IDLShape new];
    otherShape.x = shape.x;
    otherShape.y = shape.y;
    return otherShape;
}

- (instancetype)clone {
    return [IDLShape shapWithShap:self];
}

@end
