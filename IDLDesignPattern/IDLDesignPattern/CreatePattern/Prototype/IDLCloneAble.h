//
//  IDLCopying.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IDLCloneAble <NSObject>

- (instancetype)clone;

@end

NS_ASSUME_NONNULL_END
