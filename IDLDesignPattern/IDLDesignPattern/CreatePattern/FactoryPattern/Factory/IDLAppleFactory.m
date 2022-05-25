//
//  IDLHuaWeiFactory.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import "IDLAppleFactory.h"

#import "IDLApplePCDevice.h"

@implementation IDLAppleFactory

- (id<IDLProductProtocol>)createProduct {
    return [IDLApplePCDevice new];
}

@end
