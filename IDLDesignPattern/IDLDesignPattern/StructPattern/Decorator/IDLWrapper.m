//
//  IDLWrapper.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLWrapper.h"

@interface IDLWrapper ()

@property(nonatomic, strong, readwrite) IDLWrapee *wrapee;

@end

@implementation IDLWrapper

+ (instancetype)wrapperWithWrapee:(IDLWrapee *)wrapee {
    IDLWrapper *wrapper = [IDLWrapper new];
    wrapper.wrapee = wrapee;
    return wrapper;
}

- (void)origMethod {
    [self.wrapee origMethod];
}

- (void)extraMethod {
    NSLog(@"这是添加的新方法");
}

@end
