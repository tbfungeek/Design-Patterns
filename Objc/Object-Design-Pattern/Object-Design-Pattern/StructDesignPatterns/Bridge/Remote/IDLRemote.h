//
//  IDLRemote.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/4.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//protocols
#import "IDLRemoteProtocol.h"
#import "IDLDeviceProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLRemote : NSObject<IDLRemoteProtocol>

+ (instancetype)remoteOfDevice:(id<IDLDeviceProtocol>)device;

@end

NS_ASSUME_NONNULL_END
