//
//  IDLDellPCFactory.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/31.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLDellPCDeviceFactory.h"

//components
#import "IDLDellHostDevice.h"
#import "IDLDellPCMemery.h"
#import "IDLDellPCKeyboard.h"
#import "IDLDellPCScreen.h"

@implementation IDLDellPCDeviceFactory

#pragma mark - IDLBasePCFactory

- (id<IDLPCComponentProtocal>)createPCHostDevice {
    return [IDLDellHostDevice new];
}

- (id<IDLPCComponentProtocal>)createPCMemory {
    return [IDLDellPCMemery new];
}

- (id<IDLPCComponentProtocal>)createPCScreen {
    return [IDLDellPCScreen new];
}

- (id<IDLPCComponentProtocal>)createPCKeyboard {
    return [IDLDellPCKeyboard new];
}

@end
