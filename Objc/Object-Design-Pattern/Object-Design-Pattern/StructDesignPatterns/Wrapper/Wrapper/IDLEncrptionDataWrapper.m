//
//  IDLEncrptionDataWrapper.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/3.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLEncrptionDataWrapper.h"

@interface IDLEncrptionDataWrapper ()

@property(nonatomic, strong, readwrite) id<IDLDataSource> wrappee;

@end

@implementation IDLEncrptionDataWrapper

#pragma mark - Initializer

+ (instancetype)dataWrapper:(id<IDLDataSource>)wrappee {
    IDLEncrptionDataWrapper *wrapper = [IDLEncrptionDataWrapper new];
    wrapper.wrappee = wrappee;
    return wrapper;
}

#pragma mark - IDLDataSource

- (nonnull NSString *)readData {
    NSLog(@"开始解密数据");
    return [self.wrappee readData];
}

- (void)writeData:(nonnull NSString *)data {
    NSLog(@"开始加密数据");
    [self.wrappee writeData:data];
}

@end
