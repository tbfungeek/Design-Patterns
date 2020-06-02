//
//  IDLTarget.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/2.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IDLTarget <NSObject>

- (NSString *)dataWithJsonFormat;

@end

NS_ASSUME_NONNULL_END
