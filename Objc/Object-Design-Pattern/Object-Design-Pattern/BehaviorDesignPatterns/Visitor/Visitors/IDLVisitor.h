//
//  IDLVisitor.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/8.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//shapes
@class IDLDotShape;
@class IDLCircleShape;
@class IDLRectAngleShape;

NS_ASSUME_NONNULL_BEGIN

@interface IDLVisitor : NSObject

- (NSString *)visiteDotShape:(IDLDotShape *)dotShape;

- (NSString *)visitCircleShape:(IDLCircleShape *)circleShape;

- (NSString *)visitRectAngleShape:(IDLRectAngleShape *)rectAngleShape;

@end

NS_ASSUME_NONNULL_END
