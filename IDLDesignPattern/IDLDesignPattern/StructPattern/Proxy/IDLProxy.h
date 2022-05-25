//
//  IDLProxy.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

#import "IDLServiceProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLProxy : NSObject<IDLServiceProtocol>

+ (instancetype)proxyWithRealService:(id<IDLServiceProtocol>)realService;

@end

NS_ASSUME_NONNULL_END
