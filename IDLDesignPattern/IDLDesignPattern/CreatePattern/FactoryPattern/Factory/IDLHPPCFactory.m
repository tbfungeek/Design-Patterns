//
//  IDLHPPCFactory.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import "IDLHPPCFactory.h"

#import "IDLHPPCDevice.h"

@implementation IDLHPPCFactory

- (id<IDLProductProtocol>)createProduct {
    return [IDLHPPCDevice new];
}

@end
