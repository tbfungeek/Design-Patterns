//
//  IDLTextureFactory.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLTextureFactory.h"

//texture
#import "IDLMonsterTexture.h"
#import "IDLBulletTexture.h"

static NSMutableDictionary *g_textureDictionary;

@interface IDLTextureFactory ()

@end

@implementation IDLTextureFactory

+ (id<IDLTextureProtocol>)textureWithType:(IDLTextureType)type {
    
    if (g_textureDictionary == nil) {
        g_textureDictionary = [NSMutableDictionary new];
    }
    
    id<IDLTextureProtocol> cacheTexture = nil;
    switch (type) {
        case IDLMonsterType:{
            cacheTexture = [g_textureDictionary objectForKey:kMonsterTextureName];
            if (!cacheTexture) {
                cacheTexture = [[IDLMonsterTexture alloc] init];
                [g_textureDictionary setObject:cacheTexture forKey:kMonsterTextureName];
            }
        } break;
        case IDLBulletType: {
            cacheTexture = [g_textureDictionary objectForKey:kBulletTextureName];
            if (!cacheTexture) {
                cacheTexture = [[IDLBulletTexture alloc] init];
                [g_textureDictionary setObject:cacheTexture forKey:kBulletTextureName];
            }
        } break;
    }
    return cacheTexture;
}

@end
