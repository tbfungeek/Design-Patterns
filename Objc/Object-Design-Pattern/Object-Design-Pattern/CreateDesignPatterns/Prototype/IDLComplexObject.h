//
//  IDLComplexObject.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/2.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//model
#import "IDLCustomModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLComplexObject : NSObject<NSCopying>

@property (nonatomic, strong) NSString              *name;
@property (nonatomic, assign) NSInteger             age;
@property (nonatomic, assign) BOOL                 isMale;
@property (nonatomic, strong) NSArray               *testArray;
@property (nonatomic, strong) NSDictionary           *testDictionary;
@property (nonatomic, strong) IDLCustomModel         *customModel;

@end

NS_ASSUME_NONNULL_END
