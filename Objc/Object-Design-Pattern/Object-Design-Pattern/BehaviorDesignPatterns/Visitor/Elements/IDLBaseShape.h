//
//  IDLBaseShape.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/8.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

//protocols
#import "IDLElementProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLBaseShape : NSObject<IDLElementProtocol>

@property(nonatomic, assign, readonly) NSInteger centerX;

@property(nonatomic, assign, readonly) NSInteger centerY;

- (instancetype)initWithCenterX:(NSInteger)centerX centerY:(NSInteger)centerY;

@end

NS_ASSUME_NONNULL_END
