//
//  IDLMediator.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

#import "IDLModuleBProtocol.h"
#import "IDLModuleAProtocol.h"
#import "IDLBaseComponentProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLMediator : NSObject

+ (instancetype)sharedMediator;

- (void)registComponent:(Protocol *)protocol component:(id<IDLBaseComponentProtocol>)component;

- (id<IDLBaseComponentProtocol>)componentOfProtocol:(Protocol *)protocol;

@end

NS_ASSUME_NONNULL_END
