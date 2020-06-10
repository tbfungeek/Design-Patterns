//
//  IDLArrayCollectionWrapper.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/11.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <UIKit/UIKit.h>

//protocols
#import "IDLCollectionProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLArrayCollectionWrapper : NSObject<IDLCollectionProtocol>

- (instancetype)initWithArray:(NSArray *)array;

@end

NS_ASSUME_NONNULL_END
