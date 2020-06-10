//
//  IDLOriginator.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLOriginator.h"

@interface IDLOriginator ()

@property(nonatomic, strong, readwrite) NSString *state;

@end

@implementation IDLOriginator

#pragma mark - Initializer

- (instancetype)initWithState:(NSString *)state {
    if(self = [super init]) {
        _state = state;
    }
    return self;
}

- (void)changeState {
    self.state = @(arc4random()).stringValue;
}

- (IDLMemento *)store {
    return [[IDLMemento alloc] initWithState:self.state];
}

- (void)restore:(IDLMemento *)memento {
    self.state = memento.state;
}

- (NSString *)showState {
    return self.state;
}

@end
