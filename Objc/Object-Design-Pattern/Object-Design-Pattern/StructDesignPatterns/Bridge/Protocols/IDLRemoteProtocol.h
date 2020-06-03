//
//  IDLRemoteProtocol.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/4.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IDLRemoteProtocol <NSObject>

- (void)togglePower;

- (void)volumUp;

- (void)volumDown;

- (void)channelUp;

- (void)channelDown;

@end

NS_ASSUME_NONNULL_END
