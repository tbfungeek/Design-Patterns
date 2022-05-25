//
//  IDLStateProtocol.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@class IDLContext;

@protocol IDLStateProtocol <NSObject>

/**
    更新上下文内容，并根据上下文的内容切换状态
 */
- (void)updateContext:(IDLContext *)context;

- (void)greeting;

@end

NS_ASSUME_NONNULL_END
