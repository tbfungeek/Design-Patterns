//
//  IDLDinosaur.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLDinosaur.h"

#import "IDLDinosaurModel.h"
#import "IDLFlyWeightObjectFactory.h"

@interface IDLDinosaur ()

@property(nonatomic, strong, readwrite) IDLDinosaurModel *model;

@end

@implementation IDLDinosaur

#pragma mark - Initializer

+ (instancetype)dinosaurWithType:(IDLDinosaurType)type name:(NSString *)name speed:(CGFloat)speed {
    IDLDinosaurModel *model = [[IDLFlyWeightObjectFactory shareFactory] dinosaurOfType:type];
    IDLDinosaur *dinosaur = [[self class] dinosaurWithModel:model];
    dinosaur.name = name;
    dinosaur.speed = speed;
    return dinosaur;
}

+ (instancetype)dinosaurWithModel:(IDLDinosaurModel *)model {
    IDLDinosaur *dinosaur = [IDLDinosaur new];
    dinosaur.model = model; //持有引用，不能修改
    return dinosaur;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"name = %@, speed = %f type = %lu", self.name,self.speed,(unsigned long)self.model.type];
}

@end
