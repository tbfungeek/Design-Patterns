//
//  IDLScaleDiscountStategryB.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//protocol
#import "IDLScaleStategryProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLScaleDiscountStategryB : NSObject<IDLScaleStategryProtocol>

- (instancetype)initWithDiscound:(NSInteger)discount;

@end

NS_ASSUME_NONNULL_END
