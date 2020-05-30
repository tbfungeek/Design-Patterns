//
//  IDLBasePCFactory.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/30.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLBasePCFactory.h"

@implementation IDLBasePCFactory

- (id<IDLPCDeviceProtocal>)createPCDevice {
    return nil;
}

- (void)generateProduct {
    id<IDLPCDeviceProtocal> device = [self createPCDevice];
    [device showProduct];
}

@end
