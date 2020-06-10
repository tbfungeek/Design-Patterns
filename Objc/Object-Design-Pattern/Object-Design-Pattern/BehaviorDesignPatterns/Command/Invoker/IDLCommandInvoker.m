//
//  IDLCommandInvoker.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLCommandInvoker.h"

@interface IDLCommandInvoker ()

@property(nonatomic, strong, readwrite) NSMutableArray<IDLCommand *> *commands;

@end

@implementation IDLCommandInvoker

- (void)addCommand:(IDLCommand *)command {
    [self.commands addObject:command];
}

- (void)excute {
    for (IDLCommand *command in self.commands) {
        [command excute];
    }
}

#pragma mark - Getters/Setters

- (NSMutableArray<IDLCommand *> *)commands {
    if(!_commands) {
        _commands = [NSMutableArray new];
    }
    return _commands;
}

@end
