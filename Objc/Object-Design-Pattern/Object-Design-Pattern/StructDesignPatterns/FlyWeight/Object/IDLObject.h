//
//  IDLObject.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <UIKit/UIKit.h>

//protocols
#import "IDLObjectProtocol.h"
#import "IDLTextureProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLObject : NSObject<IDLObjectProtocol>

- (instancetype)initWithTexture:(id<IDLTextureProtocol>)texture;

@end

NS_ASSUME_NONNULL_END
