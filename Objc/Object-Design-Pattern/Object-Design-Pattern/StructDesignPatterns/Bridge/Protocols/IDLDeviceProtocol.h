//
//  IDLDeviceProtocol.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/4.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IDLDeviceProtocol <NSObject>

- (BOOL)isEnable;

- (void)enable;

- (void)disable;

- (NSInteger)getVolume;

- (void)setVolume:(NSInteger)volume;

- (NSInteger)getChannel;

- (void)setChannel:(NSInteger)channel;

- (NSString *)deviceName;

@end

NS_ASSUME_NONNULL_END

