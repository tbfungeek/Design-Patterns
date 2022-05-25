//
//  IDLCollectionWrapper.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

#import "IDLIteratorProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol IDLCollectionProtocol <NSObject>

- (id<IDLIteratorProtocol>)createIterator;

- (NSInteger)size;

- (id)itemOfIndex:(NSInteger)index;

- (void)addItem:(id)item;

- (void)removeItem:(id)item;



@end

NS_ASSUME_NONNULL_END
