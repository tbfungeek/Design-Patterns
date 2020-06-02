//
//  IDLAdapterDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/2.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLAdapterDesignPatternShowCase.h"

//adapter
#import "IDLAdapter.h"
//adaptee
#import "IDLAdaptee.h"

@implementation IDLAdapterDesignPatternShowCase

#pragma mark - IDLDesignPatternShowCase

- (void)showCase {
    IDLAdapter *adapter = [IDLAdapter adapterWithAdaptee:[IDLAdaptee new]];
    NSLog(@"%@",[adapter dataWithJsonFormat]);
}

@end
