//
//  IDLObserverDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLObserverDesignPatternShowCase.h"

//subscribe
#import "IDLSubscribe.h"

//observer
#import "IDLObserver.h"

@implementation IDLObserverDesignPatternShowCase

#pragma mark IDLDesignPatternShowCase

- (void)showCase {
    
    IDLSubscribe *subscribe = [[IDLSubscribe alloc] init];
    
    IDLObserver *observer1 = [[IDLObserver alloc] initWithName:@"Observer1"];
    IDLObserver *observer2 = [[IDLObserver alloc] initWithName:@"Observer2"];
    IDLObserver *observer3 = [[IDLObserver alloc] initWithName:@"Observer3"];
    IDLObserver *observer4 = [[IDLObserver alloc] initWithName:@"Observer4"];
    IDLObserver *observer5 = [[IDLObserver alloc] initWithName:@"Observer5"];
    IDLObserver *observer6 = [[IDLObserver alloc] initWithName:@"Observer6"];
    
    [subscribe addObserver:observer1];
    [subscribe addObserver:observer2];
    [subscribe addObserver:observer3];
    [subscribe addObserver:observer4];
    [subscribe addObserver:observer5];
    [subscribe addObserver:observer6];
    
    [subscribe removeObserver:observer3];
    
    [subscribe setStatus:200];
    
}

@end
