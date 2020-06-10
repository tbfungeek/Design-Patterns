//
//  IDLBaseCommand.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <UIKit/UIKit.h>

//protocol
#import "IDLCommandProtocol.h"

//receiver
#import "IDLReceiver.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLCommand : NSObject<IDLCommandProtocol>

+ (instancetype)commandWithReceiver:(IDLReceiver *)receiver params:(NSArray<NSString *> *)params;

@end

NS_ASSUME_NONNULL_END
