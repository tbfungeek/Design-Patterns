//
//  IDLRectangle.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import <Foundation/Foundation.h>

#import "IDLShape.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLRectangle : IDLShape

@property(nonatomic, assign, readwrite) CGFloat width;

@property(nonatomic, assign, readwrite) CGFloat height;

@end

NS_ASSUME_NONNULL_END
