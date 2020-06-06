//
//  IDLHandlerProtocol.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//request
#import "IDLRequest.h"

NS_ASSUME_NONNULL_BEGIN

@protocol IDLHandlerProtocol <NSObject>

- (BOOL)canHandRequest:(IDLRequest *)request;
- (void)setNextHandler:(id<IDLHandlerProtocol>)nextHandler;
- (void)handleRequest:(IDLRequest *)request;
- (id<IDLHandlerProtocol>)nextHandler;

@end

NS_ASSUME_NONNULL_END
