//
//  IDLFileDataSource.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/3.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//protocol
#import "IDLDataSource.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLFileDataSource : NSObject<IDLDataSource>

+ (instancetype)fileDataSourceWithFileName:(NSString *)fileName;

@end

NS_ASSUME_NONNULL_END
