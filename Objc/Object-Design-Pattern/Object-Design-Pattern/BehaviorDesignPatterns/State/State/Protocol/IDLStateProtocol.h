//
//  IDLStateProtocol.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/9.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//context
#import "IDLContext.h"

NS_ASSUME_NONNULL_BEGIN

@protocol IDLStateProtocol <NSObject>

- (void)update:(IDLContext *)context;

- (void)handle1;

- (void)handle2;

@end

NS_ASSUME_NONNULL_END
