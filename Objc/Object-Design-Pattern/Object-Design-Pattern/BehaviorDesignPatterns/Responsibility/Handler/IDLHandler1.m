//
//  IDLHandler1.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLHandler1.h"

@implementation IDLHandler1

#pragma mark Override

- (instancetype)initWithHandleCode:(NSInteger)handlerCode {
    return [super initWithHandleCode:handlerCode];
}

- (void)handleRequest:(IDLRequest *)request {
    
    if ([self canHandRequest:request]) {
        NSLog(@"Request Had Been Process by Handler1");
    } else {
        if(self.nextHandler) {
            [self.nextHandler handleRequest:request];
        }
    }
}

@end
