//
//  IDLConcrateStateA.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/9.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLConcrateStateA.h"

//state
#import "IDLConcrateStateB.h"

@implementation IDLConcrateStateA

#pragma mark Overide

- (void)handle1 {
    NSLog(@"This is handle1 by IDLConcrateStateA");
    NSLog(@"Will translate to IDLConcrateStateB");
    [self.context translateToState:[IDLConcrateStateB new]];
}

- (void)handle2 {
    NSLog(@"This is handle2 by IDLConcrateStateA");
}

@end
