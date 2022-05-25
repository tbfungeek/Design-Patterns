//
//  IDLMonsterModel.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLMonsterModel.h"

@interface IDLMonsterModel ()

@property(nonatomic, assign, readwrite) IDLMonsterType type;

@end

@implementation IDLMonsterModel

#pragma mark - Initializer

+ (instancetype)monstorWithType:(IDLMonsterType)type {
    IDLMonsterModel *model = [IDLMonsterModel new];
    model.type = type;
    return model;
}

@end
