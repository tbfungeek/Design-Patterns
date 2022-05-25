//
//  IDLCircle.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import <Foundation/Foundation.h>

#import "IDLShape.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLCircle : IDLShape

@property(nonatomic, assign, readwrite) CGFloat radius;

@end

NS_ASSUME_NONNULL_END
