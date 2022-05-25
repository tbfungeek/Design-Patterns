//
//  IDLSavageModel.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLSavageModel.h"

@interface IDLSavageModel ()

@property(nonatomic, assign, readwrite) IDLSavageType type;

@end

@implementation IDLSavageModel

#pragma mark - Initializer

+ (instancetype)savageWithType:(IDLSavageType)type {
    IDLSavageModel *model = [IDLSavageModel new];
    model.type = type;
    return model;
}

@end
