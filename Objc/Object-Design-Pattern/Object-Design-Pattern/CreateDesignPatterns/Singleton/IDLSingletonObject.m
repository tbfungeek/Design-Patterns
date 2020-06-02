//
//  IDLSingletonObject.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/2.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLSingletonObject.h"

@implementation IDLSingletonObject

+ (instancetype)shared {
    static IDLSingletonObject *instance =  nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [IDLSingletonObject new];
    });
    return instance;
}

@end
