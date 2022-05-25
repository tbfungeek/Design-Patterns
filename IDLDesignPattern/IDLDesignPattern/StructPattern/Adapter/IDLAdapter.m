//
//  IDLAdapter.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import "IDLAdapter.h"

@interface IDLAdapter ()

@property(nonatomic, strong, readwrite) IDLAdaptee *adaptee;

@end

@implementation IDLAdapter

+ (instancetype)adapterWithAdaptee:(IDLAdaptee *)adaptee {
    IDLAdapter *adapter = [IDLAdapter new];
    adapter.adaptee = adaptee;
    return adapter;
}

- (void)methodAfterAdapter {
    //这个是外部接口所需要的最新接口，在这里可以完成新旧接口的转换
    NSLog(@"==============>开始进行接口转换===========>");
    [self.adaptee oldMethod];
    NSLog(@"==============>接口转换成功===========>");
}

@end
