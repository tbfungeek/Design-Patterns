//
//  IDLBaseManager.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLBaseManager.h"

@interface IDLBaseManager ()

@property(nonatomic, strong, readwrite) id<IDLManagerProtocol> successor;

@end

@implementation IDLBaseManager

#pragma mark - Initializer

- (instancetype)initWithSuccessor:(id<IDLManagerProtocol>)successor {
    if (self = [super init]) {
        _successor = successor;
    }
    return self;
}

#pragma mark - IDLMangerProtocol

- (void)handleRequest:(IDLRequest *)request {
    [self.successor handleRequest:request];
}

@end
