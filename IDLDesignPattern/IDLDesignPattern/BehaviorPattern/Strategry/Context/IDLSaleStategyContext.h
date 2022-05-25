//
//  IDLSaleStategyContext.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

#import "IDLStrategyProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLSaleStategyContext : NSObject

- (instancetype)initWithStrategy:(id<IDLStrategyProtocol>)strategy;

- (void)setStrategy:(id<IDLStrategyProtocol>)strategy;

- (CGFloat)finalPrice:(CGFloat)originalPrice;


@end

NS_ASSUME_NONNULL_END
