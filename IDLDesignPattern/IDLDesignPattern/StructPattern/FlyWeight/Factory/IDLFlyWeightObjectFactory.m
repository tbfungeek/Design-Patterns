//
//  IDLObjectFactory.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLFlyWeightObjectFactory.h"

#import "IDLDinosaur.h"
#import "IDLSavage.h"
#import "IDLMonster.h"

@interface IDLFlyWeightObjectFactory ()

@property(nonatomic, strong, readwrite) NSMutableDictionary<NSString *,IDLSavageModel *>     *saveCache;
@property(nonatomic, strong, readwrite) NSMutableDictionary<NSString *,IDLDinosaurModel *>   *dinosaurCache;
@property(nonatomic, strong, readwrite) NSMutableDictionary<NSString *,IDLMonsterModel *>    *monsterCache;

@end

@implementation IDLFlyWeightObjectFactory

+ (instancetype)shareFactory {
    static IDLFlyWeightObjectFactory *_shareFactory = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shareFactory = [IDLFlyWeightObjectFactory new];
    });
    return _shareFactory;
}

- (IDLSavageModel *)saveOfType:(IDLSavageType)type {
    IDLSavageModel *savege = [self.saveCache objectForKey:@(type).stringValue];
    if (!savege) {
        savege = [IDLSavageModel savageWithType:type];
        [self.saveCache setObject:savege forKey:@(type).stringValue];
    }
    return savege;
}

- (IDLDinosaurModel *)dinosaurOfType:(IDLDinosaurType)type {
    IDLDinosaurModel *dinosaur = [self.dinosaurCache objectForKey:@(type).stringValue];
    if (!dinosaur) {
        dinosaur = [IDLDinosaurModel dinosaurWithType:type];
        [self.dinosaurCache setObject:dinosaur forKey:@(type).stringValue];
    }
    return dinosaur;
}

- (IDLMonsterModel *)monsterOfType:(IDLMonsterType)type {
    IDLMonsterModel *monster = [self.monsterCache objectForKey:@(type).stringValue];
    if (!monster) {
        monster = [IDLMonsterModel monstorWithType:type];
        [self.monsterCache setObject:monster forKey:@(type).stringValue];
    }
    return monster;
}

- (NSMutableDictionary<NSString *,IDLSavageModel *> *)saveCache {
    if (!_saveCache) {
        _saveCache = [NSMutableDictionary new];
    }
    return _saveCache;
}

- (NSMutableDictionary<NSString *,IDLDinosaurModel *> *)dinosaurCache {
    if (!_dinosaurCache) {
        _dinosaurCache = [NSMutableDictionary new];
    }
    return _dinosaurCache;
}

- (NSMutableDictionary<NSString *,IDLMonsterModel *> *)monsterCache {
    if (!_monsterCache) {
        _monsterCache = [NSMutableDictionary new];
    }
    return _monsterCache;
}

@end
