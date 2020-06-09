//
//  IDLStateDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLStateDesignPatternShowCase.h"

//context
#import "IDLContext.h"

//state
#import "IDLConcrateStateA.h"
#import "IDLConcrateStateB.h"

@implementation IDLStateDesignPatternShowCase

#pragma mark IDLDesignPatternShowCase

- (void)showCase {
    
    IDLConcrateStateA *stateA = [IDLConcrateStateA new];
    IDLContext *context = [[IDLContext alloc] initWithState:stateA];
    [context requestA];
    [context requestB];
    
}

@end
