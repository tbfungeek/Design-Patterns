//
//  IDLIterator.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/11.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <UIKit/UIKit.h>

//protocol
#import "IDLIteratorProtocol.h"
#import "IDLCollectionProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLIterator : NSObject<IDLIteratorProtocol>

- (instancetype)initWithCollection:(id<IDLCollectionProtocol>)collection;

@end

NS_ASSUME_NONNULL_END
