//
//  IDLModuleBComponent.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLModuleBComponent.h"

#import "IDLMediator.h"

@implementation IDLModuleBComponent

- (instancetype)init {
    self = [super init];
    if (self) {
        [[IDLMediator sharedMediator] registComponent:@protocol(IDLModuleBProtocol) component:self];
    }
    return self;
}

- (void)functionB {
    NSLog(@"模块B的方法被调用");
}


- (void)sendMessageToCallfunctionA {
    id<IDLModuleAProtocol> module = (id<IDLModuleAProtocol>)[[IDLMediator sharedMediator] componentOfProtocol:@protocol(IDLModuleAProtocol)];
    [module functionA];
}

@end
