//
//  IDLBulletTexture.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLBulletTexture.h"

@implementation IDLBulletTexture

#pragma mark IDLTextureProtocol

- (NSString *)textureName {
    return @"BulletTexture";
}

- (NSInteger)textureSize {
    return 1000000 * 3;
}

@end
