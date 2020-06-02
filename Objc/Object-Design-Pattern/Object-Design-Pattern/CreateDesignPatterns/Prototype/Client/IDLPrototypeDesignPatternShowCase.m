//
//  IDLPrototypeDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/2.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLPrototypeDesignPatternShowCase.h"

//model
#import "IDLComplexObject.h"

@implementation IDLPrototypeDesignPatternShowCase

#pragma mark IDLDesignPatternShowCase

- (void)showCase {
    IDLComplexObject *complexObjc = [IDLComplexObject new];
    complexObjc.name = @"tbfungeek";
    complexObjc.age = 30;
    complexObjc.isMale = YES;
    complexObjc.testArray = @[@"A",@"B",@"C",@"D"];
    complexObjc.testDictionary = @{@"A":@"A",@"B":@"B"};
    
    IDLCustomModel *customModel = [IDLCustomModel new];
    customModel.objectName = @"objectName";
    complexObjc.customModel = customModel;
    
    IDLComplexObject *copyObject = [complexObjc copy];
    NSLog(@"===>%@",complexObjc);
}

@end
