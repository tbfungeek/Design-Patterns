//
//  IDLObject.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLObject.h"

@interface IDLObject ()

@property(nonatomic, assign, readwrite) NSInteger x;
@property(nonatomic, assign, readwrite) NSInteger y;
@property(nonatomic, strong, readwrite) id<IDLTextureProtocol> texture;

@end

@implementation IDLObject

#pragma mark Initializer

- (instancetype)initWithTexture:(id<IDLTextureProtocol>)texture {
    if(self = [super init]) {
        self.texture = texture;
    }
    return self;
}

#pragma mark IDLObjectProtocol

- (void)drawObjectOnScreenWithPosX:(NSInteger)posX posY:(NSInteger)posY {
    self.x = posX;
    self.y = posY;
    NSLog(@"object with %@ Texture draw in (%ld , %ld) position",[self.texture textureName],posX,posY);
}

@end
