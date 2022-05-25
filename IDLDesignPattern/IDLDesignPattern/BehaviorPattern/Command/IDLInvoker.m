//
//  IDLInvoker.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLInvoker.h"

@interface IDLInvoker ()

@property(nonatomic, strong, readwrite) IDLCommand *command;

@end

@implementation IDLInvoker

+ (instancetype)invokerWithCommand:(IDLCommand *)command {
    IDLInvoker *invoker = [IDLInvoker new];
    invoker.command = command;
    return invoker;
}

- (NSInteger)excuteCommand {
    return [self.command execute];
}

@end
