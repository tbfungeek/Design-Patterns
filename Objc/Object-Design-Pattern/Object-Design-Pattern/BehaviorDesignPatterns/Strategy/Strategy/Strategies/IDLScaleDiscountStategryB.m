//
//  IDLScaleDiscountStategryB.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLScaleDiscountStategryB.h"

@interface IDLScaleDiscountStategryB ()

@property(nonatomic, assign, readwrite) NSInteger  discount;

@end

@implementation IDLScaleDiscountStategryB

- (instancetype)initWithDiscound:(NSInteger)discount {
    if(self = [super init]) {
        _discount = discount;
    }
    return self;
}

#pragma mark - IDLScaleStategryProtocol

- (CGFloat)excuteScaleStategry:(CGFloat)originPrice {
    return originPrice - self.discount;
}

@end
