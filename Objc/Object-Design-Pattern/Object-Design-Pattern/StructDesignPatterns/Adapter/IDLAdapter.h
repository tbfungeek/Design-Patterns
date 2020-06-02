//
//  IDLAdapter.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/2.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <UIKit/UIKit.h>

//protocol
#import "IDLTarget.h"

@class IDLAdaptee;

NS_ASSUME_NONNULL_BEGIN

@interface IDLAdapter:NSObject<IDLTarget>

+ (instancetype)adapterWithAdaptee:(IDLAdaptee *)adaptee;

@end

NS_ASSUME_NONNULL_END
