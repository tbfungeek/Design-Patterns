//
//  IDLDotShape.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/8.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLDotShape.h"

@interface IDLDotShape ()

@property(nonatomic, assign, readwrite) NSInteger dotSize;

@end

@implementation IDLDotShape

#pragma mark Initializer

- (instancetype)initWithDotSize:(NSInteger)dotSize center:(CGPoint)center {
    
    if (self = [super initWithCenterX:center.x centerY:center.y]) {
        _dotSize = dotSize;
        
    }
    return self;
}

#pragma mark Overide

- (NSString *)accept:(IDLVisitor *)visitor {
    //交给visitor来做最后带回来结果
    return  [visitor visiteDotShape:self];
}

@end
