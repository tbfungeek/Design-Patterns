//
//  IDLIteratorProtocol.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IDLIteratorProtocol <NSObject>

- (void)first;

- (void)next;

- (BOOL)hasNext;

- (id)element;

@end

NS_ASSUME_NONNULL_END
