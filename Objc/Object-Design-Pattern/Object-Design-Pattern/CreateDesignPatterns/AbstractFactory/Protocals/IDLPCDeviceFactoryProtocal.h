//
//  IDLPCDeviceFactoryProtocal.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/31.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//protocals
#import "IDLPCComponentProtocal.h"

NS_ASSUME_NONNULL_BEGIN

@protocol IDLPCDeviceFactoryProtocal <NSObject>

- (id<IDLPCComponentProtocal>)createPCScreen;

- (id<IDLPCComponentProtocal>)createPCKeyboard;

- (id<IDLPCComponentProtocal>)createPCMemory;

- (id<IDLPCComponentProtocal>)createPCHostDevice;

- (void)startUpPCDevice;

@end

NS_ASSUME_NONNULL_END
