//
//  IDLScaleCotext.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <UIKit/UIKit.h>

//protocol
#import "IDLScaleStategryProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLScaleCotext : NSObject

- (void)applyStrategry:(id<IDLScaleStategryProtocol>)stragry;

- (CGFloat)priceAfterDiscount:(CGFloat)originPrice;

@end

NS_ASSUME_NONNULL_END
