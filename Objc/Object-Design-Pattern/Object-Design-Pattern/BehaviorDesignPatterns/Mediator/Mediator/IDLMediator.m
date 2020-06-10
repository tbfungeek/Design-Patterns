//
//  IDLMediator.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLMediator.h"

@interface IDLMediator ()

@property(nonatomic, strong, readwrite) NSMutableDictionary *components;

@end

@implementation IDLMediator

- (void)registeComponent:(IDLBaseComponet *)component {
    [self.components setObject:component forKey:[component componentName]];
    [component setUpMediator:self];
}

- (void)notify:(IDLMessage *)message {
    IDLBaseComponet *receiver = [self.components objectForKey:message.receiver];
    [receiver onMessage:message];
}

#pragma mark - Getters/Setters

- (NSMutableDictionary *)components {
    if(!_components) {
        _components = [NSMutableDictionary new];
    }
    return _components;
}

@end
