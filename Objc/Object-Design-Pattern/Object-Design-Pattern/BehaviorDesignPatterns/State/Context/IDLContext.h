//
//  IDLContext.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/9.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IDLStateProtocol;

NS_ASSUME_NONNULL_BEGIN

@interface IDLContext : NSObject

- (instancetype)initWithState:(id<IDLStateProtocol>)state;

- (void)translateToState:(id<IDLStateProtocol>)state;

- (void)requestA;

- (void)requestB;

@end

NS_ASSUME_NONNULL_END
