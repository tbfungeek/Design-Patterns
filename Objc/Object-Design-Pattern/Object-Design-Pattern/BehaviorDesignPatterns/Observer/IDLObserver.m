//
//  IDLObserver.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLObserver.h"

//Subscribe
#import "IDLSubscribe.h"

@interface IDLObserver ()

@property(nonatomic, strong, readwrite) NSString *name;

@end

@implementation IDLObserver

#pragma mark Initializer

- (instancetype)initWithName:(NSString *)name {
    if(self = [super init]) {
        _name = name;
    }
    return self;
}

#pragma mark Public

- (void)update:(IDLSubscribe *)subscriber {
    NSLog(@"Log by %@ with status %ld",self.name,[subscriber getStatus]);
}

@end
