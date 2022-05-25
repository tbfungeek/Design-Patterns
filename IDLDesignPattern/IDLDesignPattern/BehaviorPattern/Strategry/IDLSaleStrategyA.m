//
//  IDLBaseSaleStrategy.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLSaleStrategyA.h"

@interface IDLSaleStrategyA ()

@property(nonatomic, assign, readwrite) CGFloat offPrice;

@end

@implementation IDLSaleStrategyA

+ (instancetype)saleStrategyWithOffPrice:(CGFloat)offPrice {
    IDLSaleStrategyA *strategy = [IDLSaleStrategyA new];
    strategy.offPrice = offPrice;
    return strategy;
}

- (CGFloat)saleStrategy:(CGFloat)originalPrice {
    return originalPrice - self.offPrice;
}

@end
