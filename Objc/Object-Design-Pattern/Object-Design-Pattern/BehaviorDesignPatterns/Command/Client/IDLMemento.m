//
//  IDLMemento.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLMemento.h"

@interface IDLMemento ()

@property(nonatomic, strong, readwrite) NSString *state;

@property(nonatomic, strong, readwrite) NSDate   *date;

@end

@implementation IDLMemento

#pragma mark - Initializer

- (instancetype)initWithState:(NSString *)state {
    if(self = [super init]) {
        _state = state;
        _date = [NSDate date];
    }
    return self;
}

@end
