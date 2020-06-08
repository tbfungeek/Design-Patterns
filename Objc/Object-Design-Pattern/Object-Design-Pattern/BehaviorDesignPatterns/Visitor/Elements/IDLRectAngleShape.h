//
//  IDLRectAngleShape.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/8.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLBaseShape.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IDLRectAngleShape : IDLBaseShape

@property(nonatomic, assign, readonly) NSInteger width;

@property(nonatomic, assign, readonly) NSInteger height;

- (instancetype)initWithWidth:(NSInteger)width height:(NSInteger)height center:(CGPoint)center;

@end

NS_ASSUME_NONNULL_END
