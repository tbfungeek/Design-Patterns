//
//  IDLHouseDirector.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/31.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLHouseDirector.h"

@interface IDLHouseDirector ()

@property(nonatomic, strong, readwrite) id<IDLHouseBuilderProtocal> houseBuilder;

@end

@implementation IDLHouseDirector

#pragma mark - Public

- (IDLHouseDirector *)buildHouseWithBuilder:(id<IDLHouseBuilderProtocal>)builder {
    self.houseBuilder = builder;
    
    [[[[[[self.houseBuilder reset] buildRoot] buildDoors] buildWalls] buildWindows] buildGarage];
    
    return self;
}

- (IDLHouse *)getResult {
    return [self.houseBuilder getResult];
}

@end
