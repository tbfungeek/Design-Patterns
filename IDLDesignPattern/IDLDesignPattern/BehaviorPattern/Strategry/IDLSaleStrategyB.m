//
//  IDLSaleStrategyB.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLSaleStrategyB.h"

@interface IDLSaleStrategyB ()

@property(nonatomic, assign, readwrite) CGFloat offPercent;

@end

@implementation IDLSaleStrategyB

+ (instancetype)saleStrategyWithOffPercent:(CGFloat)offPercent {
    IDLSaleStrategyB *strategy = [IDLSaleStrategyB new];
    strategy.offPercent = offPercent;
    return strategy;
}

- (CGFloat)saleStrategy:(CGFloat)originalPrice {
    return originalPrice * self.offPercent;
}

@end
