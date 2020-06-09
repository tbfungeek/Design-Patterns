//
//  IDLBaseState.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/9.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <UIKit/UIKit.h>

//protocol
#import "IDLStateProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLBaseState : NSObject<IDLStateProtocol>

@property(nonatomic, weak, readonly) IDLContext *context;

@end

NS_ASSUME_NONNULL_END
