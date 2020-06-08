//
//  IDLDotShape.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/8.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLBaseShape.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IDLDotShape : IDLBaseShape

@property(nonatomic, assign, readonly) NSInteger dotSize;

- (instancetype)initWithDotSize:(NSInteger)dotSize center:(CGPoint)center;

@end

NS_ASSUME_NONNULL_END
