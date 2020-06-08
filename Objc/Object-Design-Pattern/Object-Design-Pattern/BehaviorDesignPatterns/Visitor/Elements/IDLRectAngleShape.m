//
//  IDLRectAngleShape.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/8.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLRectAngleShape.h"

@interface IDLRectAngleShape ()

@property(nonatomic, assign, readwrite) NSInteger width;

@property(nonatomic, assign, readwrite) NSInteger height;

@end

@implementation IDLRectAngleShape

#pragma mark Initializer

- (instancetype)initWithWidth:(NSInteger)width height:(NSInteger)height center:(CGPoint)center {
    
    if ([self initWithCenterX:center.x centerY:center.y]) {
        _width = width;
        _height = height;
    }
    return self;
}

#pragma mark Overide

- (NSString *)accept:(IDLVisitor *)visitor {
    //交给visitor来做最后带回来结果
    return [visitor visitRectAngleShape:self];
}

@end
