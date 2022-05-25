//
//  IDLMonster.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLMonster.h"

#import "IDLMonsterModel.h"
#import "IDLFlyWeightObjectFactory.h"

@interface IDLMonster ()

@property(nonatomic, strong, readwrite) IDLMonsterModel *model;

@end

@implementation IDLMonster

#pragma mark - Initializer

+ (instancetype)monstorWithType:(IDLMonsterType)type name:(NSString *)name attract:(CGFloat)attract {
    IDLMonsterModel *model = [[IDLFlyWeightObjectFactory shareFactory] monsterOfType:type];
    IDLMonster *monstor = [[self class] monstorWithModel:model];
    monstor.name = name;
    monstor.attract = attract;
    return monstor;
}

+ (instancetype)monstorWithModel:(IDLMonsterModel *)model {
    IDLMonster *monstor = [IDLMonster new];
    monstor.model = model; //持有引用，不能修改
    return monstor;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"name = %@, attrac = %f type = %lu", self.name,self.attract,(unsigned long)self.model.type];
}

@end
