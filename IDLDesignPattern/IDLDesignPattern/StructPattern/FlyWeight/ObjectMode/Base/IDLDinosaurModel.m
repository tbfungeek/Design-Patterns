//
//  DinosaurModel.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLDinosaurModel.h"

@interface IDLDinosaurModel ()

@property(nonatomic, assign, readwrite) IDLDinosaurType type;

@end

@implementation IDLDinosaurModel

#pragma mark - Initializer

+ (instancetype)dinosaurWithType:(IDLDinosaurType)type {
    IDLDinosaurModel *model = [IDLDinosaurModel new];
    model.type = type;
    return model;
}

@end
