//
//  IDLComponentProtocol.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//message
#import "IDLMessage.h"

//mediator
@class IDLMediator;

NS_ASSUME_NONNULL_BEGIN

@protocol IDLComponentProtocol <NSObject>

- (NSString *)componentName;

- (void)setUpMediator:(IDLMediator *)mediator;

- (void)sendMessage:(IDLMessage *)message;

- (void)onMessage:(IDLMessage *)message;

@end

NS_ASSUME_NONNULL_END
