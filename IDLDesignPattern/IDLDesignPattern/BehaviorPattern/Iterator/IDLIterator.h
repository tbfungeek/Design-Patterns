//
//  IDLiterator.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

#import "IDLIteratorProtocol.h"
#import "IDLCollectionProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLIterator : NSObject<IDLIteratorProtocol>

- (instancetype)initWithComponent:(id<IDLCollectionProtocol>)component;

@end

NS_ASSUME_NONNULL_END
