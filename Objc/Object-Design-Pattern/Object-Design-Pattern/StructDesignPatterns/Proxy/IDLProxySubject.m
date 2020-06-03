//
//  IDLProxySubject.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/3.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLProxySubject.h"

//realsubject
#import "IDLRealSubject.h"

@interface IDLProxySubject ()

@property(nonatomic, strong, readwrite) NSArray *accessableWebSites;

@property(nonatomic, strong, readwrite) IDLRealSubject *realSubject;

@end

@implementation IDLProxySubject

- (instancetype)initWithRealSubject:(IDLRealSubject *)realSubject {
    
    if (self = [super init]) {
        self.accessableWebSites = @[
            @"https://www.baidu.com",
            @"https://www.google.com",
            @"https://www.youtu.com"
        ];
        self.realSubject = realSubject;
    }
    return self;
}

#pragma mark - IDLProxyServiceProtocol

- (BOOL)requestWithUrl:(NSString *)url userProfile:(IDLUserProfile *)userProfile {
    
    if ([self checkAccessable:url userProfile:userProfile]) {
        return [self.realSubject requestWithUrl:url userProfile:userProfile];
    }
    return NO;
}

#pragma mark - Private

- (BOOL)checkAccessable:(NSString *)url userProfile:(IDLUserProfile *)userProfile {
    if (!url || !url.length) {
        NSLog(@"访问地址不能为空");
        return NO;
    }
    
    if (![self.accessableWebSites containsObject:url]) {
        NSLog(@"当前地址不在可访问白名单内");
        return NO;
    }
        
    if (!userProfile.accessToken || !userProfile.accessToken.length) {
        NSLog(@"当前用户token过期!请重新登录");
        return NO;
    }
    
    return YES;
}

@end
