//
//  IDLSingletonDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/2.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLSingletonDesignPatternShowCase.h"

//singleton
#import "IDLSingletonObject.h"

@implementation IDLSingletonDesignPatternShowCase

- (void)showCase {
    NSLog(@"===> %d",IDLSingletonObject.shared == IDLSingletonObject.shared);
}

@end
