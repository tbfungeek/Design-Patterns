//
//  IDLObjectProtocol.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IDLObjectProtocol <NSObject>

- (void)drawObjectOnScreenWithPosX:(NSInteger)posX posY:(NSInteger)posY;

@end

NS_ASSUME_NONNULL_END
