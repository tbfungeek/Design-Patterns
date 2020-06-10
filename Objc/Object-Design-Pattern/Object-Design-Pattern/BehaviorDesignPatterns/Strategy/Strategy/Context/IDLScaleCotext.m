//
//  IDLScaleCotext.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLScaleCotext.h"

//protocol
#import "IDLScaleStategryProtocol.h"

@interface IDLScaleCotext ()

@property(nonatomic, strong, readwrite) id<IDLScaleStategryProtocol> stragry;

@end

@implementation IDLScaleCotext

#pragma mark - Public

- (void)applyStrategry:(id<IDLScaleStategryProtocol>)stragry {
    self.stragry = stragry;
}

- (CGFloat)priceAfterDiscount:(CGFloat)originPrice {
    return [self.stragry excuteScaleStategry:originPrice];
}

@end
