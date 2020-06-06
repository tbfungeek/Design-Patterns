//
//  IDLBaseTemplete.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/7.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^CallBack)(void);

NS_ASSUME_NONNULL_BEGIN

@interface IDLBaseTemplete : NSObject

#pragma mark For SubClass

- (void)overidableTempleteMethodOne;

- (void)overidableTempleteMethodTwo;

- (void)hookMethodOne;

- (void)hookMethodTwo;

#pragma mark Public

- (void)templete:(CallBack)callback;

@end

NS_ASSUME_NONNULL_END
