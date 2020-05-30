//
//  IDLHPPCFactory.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/30.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLHPPCFactory.h"

//device
#import "IDLHPPCDevice.h"

@implementation IDLHPPCFactory

#pragma mark - IDLPCFactoryProtocal

- (id<IDLPCDeviceProtocal>)createPCDevice {
    return [IDLHPPCDevice new];
}

@end
