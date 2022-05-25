//
//  IDLContext.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLContext.h"

#import "IDLMorningState.h"

@interface IDLContext ()

@property(nonatomic, strong, readwrite) id<IDLStateProtocol> currentState;

@end

@implementation IDLContext

- (void)setTime:(NSInteger)time {
    _time = time;
    [self.currentState updateContext:self];
}

- (void)changeState:(id<IDLStateProtocol>)state {
    self.currentState = state;
}

- (id<IDLStateProtocol>)currentState {
    if (!_currentState) {
        _currentState = [IDLMorningState new];
    }
    return _currentState;
}

- (void)greeting {
    [self.currentState greeting];
}

@end
