//
//  IDLSubscribe.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLSubscribe.h"

//observer
#import "IDLObserver.h"

@interface IDLSubscribe ()

@property(nonatomic, strong, readwrite) NSMutableArray<IDLObserver *> *observers;

@property(nonatomic, assign, readwrite) NSInteger status;

@end

@implementation IDLSubscribe

- (void)addObserver:(IDLObserver *)observer {
    if (![self.observers containsObject:observer]) {
        [self.observers addObject:observer];
    }
}

- (void)removeObserver:(IDLObserver *)observer {
    if ([self.observers containsObject:observer]) {
        [self.observers removeObject:observer];
    }
}

- (void)setStatus:(NSInteger)status {
    _status = status;
    for (IDLObserver *observer in self.observers) {
        [observer update:self];
    }
}

- (NSInteger)getStatus {
    return  _status;
}

#pragma mark Getters/Setters

- (NSMutableArray<IDLObserver *> *)observers {
    if(!_observers) {
        _observers = [NSMutableArray new];
    }
    return _observers;
}

@end
