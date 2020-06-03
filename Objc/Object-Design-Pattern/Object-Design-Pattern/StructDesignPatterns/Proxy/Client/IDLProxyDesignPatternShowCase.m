//
//  IDLProxyDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/3.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLProxyDesignPatternShowCase.h"

//subjects
#import "IDLProxySubject.h"
#import "IDLRealSubject.h"

//model
#import "IDLUserProfile.h"

@implementation IDLProxyDesignPatternShowCase

#pragma mark - IDLDesignPatternShowCase

- (void)showCase {
    IDLProxySubject *proxySubject = [[IDLProxySubject alloc] initWithRealSubject:[IDLRealSubject new]];
    IDLUserProfile *userProfile = [[IDLUserProfile alloc] initWithNickName:@"tbfungeek"
                                                               accessToken:@"123456"];
    [proxySubject requestWithUrl:@"https://www.baidu.com" userProfile:userProfile];
    [proxySubject requestWithUrl:@"https://www.bilibi.com" userProfile:userProfile];
    
    userProfile = [[IDLUserProfile alloc] initWithNickName:@"tbfungeek"
                                                accessToken:@""];
    [proxySubject requestWithUrl:@"https://www.baidu.com" userProfile:userProfile];
}

@end
