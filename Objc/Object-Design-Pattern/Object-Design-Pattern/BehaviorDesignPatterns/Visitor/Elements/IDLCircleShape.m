//
//  IDLCircleShape.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/8.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLCircleShape.h"

@interface IDLCircleShape ()

@property(nonatomic, assign, readwrite) NSInteger circleRadius;

@end

@implementation IDLCircleShape

#pragma mark Initializer

- (instancetype)initWithCircleRadius:(NSInteger)circleRadius center:(CGPoint)center {
    if(self = [self initWithCenterX:center.x centerY:center.y]) {
        _circleRadius = circleRadius;
    }
    return self;
}

#pragma mark Overide

- (NSString *)accept:(IDLVisitor *)visitor {
    //交给visitor来做最后带回来结果
    return [visitor visitCircleShape:self];
}

@end
