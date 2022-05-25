//
//  IDLMessageCarrierProtocol.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
    消息载体
 */
@protocol IDLMessageCarrierProtocol <NSObject>

/**
    载体名称
 */
- (NSString *)carrier;

/**
     账号
 */
- (NSString *)accout;

/**
     发送消息
 */
- (void)sendMessage;


@end

NS_ASSUME_NONNULL_END
