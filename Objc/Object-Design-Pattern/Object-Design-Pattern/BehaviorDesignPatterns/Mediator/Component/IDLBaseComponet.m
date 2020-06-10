//
//  IDLBaseComponet.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLBaseComponet.h"

//mediator
#import "IDLMediator.h"

@interface IDLBaseComponet ()

@property(nonatomic, strong, readwrite) NSString *componentName;

@property(nonatomic, weak, readwrite) IDLMediator *mediator;

@end

@implementation IDLBaseComponet

#pragma mark - Initializer

- (instancetype)initWithComponentName:(NSString *)componentName {
    
    if (self = [super init]) {
        _componentName = componentName;
    }
    return self;
}

#pragma mark - IDLComponentProtocol

- (NSString *)componentName {
    return _componentName;
}

- (void)setUpMediator:(nonnull IDLMediator *)mediator {
    self.mediator = mediator;
}

- (void)sendMessage:(nonnull IDLMessage *)message {
    if (!self.mediator) return;
    [self.mediator notify:message];
}

- (void)onMessage:(nonnull IDLMessage *)message {
    
}

@end
