//
//  IDLContext.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/9.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLContext.h"

//state
#import "IDLStateProtocol.h"

@interface IDLContext ()

@property(nonatomic, strong, readwrite) id<IDLStateProtocol> currentState;

@end

@implementation IDLContext

#pragma mark Initializer

- (instancetype)initWithState:(id<IDLStateProtocol>)state {
    
    if (self = [super init]) {
        [self translateToState:state];
    }
    return self;
}

- (void)translateToState:(id<IDLStateProtocol>)state {
    self.currentState = state;
    [self.currentState update:self];
}

#pragma mark Public

- (void)requestA {
    [self.currentState handle1];
}

- (void)requestB {
    [self.currentState handle2];
}

@end
