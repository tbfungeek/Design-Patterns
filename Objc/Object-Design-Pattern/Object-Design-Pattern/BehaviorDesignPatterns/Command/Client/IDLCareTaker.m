//
//  IDLCareTaker.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLCareTaker.h"

//memento
#import "IDLMemento.h"

@interface IDLCareTaker ()

@property(nonatomic, strong, readwrite) IDLOriginator *originator;

@property(nonatomic, strong, readwrite) NSMutableArray<IDLMemento *> *histories;

@end

@implementation IDLCareTaker


#pragma mark - Initializer

- (instancetype)initWithOriginator:(IDLOriginator *)originator {
    if(self = [super init]) {
        _originator = originator;
    }
    return self;
}

- (void)backUp {
    [self.histories addObject:[self.originator store]];
}

- (void)undo {
    IDLMemento *latestMemento = self.histories.lastObject;
    [self.originator restore:latestMemento];
    [self.histories removeLastObject];
}

#pragma mark - Getters/Setters

- (NSMutableArray<IDLMemento *> *)histories {
    if (!_histories) {
        _histories = [NSMutableArray new];
    }
    return _histories;
}

@end
