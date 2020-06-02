//
//  IDLComplexObject.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/2.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLComplexObject.h"

@implementation IDLComplexObject

#pragma mark NSCopying

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    IDLComplexObject *complexObjc = [IDLComplexObject new];
    complexObjc.name = [self.name copyWithZone:zone];
    complexObjc.age  = self.age;
    complexObjc.isMale = self.isMale;
    complexObjc.testArray = [[[self.testArray class] alloc] initWithArray:self.testArray copyItems:YES];
    complexObjc.testDictionary = [[[self.testDictionary class] alloc] initWithDictionary:self.testDictionary copyItems:YES];
    complexObjc.customModel = [self.customModel copyWithZone:zone];
    return complexObjc;
}

@end
