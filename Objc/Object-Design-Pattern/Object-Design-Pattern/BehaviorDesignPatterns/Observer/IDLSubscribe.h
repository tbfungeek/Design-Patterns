//
//  IDLSubscribe.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

@class IDLObserver;

NS_ASSUME_NONNULL_BEGIN

@interface IDLSubscribe : NSObject

- (void)addObserver:(IDLObserver *)observer;

- (void)removeObserver:(IDLObserver *)observer;

- (void)setStatus:(NSInteger)status;

- (NSInteger)getStatus;

@end

NS_ASSUME_NONNULL_END
