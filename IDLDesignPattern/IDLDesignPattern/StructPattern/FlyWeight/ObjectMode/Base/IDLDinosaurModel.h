//
//  DinosaurModel.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    IDLDinosaurUndefine,
    IDLDinosaurTypeTriceratops,//三角龙
    IDLDinosaurTypeRaptor,//迅猛龙
    IDLDinosaurTypePterosaur,//翼龙
} IDLDinosaurType;

NS_ASSUME_NONNULL_BEGIN

@interface IDLDinosaurModel : NSObject

@property(nonatomic, assign, readonly) IDLDinosaurType type;

+ (instancetype)dinosaurWithType:(IDLDinosaurType)type;

@end

NS_ASSUME_NONNULL_END
