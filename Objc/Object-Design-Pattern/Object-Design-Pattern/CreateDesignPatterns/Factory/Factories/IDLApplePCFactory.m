//
//  IDLApplePCFactory.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/30.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLApplePCFactory.h"

//device
#import "IDLApplePCDevice.h"

@implementation IDLApplePCFactory

#pragma mark - IDLPCFactoryProtocal

- (id<IDLPCDeviceProtocal>)createPCDevice {
    return [IDLApplePCDevice new];
}

@end
