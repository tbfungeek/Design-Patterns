//
//  IDLTextureFactory.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//protocals
#import "IDLTextureProtocol.h"

//header
#import "IDLTextureType.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLTextureFactory : NSObject

+ (id<IDLTextureProtocol>)textureWithType:(IDLTextureType)type;

@end

NS_ASSUME_NONNULL_END
