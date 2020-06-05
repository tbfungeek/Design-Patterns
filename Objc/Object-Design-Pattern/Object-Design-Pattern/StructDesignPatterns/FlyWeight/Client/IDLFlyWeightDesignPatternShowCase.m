//
//  IDLFlyWeightDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLFlyWeightDesignPatternShowCase.h"

#import "IDLMonster.h"
#import "IDLBullet.h"

#import "IDLTextureFactory.h"

@implementation IDLFlyWeightDesignPatternShowCase

#pragma mark - IDLDesignPatternShowCase

- (void)showCase {
    
    NSMutableArray<id<IDLObjectProtocol>> *objects = [NSMutableArray new];
    
    for (NSInteger index = 0; index <10; index++) {
        
        id<IDLObjectProtocol> object = nil;
        if (index % 2 == 0) {
            object =  [[IDLMonster alloc] initWithTexture:[IDLTextureFactory textureWithType:IDLMonsterType]];
        } else {
            object = [[IDLBullet alloc] initWithTexture:[IDLTextureFactory textureWithType:IDLBulletType]];
        }
        [object drawObjectOnScreenWithPosX:arc4random() posY:arc4random()];
        [objects addObject:object];
    }
    
}

@end
