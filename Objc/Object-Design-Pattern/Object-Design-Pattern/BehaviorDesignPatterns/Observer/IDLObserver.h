//
//  IDLObserver.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>


@class IDLSubscribe;

NS_ASSUME_NONNULL_BEGIN

@interface IDLObserver : NSObject

- (instancetype)initWithName:(NSString *)name;

- (void)update:(IDLSubscribe *)subscriber;

@end

NS_ASSUME_NONNULL_END
