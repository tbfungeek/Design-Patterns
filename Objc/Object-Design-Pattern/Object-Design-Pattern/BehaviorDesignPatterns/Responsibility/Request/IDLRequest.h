//
//  IDLRequest.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IDLRequest : NSObject

+ (instancetype)requstWithCode:(NSInteger)requestCode;

- (NSInteger)requestCode;

@end

NS_ASSUME_NONNULL_END
