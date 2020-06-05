//
//  IDLTextureType.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#ifndef IDLTextureType_h
#define IDLTextureType_h

static const NSString * kMonsterTextureName = @"MonsterTexture";
static const NSString * kBulletTextureName = @"BulletTexture";

typedef NS_ENUM(NSUInteger, IDLTextureType) {
    IDLMonsterType,
    IDLBulletType,
};


#endif /* IDLTextureType_h */
