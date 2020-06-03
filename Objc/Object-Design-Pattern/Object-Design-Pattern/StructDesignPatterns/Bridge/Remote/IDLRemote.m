//
//  IDLRemote.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/4.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLRemote.h"

//protocols
#import "IDLDeviceProtocol.h"

@interface IDLRemote ()

@property(nonatomic, strong, readwrite) id<IDLDeviceProtocol> device;

@end

@implementation IDLRemote

#pragma mark Initializer

+ (instancetype)remoteOfDevice:(id<IDLDeviceProtocol>)device {
    IDLRemote *remote = [[IDLRemote alloc] init];
    remote.device = device;
    return remote;
}

#pragma mark IDLRemoteProtocol

- (void)channelDown {
    if (![self.device isEnable]) return;
    [self.device setChannel:MAX([self.device getChannel] - 1 , 0)];
}

- (void)channelUp {
    if (![self.device isEnable]) return;
    [self.device setChannel:MIN([self.device getChannel] + 1 , 100)];
}

- (void)togglePower {
    if ([self.device isEnable]) {
        [self.device disable];
    } else {
        [self.device enable];
    }
}

- (void)volumDown {
    if (![self.device isEnable]) return;
    [self.device setVolume:MAX([self.device getVolume] - 1 , 0)];
}

- (void)volumUp {
    if (![self.device isEnable]) return;
    [self.device setVolume:MIN([self.device getVolume] + 1 , 100)];
}

- (NSString *)description {
    return [self.device description];
}

@end
