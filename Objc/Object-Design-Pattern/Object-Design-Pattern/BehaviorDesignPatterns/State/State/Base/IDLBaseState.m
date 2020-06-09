//
//  IDLBaseState.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/9.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLBaseState.h"

//context
#import "IDLContext.h"

@interface IDLBaseState ()

@property(nonatomic, weak, readwrite) IDLContext *context;

@end

@implementation IDLBaseState

#pragma mark IDLStateProtocol

- (void)update:(IDLContext *)context {
    self.context = context;
}

- (void)handle1 {
    
}

- (void)handle2 {
    
}

@end
