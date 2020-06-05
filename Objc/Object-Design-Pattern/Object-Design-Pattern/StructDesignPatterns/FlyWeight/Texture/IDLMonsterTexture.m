//
//  MonsterTexture.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLMonsterTexture.h"

@implementation IDLMonsterTexture

#pragma mark IDLTextureProtocol

- (NSString *)textureName {
    return @"MonsterTexture";
}

- (NSInteger)textureSize {
    return 1000000 * 10;
}

@end
