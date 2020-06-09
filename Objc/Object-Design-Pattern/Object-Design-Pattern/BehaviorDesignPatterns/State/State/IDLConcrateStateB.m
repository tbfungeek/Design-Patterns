//
//  IDLConcrateStateB.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/9.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLConcrateStateB.h"

//state
#import "IDLConcrateStateA.h"

@implementation IDLConcrateStateB

#pragma mark Overide

- (void)handle1 {
    NSLog(@"This is handle1 by IDLConcrateStateB");
}

- (void)handle2 {
    NSLog(@"This is handle2 by IDLConcrateStateB");
    NSLog(@"Will translate to IDLConcrateStateA");
    [self.context translateToState:[IDLConcrateStateA new]];
}

@end
