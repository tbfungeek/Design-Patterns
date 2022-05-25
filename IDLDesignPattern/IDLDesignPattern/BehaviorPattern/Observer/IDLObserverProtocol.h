//
//  IDLObserverProtocol.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IDLObserverProtocol <NSObject>

- (void)onMessage:(id)messageObj;

@end

NS_ASSUME_NONNULL_END
