//
//  IDLBaseShape.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/8.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLBaseShape.h"

@interface IDLBaseShape ()

@property(nonatomic, assign, readwrite) NSInteger centerX;

@property(nonatomic, assign, readwrite) NSInteger centerY;

@end

@implementation IDLBaseShape

#pragma mark Initializer

- (instancetype)initWithCenterX:(NSInteger)centerX centerY:(NSInteger)centerY {
    if(self = [super init]) {
        _centerX = centerX;
        _centerY = centerY;
    }
    return self;
}

#pragma mark IDLElementProtocol

- (NSString *)accept:(IDLVisitor *)visitor {
    return @"";
}

@end
