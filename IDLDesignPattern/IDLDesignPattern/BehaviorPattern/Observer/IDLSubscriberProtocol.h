//
//  IDLSubscriberProtocol.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

#import "IDLObserverProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol IDLSubscriberProtocol <NSObject>

- (void)addObserver:(id<IDLObserverProtocol>)observer;

- (void)removeObserver:(id<IDLObserverProtocol>)observer;

- (void)notify;


@end

NS_ASSUME_NONNULL_END
