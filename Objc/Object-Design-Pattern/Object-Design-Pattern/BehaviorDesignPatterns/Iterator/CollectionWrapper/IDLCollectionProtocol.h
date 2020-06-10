//
//  IDLCollectionProtocol.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/11.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//iterator
#import "IDLIteratorProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol IDLCollectionProtocol <NSObject>

- (NSString *)itemWithIndex:(NSInteger)index;

- (NSInteger)size;

- (id<IDLIteratorProtocol>)iterator;

@end

NS_ASSUME_NONNULL_END
