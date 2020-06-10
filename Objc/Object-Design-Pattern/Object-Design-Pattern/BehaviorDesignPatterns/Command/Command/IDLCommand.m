//
//  IDLBaseCommand.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLCommand.h"

@interface IDLCommand ()

@property(nonatomic, strong, readwrite) IDLReceiver         *receiver;

@property(nonatomic, strong, readwrite) NSArray<NSString *> *parameters;

@end

@implementation IDLCommand

#pragma mark - Initializer

+ (instancetype)commandWithReceiver:(IDLReceiver *)receiver params:(NSArray<NSString *> *)params {
    IDLCommand *command = [IDLCommand new];
    command.receiver = receiver;
    command.parameters = [params copy];
    return command;
}

#pragma mark - IDLCommandProtocol

- (void)excute {
    if(self.receiver) [self.receiver doWorkWithParas:self.parameters];
}

@end
