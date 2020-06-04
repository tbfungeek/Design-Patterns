//
//  IDLBasicGoods.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/4.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLBasicGoods.h"

@interface IDLBasicGoods ()

@property(nonatomic, assign, readwrite) NSInteger price;

@end

@implementation IDLBasicGoods

#pragma mark Initializer

- (instancetype)initWithPrice:(NSInteger)price {
    if(self = [super init]) {
        self.price = price;
    }
    return self;
}

#pragma mark IDLGoodsProtocol

- (NSInteger)getPrice {
    return self.price;
}

@end
