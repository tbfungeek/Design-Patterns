//
//  IDLDevice.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/4.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLDevice.h"

@interface IDLDevice ()

@property(nonatomic, assign, readwrite) BOOL status;
@property(nonatomic, assign, readwrite) NSInteger volume;
@property(nonatomic, assign, readwrite) NSInteger channel;

@end

@implementation IDLDevice

#pragma mark IDLDeviceProtocol


- (void)disable {
    self.status = NO;
}

- (void)enable {
    self.status = YES;
}

- (NSInteger)getChannel {
    return self.channel;
}

- (NSInteger)getVolume {
    return self.volume;
}

- (BOOL)isEnable {
    return self.status;
}

- (void)setChannel:(NSInteger)channel {
    _channel = channel;
}

- (void)setVolume:(NSInteger)volume {
    _volume = volume;
}

- (NSString *)deviceName {
    return @"";
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ Status:%d Channel:%ld Volum:%ld", self.deviceName,
                                                                   self.isEnable,
                                                                   (long)[self getChannel],
                                                                   (long)[self getVolume]
          ];
}

@end
