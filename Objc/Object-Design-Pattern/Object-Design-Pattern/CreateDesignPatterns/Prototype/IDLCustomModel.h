//
//  IDLCustomModel.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/2.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IDLCustomModel : NSObject<NSCopying>

@property(nonatomic, strong, readwrite) NSString *objectName;

@end

NS_ASSUME_NONNULL_END
