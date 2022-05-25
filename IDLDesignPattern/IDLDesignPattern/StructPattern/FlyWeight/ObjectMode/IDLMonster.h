//
//  IDLMonster.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

#import "IDLMonsterModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLMonster : NSObject

@property(nonatomic, strong, readwrite) NSString *name;
@property(nonatomic, assign, readwrite) CGFloat attract;

+ (instancetype)monstorWithType:(IDLMonsterType)type name:(NSString *)name attract:(CGFloat)attract;

@end

NS_ASSUME_NONNULL_END
