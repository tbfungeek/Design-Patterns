//
//  IDLDinosaur.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

#import "IDLDinosaurModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLDinosaur : NSObject

@property(nonatomic, strong, readwrite) NSString *name;
@property(nonatomic, assign, readwrite) CGFloat speed;

+ (instancetype)dinosaurWithType:(IDLDinosaurType)type name:(NSString *)name speed:(CGFloat)speed;

@end

NS_ASSUME_NONNULL_END
