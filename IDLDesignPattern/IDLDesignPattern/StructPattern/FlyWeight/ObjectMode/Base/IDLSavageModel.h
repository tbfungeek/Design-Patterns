//
//  IDLSavageModel.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    IDLSavageTypeUndefine,
    IDLSavageTypeStrong,
    IDLSavageTypeWeak,
} IDLSavageType;

@interface IDLSavageModel : NSObject

/**
    野人类型：强壮的和弱小的
 */
@property(nonatomic, assign, readonly) IDLSavageType type;


+ (instancetype)savageWithType:(IDLSavageType)type;

@end

NS_ASSUME_NONNULL_END
