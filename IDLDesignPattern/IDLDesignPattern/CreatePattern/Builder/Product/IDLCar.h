//
//  IDLCar.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class IDLWheal;
@class IDLDoor;
@class IDLCarBody;

@interface IDLCar : NSObject

+ (instancetype)carWithWheel:(IDLWheal *)wheal
                        door:(IDLDoor *)door
                     carBody:(IDLCarBody *)carBody;

@end

NS_ASSUME_NONNULL_END
