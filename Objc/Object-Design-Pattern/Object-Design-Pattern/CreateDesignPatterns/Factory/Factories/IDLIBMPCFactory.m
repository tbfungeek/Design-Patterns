//
//  IDLIBMPCFactory.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/30.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLIBMPCFactory.h"

//device
#import "IDLIBMPCDevice.h"

@implementation IDLIBMPCFactory

#pragma mark - IDLPCFactoryProtocal

- (id<IDLPCDeviceProtocal>)createPCDevice {
    return [IDLIBMPCDevice new];
}

@end
