//
//  IDLBaseComponet.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//protocol
#import "IDLComponentProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLBaseComponet : NSObject<IDLComponentProtocol>

- (instancetype)initWithComponentName:(NSString *)componentName;

@end

NS_ASSUME_NONNULL_END
