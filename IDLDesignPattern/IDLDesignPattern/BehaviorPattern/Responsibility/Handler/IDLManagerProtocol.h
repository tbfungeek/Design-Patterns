//
//  IDLManagerProtocol.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

#import "IDLRequest.h"

NS_ASSUME_NONNULL_BEGIN

@protocol IDLManagerProtocol <NSObject>

- (void)handleRequest:(IDLRequest *)request;

@end

NS_ASSUME_NONNULL_END
