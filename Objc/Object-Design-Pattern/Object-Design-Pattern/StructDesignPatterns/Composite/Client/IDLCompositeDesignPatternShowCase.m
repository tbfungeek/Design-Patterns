//
//  IDLCompositeDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/4.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLCompositeDesignPatternShowCase.h"

//goods
#import "IDLBasicGoods.h"
#import "IDLGoodPackage.h"

@implementation IDLCompositeDesignPatternShowCase

#pragma mark IDLDesignPatternShowCase

- (void)showCase {
    
    IDLGoodPackage *goodPackage = [IDLGoodPackage new];
    [goodPackage addGoods:[[IDLBasicGoods alloc] initWithPrice:1]];
    [goodPackage addGoods:[[IDLBasicGoods alloc] initWithPrice:2]];
    [goodPackage addGoods:[[IDLBasicGoods alloc] initWithPrice:3]];
    [goodPackage addGoods:[[IDLBasicGoods alloc] initWithPrice:4]];
    [goodPackage addGoods:[[IDLBasicGoods alloc] initWithPrice:5]];
    
    IDLBasicGoods *good1 = [[IDLBasicGoods alloc] initWithPrice:6];
    IDLBasicGoods *good2 = [[IDLBasicGoods alloc] initWithPrice:7];
    IDLBasicGoods *good3 = [[IDLBasicGoods alloc] initWithPrice:8];
    IDLBasicGoods *good4 = [[IDLBasicGoods alloc] initWithPrice:9];
    IDLBasicGoods *good5 = [[IDLBasicGoods alloc] initWithPrice:10];
    
    NSMutableArray<id<IDLGoodsProtocol>> *goods = [NSMutableArray new];
    [goods addObject:goodPackage];
    [goods addObject:good1];
    [goods addObject:good2];
    [goods addObject:good3];
    [goods addObject:good4];
    [goods addObject:good5];
    
    
    NSInteger totoalPrice = 0;
    for (id<IDLGoodsProtocol> good in goods) {
        totoalPrice = totoalPrice + [good getPrice];
    }
    
    NSLog(@"Total Price:%ld",totoalPrice);
    
    
}

@end
