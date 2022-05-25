//
//  IDLMessageProtocol.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IDLMessageProtocol <NSObject>

/**
      消息标签
 */
- (NSString *)messageFlag;


/**
       消息内容
*/
- (NSString *)messageContent;


/**
        输入消息
 */
- (void)inputContent:(NSString *)messsage;


@end

NS_ASSUME_NONNULL_END
