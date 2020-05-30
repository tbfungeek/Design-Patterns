//
//  IDLFactoryDesignPattern.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/30.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLFactoryDesignPatternShowCase.h"

//base
#import "IDLBasePCFactory.h"
//factories
#import "IDLHPPCFactory.h"
#import "IDLIBMPCFactory.h"
#import "IDLApplePCFactory.h"

@implementation IDLFactoryDesignPatternShowCase

#pragma mark - IDLDesignPatternShowCase

- (void)showCase {
    
    IDLBasePCFactory *pcFactory = [IDLHPPCFactory new];
    [pcFactory generateProduct];
    
    pcFactory = [IDLIBMPCFactory new];
    [pcFactory generateProduct];
    
    pcFactory = [IDLApplePCFactory new];
    [pcFactory generateProduct];
}

@end
