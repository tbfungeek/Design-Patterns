//
//  IDLCommandInvoker.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//command
#import "IDLCommand.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLCommandInvoker : NSObject

- (void)addCommand:(IDLCommand *)command;

- (void)excute;

@end

NS_ASSUME_NONNULL_END
