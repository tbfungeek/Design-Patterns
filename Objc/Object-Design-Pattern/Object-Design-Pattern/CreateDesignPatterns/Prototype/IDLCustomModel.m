//
//  IDLCustomModel.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/2.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLCustomModel.h"

@implementation IDLCustomModel

#pragma mark NSCopying

- (id)copyWithZone:(nullable NSZone *)zone {
    IDLCustomModel *object = [[IDLCustomModel alloc] init];
    object.objectName = [self.objectName copyWithZone:zone];
    return object;
}

@end
