//
//  IDLMonsterModel.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    IDLMonsterTypeUndefine,
    IDLMonsterTypeWaterMonster,
    IDLMonsterTypeAlienMonster,
} IDLMonsterType;

NS_ASSUME_NONNULL_BEGIN

@interface IDLMonsterModel : NSObject

@property(nonatomic, assign, readonly) IDLMonsterType type;

+ (instancetype)monstorWithType:(IDLMonsterType)type;

@end

NS_ASSUME_NONNULL_END
