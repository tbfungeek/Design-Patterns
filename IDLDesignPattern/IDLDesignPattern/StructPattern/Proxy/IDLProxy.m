//
//  IDLProxy.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLProxy.h"

#import "IDLService.h"

@interface IDLProxy ()

@property(nonatomic, strong, readwrite) id<IDLServiceProtocol> realService;

@end

@implementation IDLProxy

+ (instancetype)proxyWithRealService:(id<IDLServiceProtocol>)realService {
    IDLProxy *proxy = [IDLProxy new];
    proxy.realService = realService;
    return proxy;
}

- (BOOL)checkAccess {
    return NO;
}

- (void)operation {
    if ([self checkAccess]) {
        [self.realService operation];
    } else {
        NSLog(@"没有权限访问");
    }
}



@end
