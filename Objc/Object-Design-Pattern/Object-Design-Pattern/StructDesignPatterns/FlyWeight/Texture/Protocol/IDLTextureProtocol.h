//
//  IDLTextureProtocol.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IDLTextureProtocol <NSObject>

- (NSString *)textureName;

- (NSInteger)textureSize;

@end

NS_ASSUME_NONNULL_END
