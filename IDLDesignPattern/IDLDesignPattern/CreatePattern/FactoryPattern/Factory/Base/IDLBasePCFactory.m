//
//  IDLBasePCFactory.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import "IDLBasePCFactory.h"

@implementation IDLBasePCFactory

- (id<IDLProductProtocol>)createProduct {
    return nil;
}

- (void)showProduct {
    [[self createProduct] show];
}

@end
