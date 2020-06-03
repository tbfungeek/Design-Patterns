//
//  IDLRealSubject.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/3.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//protocols
#import "IDLProxyServiceProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLRealSubject : NSObject<IDLProxyServiceProtocol>

@end

NS_ASSUME_NONNULL_END
