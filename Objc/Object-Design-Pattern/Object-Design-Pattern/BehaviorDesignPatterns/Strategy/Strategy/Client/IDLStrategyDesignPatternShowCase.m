//
//  IDLStrategyDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLStrategyDesignPatternShowCase.h"

//context
#import "IDLScaleCotext.h"

//strategy
#import "IDLScaleDiscountStategryA.h"
#import "IDLScaleDiscountStategryB.h"

@implementation IDLStrategyDesignPatternShowCase

#pragma mark - IDLDesignPatternShowCase

- (void)showCase {
    IDLScaleDiscountStategryA *stategryA = [[IDLScaleDiscountStategryA alloc] initWithScale:0.8];
    IDLScaleDiscountStategryB *stategryB = [[IDLScaleDiscountStategryB alloc] initWithDiscound:20];
    IDLScaleCotext *context = [IDLScaleCotext new];
    
    [context applyStrategry:stategryA];
    NSLog(@"Price after discound StategryA %f",[context priceAfterDiscount:200]);
    
    [context applyStrategry:stategryB];
    NSLog(@"Price after discound StategryB %f",[context priceAfterDiscount:200]);
}

@end
