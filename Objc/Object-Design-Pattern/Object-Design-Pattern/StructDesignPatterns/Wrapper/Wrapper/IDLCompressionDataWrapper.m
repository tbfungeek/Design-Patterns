//
//  IDLCompressionDataWrapper.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/3.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLCompressionDataWrapper.h"

@interface IDLCompressionDataWrapper ()

@property(nonatomic, strong, readwrite) id<IDLDataSource> wrappee;

@end

@implementation IDLCompressionDataWrapper

#pragma mark - Initializer

+ (instancetype)dataWrapper:(id<IDLDataSource>)wrappee {
    IDLCompressionDataWrapper *wrapper = [IDLCompressionDataWrapper new];
    wrapper.wrappee = wrappee;
    return wrapper;
}

#pragma mark - IDLDataSource


- (nonnull NSString *)readData {
    NSLog(@"开始解压数据");
    return [self.wrappee readData];
}

- (void)writeData:(nonnull NSString *)data {
    NSLog(@"开始压缩数据");
    [self.wrappee writeData:data];
}

@end
