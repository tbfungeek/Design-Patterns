//
//  IDLBaseHandler.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <UIKit/UIKit.h>

//protocols
#import "IDLHandlerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLBaseHandler : NSObject<IDLHandlerProtocol>

- (instancetype)initWithHandleCode:(NSInteger)handlerCode;

@end

NS_ASSUME_NONNULL_END
