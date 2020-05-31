//
//  IDLLuxuriousHouseBuilder.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/31.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLLuxuriousHouseBuilder.h"

//product
#import "IDLHouse.h"

@interface IDLLuxuriousHouseBuilder ()

@property(nonatomic, strong, readwrite) IDLHouse *house;

@end

@implementation IDLLuxuriousHouseBuilder

#pragma mark - IDLHouseBuilderProtocal

- (nonnull id<IDLHouseBuilderProtocal>)buildDoors {
    self.house.doorNum = 4;
    return self;
}

- (nonnull id<IDLHouseBuilderProtocal>)buildGarage {
    self.house.hasGarage = YES;
    return self;
}

- (nonnull id<IDLHouseBuilderProtocal>)buildRoot {
    self.house.hasRoot = YES;
    return self;
}

- (nonnull id<IDLHouseBuilderProtocal>)buildWalls {
    self.house.wallNum = 4;
    return self;
}

- (nonnull id<IDLHouseBuilderProtocal>)buildWindows {
    self.house.windowNum = 16;
    return self;
}

- (nonnull IDLHouse *)getResult {
    return self.house;
}

- (nonnull id<IDLHouseBuilderProtocal>)reset {
    NSLog(@"开始建造豪华风格的房子........");
    return self;
}

#pragma mark - Getters/Setters

- (IDLHouse *)house {
    if(!_house) {
        _house = [IDLHouse new];
    }
    return _house;
}


@end
