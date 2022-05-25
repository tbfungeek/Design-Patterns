//
//  IDLCarBuidDirector.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import <Cocoa/Cocoa.h>

#import "IDLBuilderProtocol.h"
#import "IDLCar.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLCarBuidDirector : NSObject

+ (instancetype)carBuildDirectorWithBuilder:(id <IDLBuilderProtocol>)builder;

- (void)changeBuilder:(id <IDLBuilderProtocol>)builder;

- (IDLCar *)getResult;

@end

NS_ASSUME_NONNULL_END
