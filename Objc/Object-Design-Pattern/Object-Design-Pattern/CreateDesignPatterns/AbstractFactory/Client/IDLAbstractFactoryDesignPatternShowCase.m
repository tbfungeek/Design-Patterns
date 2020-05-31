//
//  IDLAbstractFactory.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/31.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLAbstractFactoryDesignPatternShowCase.h"

//factories
#import "IDLApplePCDeviceFactory.h"
#import "IDLDellPCDeviceFactory.h"

@implementation IDLAbstractFactoryDesignPatternShowCase

#pragma mark - IDLDesignPatternShowCase

- (void)showCase {
    IDLBasePCDeviceFactory *factories = [IDLApplePCDeviceFactory new];
    [factories startUpPCDevice];
    
    factories = [IDLDellPCDeviceFactory new];
    [factories startUpPCDevice];
}

@end
