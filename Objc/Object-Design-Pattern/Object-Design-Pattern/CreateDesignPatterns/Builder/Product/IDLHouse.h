//
//  IDLHouse.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/31.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IDLHouse : NSObject

@property(nonatomic, assign, readwrite) NSInteger wallNum;
@property(nonatomic, assign, readwrite) NSInteger doorNum;
@property(nonatomic, assign, readwrite) NSInteger windowNum;
@property(nonatomic, assign, readwrite) BOOL      hasRoot;
@property(nonatomic, assign, readwrite) BOOL      hasGarage;

@end

NS_ASSUME_NONNULL_END
