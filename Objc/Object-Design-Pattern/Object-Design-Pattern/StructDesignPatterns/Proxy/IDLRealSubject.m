//
//  IDLRealSubject.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/3.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLRealSubject.h"

//model
#import "IDLUserProfile.h"

@implementation IDLRealSubject

#pragma mark - IDLProxyServiceProtocol

- (BOOL)requestWithUrl:(NSString *)url userProfile:(IDLUserProfile *)userProfile {
    NSLog(@"%@ 访问 %@",userProfile.nickName,url);
    return YES;
}

@end
