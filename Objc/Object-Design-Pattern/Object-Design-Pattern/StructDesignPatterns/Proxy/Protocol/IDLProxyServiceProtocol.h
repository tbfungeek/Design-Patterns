//
//  IDLProxyServiceProtocol.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/3.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IDLProxyServiceProtocol <NSObject>

- (BOOL)requestWithUrl:(NSString *)url userProfile:()

@end

NS_ASSUME_NONNULL_END
