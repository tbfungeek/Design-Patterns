//
//  IDLHouseDirector.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/31.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//protocal
#import "IDLHouseBuilderProtocal.h"

//house
#import "IDLHouse.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLHouseDirector : NSObject

- (IDLHouseDirector *)buildHouseWithBuilder:(id<IDLHouseBuilderProtocal>)builder;

- (IDLHouse *)getResult;

@end

NS_ASSUME_NONNULL_END
