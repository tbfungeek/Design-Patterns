//
//  UserProfile.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/3.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLUserProfile.h"

@interface IDLUserProfile ()

@property(nonatomic, strong, readwrite) NSString *nickName;

@property(nonatomic, strong, readwrite) NSString *accessToken;

@end

@implementation IDLUserProfile

#pragma mark Initializer

- (instancetype)initWithNickName:(NSString *)nickName accessToken:(NSString *)accessToken {
    if (self = [super init]) {
        self.nickName = nickName;
        self.accessToken = accessToken;
    }
    return self;
}

@end
