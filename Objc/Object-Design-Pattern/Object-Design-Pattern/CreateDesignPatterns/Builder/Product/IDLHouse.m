//
//  IDLHouse.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/31.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLHouse.h"

@implementation IDLHouse

#pragma mark - Overide

- (NSString *)description {
    return [NSString stringWithFormat:@"This is a house with %ld walls, %ld doors, %ld windows %@ %@",
                self.wallNum,
                self.doorNum,
                self.windowNum,
                self.hasRoot? @"has a nice root":@"without root",
                self.hasGarage ? @"has a nice Garage":@"without Garage"];
}

@end
