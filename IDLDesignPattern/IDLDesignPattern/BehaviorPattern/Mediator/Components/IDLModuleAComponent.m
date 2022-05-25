//
//  IDLModuleAComponent.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLModuleAComponent.h"

#import "IDLMediator.h"

@implementation IDLModuleAComponent

- (instancetype)init {
    self = [super init];
    if (self) {
        [[IDLMediator sharedMediator] registComponent:@protocol(IDLModuleAProtocol) component:self];
    }
    return self;
}

- (void)functionA {
    NSLog(@"模块A的方法被调用");
}

- (void)sendMessageToCallfunctionB {
    id<IDLModuleBProtocol> module = (id<IDLModuleBProtocol>)[[IDLMediator sharedMediator] componentOfProtocol:@protocol(IDLModuleBProtocol)];
    [module functionB];
}

@end
