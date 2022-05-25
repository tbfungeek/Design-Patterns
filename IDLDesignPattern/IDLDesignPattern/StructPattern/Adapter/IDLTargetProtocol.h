//
//  IDLTargetProtocol.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IDLTargetProtocol <NSObject>

/**
    适配后的目标接口，我们的目标就是通过被适配接口适配成当前这个接口
 */
- (void)methodAfterAdapter;

@end

NS_ASSUME_NONNULL_END
