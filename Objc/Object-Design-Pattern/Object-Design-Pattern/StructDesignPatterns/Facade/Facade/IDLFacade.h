//
//  IDLFacade.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/3.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IDLFacade : NSObject

+ (instancetype)shared;

- (void)drawPictureOne;

- (void)drawPictureTwo;

@end

NS_ASSUME_NONNULL_END
