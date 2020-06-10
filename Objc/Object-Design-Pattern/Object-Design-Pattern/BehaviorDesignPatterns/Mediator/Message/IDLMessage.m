//
//  IDLMessage.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLMessage.h"

@interface IDLMessage ()

@property(nonatomic, strong, readwrite) NSString *message;

@property(nonatomic, strong, readwrite) NSString *sender;

@property(nonatomic, strong, readwrite) NSString *receiver;

@end

@implementation IDLMessage

#pragma mark - Initializer

- (instancetype)initWithMessage:(NSString *)message
                         sender:(NSString *)sender
                       receiver:(NSString *)receiver {
    if(self = [super init]) {
        _message = message;
        _sender = sender;
        _receiver = receiver;
    }
    return self;
}

@end
