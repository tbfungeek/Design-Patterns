//
//  IDLSaleStrategyB.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

#import "IDLStrategyProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLSaleStrategyB : NSObject<IDLStrategyProtocol>

+ (instancetype)saleStrategyWithOffPercent:(CGFloat)offPercent;

@end

NS_ASSUME_NONNULL_END
