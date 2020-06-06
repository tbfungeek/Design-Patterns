//
//  IDLTempleteDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/7.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLTempleteDesignPatternShowCase.h"

//templete
#import "IDLTempleteOne.h"
#import "IDLTempleteTwo.h"

@implementation IDLTempleteDesignPatternShowCase

#pragma mark IDLDesignPatternShowCase

- (void)showCase {
    
    IDLTempleteOne *templeteOne = [IDLTempleteOne new];
    
    [templeteOne templete:^{
        NSLog(@"This is Log From IDLTempleteOne CallBack");
    }];
    
    IDLTempleteTwo *templeteTwo = [IDLTempleteTwo new];
    
    [templeteTwo templete:^{
        NSLog(@"This is Log From IDLTempleteTwo CallBack");
    }];
    
}

@end
