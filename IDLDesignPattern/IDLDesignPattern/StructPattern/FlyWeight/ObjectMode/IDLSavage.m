//
//  IDLSavage.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLSavage.h"

#import "IDLFlyWeightObjectFactory.h"

@interface IDLSavage ()

@property(nonatomic, strong, readwrite) IDLSavageModel *model;

@end

@implementation IDLSavage

#pragma mark - Initializer

+ (instancetype)savegeWithType:(IDLSavageType)type name:(NSString *)name skinColor:(NSString *)skinColor {
    IDLSavageModel *model = [[IDLFlyWeightObjectFactory shareFactory] saveOfType:type];
    IDLSavage *save = [[self class] savegeWithModel:model];
    save.name = name;
    save.skinColor = skinColor;
    return save;
}

+ (instancetype)savegeWithModel:(IDLSavageModel *)model {
    IDLSavage *savage = [IDLSavage new];
    savage.model = model; //持有引用，不能修改
    return savage;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"name = %@, skinColor = %@ type = %lu", self.name,self.skinColor,(unsigned long)self.model.type];
}

@end
