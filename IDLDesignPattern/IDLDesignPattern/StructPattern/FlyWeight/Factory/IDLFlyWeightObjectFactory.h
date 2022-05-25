//
//  IDLObjectFactory.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>


#import "IDLSavageModel.h"
#import "IDLDinosaurModel.h"
#import "IDLMonsterModel.h"


NS_ASSUME_NONNULL_BEGIN

@interface IDLFlyWeightObjectFactory : NSObject

+ (instancetype)shareFactory;

- (IDLMonsterModel *)monsterOfType:(IDLMonsterType)type;

- (IDLSavageModel *)saveOfType:(IDLSavageType)type;

- (IDLDinosaurModel *)dinosaurOfType:(IDLDinosaurType)type;

- (IDLMonsterModel *)monsterOfType:(IDLMonsterType)type;

@end

NS_ASSUME_NONNULL_END
