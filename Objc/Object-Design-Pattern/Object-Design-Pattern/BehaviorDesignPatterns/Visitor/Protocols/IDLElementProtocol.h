//
//  IDLElementProtocol.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/8.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//visitor
#import "IDLVisitor.h"

NS_ASSUME_NONNULL_BEGIN

@protocol IDLElementProtocol <NSObject>

- (NSString *)accept:(IDLVisitor *)visitor;

@end

NS_ASSUME_NONNULL_END
