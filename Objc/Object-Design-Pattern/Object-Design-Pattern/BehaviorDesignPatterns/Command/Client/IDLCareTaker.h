//
//  IDLCareTaker.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//originator
#import "IDLOriginator.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLCareTaker : NSObject

- (instancetype)initWithOriginator:(IDLOriginator *)originator;

- (void)backUp;

- (void)undo;

@end

NS_ASSUME_NONNULL_END
