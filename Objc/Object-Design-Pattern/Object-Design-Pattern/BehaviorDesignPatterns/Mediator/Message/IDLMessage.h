//
//  IDLMessage.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IDLMessage : NSObject

@property(nonatomic, strong, readonly) NSString *message;

@property(nonatomic, strong, readonly) NSString *sender;

@property(nonatomic, strong, readonly) NSString *receiver;

- (instancetype)initWithMessage:(NSString *)message sender:(NSString *)sender receiver:(NSString *)receiver;

@end

NS_ASSUME_NONNULL_END
