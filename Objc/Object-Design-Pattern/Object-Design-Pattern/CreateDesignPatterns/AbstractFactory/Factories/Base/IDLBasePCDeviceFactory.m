//
//  IDLBasePCFactory.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/31.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLBasePCDeviceFactory.h"

@implementation IDLBasePCDeviceFactory

#pragma mark - IDLPCDeviceFactoryProtocal

- (id<IDLPCComponentProtocal>)createPCHostDevice {
    return nil;
}

- (id<IDLPCComponentProtocal>)createPCMemory {
    return nil;
}

- (id<IDLPCComponentProtocal>)createPCScreen {
    return nil;
}

- (id<IDLPCComponentProtocal>)createPCKeyboard {
    return nil;
}

- (void)startUpPCDevice {
    NSLog(@"开始启动电脑......");
    [[self createPCHostDevice] startUpComponent];
    [[self createPCMemory] startUpComponent];
    [[self createPCKeyboard] startUpComponent];
    [[self createPCScreen] startUpComponent];
    NSLog(@"电脑启动完毕......");
}

@end
