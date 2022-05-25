//
//  IDLSaleStategyContext.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLSaleStategyContext.h"

@interface IDLSaleStategyContext ()

@property (nonatomic, strong) id<IDLStrategyProtocol> strategy;

@end

@implementation IDLSaleStategyContext

#pragma mark - Initializer
- (instancetype)initWithStrategy:(id<IDLStrategyProtocol>)strategy {
    if (self = [super init]) {
        _strategy = strategy;
    }
    return self;
}

- (void)setStrategy:(id<IDLStrategyProtocol>)strategy {
    _strategy = strategy;
}

- (CGFloat)finalPrice:(CGFloat)originalPrice {
    return [self.strategy saleStrategy:originalPrice];
}

@end
