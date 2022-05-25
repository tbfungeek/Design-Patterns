//
//  IDLShape.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import <Foundation/Foundation.h>

#import "IDLCloneAble.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLShape : NSObject<IDLCloneAble>

@property(nonatomic, assign, readwrite) CGFloat x;

@property(nonatomic, assign, readwrite) CGFloat y;

@end

NS_ASSUME_NONNULL_END
