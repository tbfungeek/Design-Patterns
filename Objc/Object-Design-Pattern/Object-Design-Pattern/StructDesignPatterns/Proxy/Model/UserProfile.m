//
//  UserProfile.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/3.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "UserProfile.h"

@implementation UserProfile

#pragma mark Initializer

- (instancetype)initWithNickName:(NSString *)nickName accessToken:(NSString *)accessToken {
    if (self = [super init]) {
        self.nickName = nickName;
        self.accessToken = accessToken;
    }
    return self;
}

@end
