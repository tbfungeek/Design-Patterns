//
//  IDLApplePCFactory.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/31.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLApplePCDeviceFactory.h"

//devices
#import "IDLAppleKeyboard.h"
#import "IDLApplePCMemery.h"
#import "IDLApplePCScreen.h"
#import "IDLAppleHostDevice.h"

@implementation IDLApplePCDeviceFactory

#pragma mark - IDLBasePCFactory

- (id<IDLPCComponentProtocal>)createPCHostDevice {
    return [IDLAppleHostDevice new];
}

- (id<IDLPCComponentProtocal>)createPCMemory {
    return [IDLApplePCMemery new];
}

- (id<IDLPCComponentProtocal>)createPCScreen {
    return [IDLApplePCScreen new];
}

- (id<IDLPCComponentProtocal>)createPCKeyboard {
    return [IDLAppleKeyboard new];
}

@end
