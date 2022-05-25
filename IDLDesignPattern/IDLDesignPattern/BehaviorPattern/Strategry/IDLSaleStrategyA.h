//
//  IDLBaseSaleStrategy.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

#import "IDLStrategyProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLSaleStrategyA : NSObject<IDLStrategyProtocol>

+ (instancetype)saleStrategyWithOffPrice:(CGFloat)offPrice;

@end

NS_ASSUME_NONNULL_END
