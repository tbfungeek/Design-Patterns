//
//  IDLBaseHandler.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLBaseHandler.h"

//protocols
#import "IDLHandlerProtocol.h"

//request
#import "IDLRequest.h"

//objc
#import <objc/runtime.h>

@interface IDLBaseHandler ()

@property(nonatomic, assign, readwrite) NSInteger handlerCode;

@end

@implementation IDLBaseHandler

#pragma mark Initializer

- (instancetype)initWithHandleCode:(NSInteger)handlerCode {
    if([super init]) {
        _handlerCode = handlerCode;
    }
    return self;
}

#pragma mark IDLHandlerProtocol

- (BOOL)canHandRequest:(IDLRequest *)request {
    return request.requestCode == self.handlerCode;
}

- (void)setNextHandler:(id<IDLHandlerProtocol>)nextHandler {
    objc_setAssociatedObject(self, @selector(nextHandler), nextHandler, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id<IDLHandlerProtocol>)nextHandler {
    return objc_getAssociatedObject(self, _cmd);
    
}

- (void)handleRequest:(IDLRequest *)request {

}

@end
