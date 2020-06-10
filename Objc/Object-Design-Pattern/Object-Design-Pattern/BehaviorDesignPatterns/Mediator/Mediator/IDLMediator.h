//
//  IDLMediator.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//message
#import "IDLMessage.h"

//component
#import "IDLBaseComponet.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLMediator : NSObject

- (void)registeComponent:(IDLBaseComponet *)component;

- (void)notify:(IDLMessage *)message;

@end

NS_ASSUME_NONNULL_END
