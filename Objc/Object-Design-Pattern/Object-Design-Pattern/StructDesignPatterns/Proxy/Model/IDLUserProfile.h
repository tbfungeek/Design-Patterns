//
//  UserProfile.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/3.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IDLUserProfile : NSObject

@property(nonatomic, strong, readonly) NSString *nickName;

@property(nonatomic, strong, readonly) NSString *accessToken;

- (instancetype)initWithNickName:(NSString *)nickName accessToken:(NSString *)accessToken;

@end

NS_ASSUME_NONNULL_END
