//
//  IDLGoodPackage.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/4.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLGoodPackage.h"

@interface IDLGoodPackage ()

@property(nonatomic, strong, readwrite) NSMutableArray<id<IDLGoodsProtocol>> *package;

@end

@implementation IDLGoodPackage

#pragma mark Public

- (void)addGoods:(id<IDLGoodsProtocol>)goods {
    [self.package addObject:goods];
}

- (void)removeGoods:(id<IDLGoodsProtocol>)goods {
    if(self.package.count > 0) {
        [self.package removeLastObject];
    }
}

#pragma mark IDLGoodsProtocol

- (NSInteger)getPrice {
    NSInteger totalPrice = 0;
    for (id<IDLGoodsProtocol> goods in self.package) {
        totalPrice = totalPrice + [goods getPrice];
    }
    return totalPrice;
}

#pragma mark Getter/Setters

- (NSMutableArray<id<IDLGoodsProtocol>> *)package {
    if(!_package) {
        _package = [NSMutableArray new];
    }
    return _package;
}

@end
