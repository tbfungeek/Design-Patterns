//
//  IDLHouseBuilder.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/31.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//product

#import "IDLHouse.h"

NS_ASSUME_NONNULL_BEGIN

@protocol IDLHouseBuilderProtocal <NSObject>

- (nonnull id<IDLHouseBuilderProtocal>)reset;

- (id<IDLHouseBuilderProtocal>)buildWalls;

- (id<IDLHouseBuilderProtocal>)buildDoors;

- (id<IDLHouseBuilderProtocal>)buildWindows;

- (id<IDLHouseBuilderProtocal>)buildRoot;

- (id<IDLHouseBuilderProtocal>)buildGarage;

- (IDLHouse *)getResult;

@end

NS_ASSUME_NONNULL_END
