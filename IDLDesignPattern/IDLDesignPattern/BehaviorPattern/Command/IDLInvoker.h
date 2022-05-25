//
//  IDLInvoker.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

#import "IDLCommand.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLInvoker : NSObject

+ (instancetype)invokerWithCommand:(IDLCommand *)command;

- (NSInteger)excuteCommand;

@end

NS_ASSUME_NONNULL_END
