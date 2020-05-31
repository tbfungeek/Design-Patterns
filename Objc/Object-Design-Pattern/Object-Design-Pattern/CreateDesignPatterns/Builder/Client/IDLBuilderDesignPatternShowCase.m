//
//  IDLBuilderDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/31.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLBuilderDesignPatternShowCase.h"

//builder
#import "IDLSimpleHouseBuilder.h"
#import "IDLLuxuriousHouseBuilder.h"
#import "IDLHouseDirector.h"

@implementation IDLBuilderDesignPatternShowCase

#pragma mark - IDLDesignPatternShowCase

- (void)showCase {
    
    IDLHouseDirector *houseDirector = [IDLHouseDirector new];
    
    NSLog(@"%@",[[houseDirector buildHouseWithBuilder:[IDLSimpleHouseBuilder new]] getResult]);
    
    NSLog(@"%@",[[houseDirector buildHouseWithBuilder:[IDLLuxuriousHouseBuilder new]] getResult]);
    
}

@end
