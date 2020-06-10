//
//  IDLScaleDiscountStategryA.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLScaleDiscountStategryA.h"

@interface IDLScaleDiscountStategryA ()

@property(nonatomic, assign, readwrite) CGFloat scale;

@end

@implementation IDLScaleDiscountStategryA

#pragma mark - Initializer

- (instancetype)initWithScale:(CGFloat)scale {
    if(self = [super init]) {
        _scale = scale;
    }
    return self;
}

#pragma mark - IDLScaleStategryProtocol

- (CGFloat)excuteScaleStategry:(CGFloat)originPrice {
    return originPrice * self.scale;
}

@end
