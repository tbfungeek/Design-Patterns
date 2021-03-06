//
//  IDLGoodPackage.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/4.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <UIKit/UIKit.h>

//protocols
#import "IDLGoodsProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLGoodPackage : NSObject<IDLGoodsProtocol>

- (void)addGoods:(id<IDLGoodsProtocol>)goods;

- (void)removeGoods:(id<IDLGoodsProtocol>)goods;

@end

NS_ASSUME_NONNULL_END
