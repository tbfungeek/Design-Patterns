//
//  IDLProxySubject.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/3.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//protocol
#import "IDLProxyServiceProtocol.h"

//subject
#import "IDLRealSubject.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLProxySubject : NSObject<IDLProxyServiceProtocol>

- (instancetype)initWithRealSubject:(IDLRealSubject *)realSubject;

@end

NS_ASSUME_NONNULL_END
