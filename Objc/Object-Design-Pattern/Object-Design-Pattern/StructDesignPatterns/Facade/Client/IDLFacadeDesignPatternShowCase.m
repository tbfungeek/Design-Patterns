//
//  IDLFacadeDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/3.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLFacadeDesignPatternShowCase.h"

//facade
#import "IDLFacade.h"

@implementation IDLFacadeDesignPatternShowCase

#pragma mark IDLDesignPatternShowCase

- (void)showCase {
    
    [IDLFacade.shared drawPictureOne];
    
    [IDLFacade.shared drawPictureTwo];
}

@end
