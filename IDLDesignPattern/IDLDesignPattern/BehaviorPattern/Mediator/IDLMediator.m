//
//  IDLMediator.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLMediator.h"

@interface IDLMediator ()

@property(nonatomic, strong, readwrite) NSMutableDictionary<NSString *,id<IDLBaseComponentProtocol>> *componentsMap;

@end

@implementation IDLMediator

+ (instancetype)sharedMediator {
    static IDLMediator *_sharedMediator = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedMediator = [IDLMediator new];
    });
    return _sharedMediator;
}

- (void)registComponent:(Protocol *)protocol component:(id<IDLBaseComponentProtocol>)component {
    [self.componentsMap setObject:component forKey:NSStringFromProtocol(protocol)];
}

- (id<IDLBaseComponentProtocol>)componentOfProtocol:(Protocol *)protocol {
    return [self.componentsMap objectForKey:NSStringFromProtocol(protocol)];
}

- (NSMutableDictionary<NSString *,id<IDLBaseComponentProtocol>> *)componentsMap {
    if (!_componentsMap) {
        _componentsMap = [NSMutableDictionary new];
    }
    return _componentsMap;
}

@end
