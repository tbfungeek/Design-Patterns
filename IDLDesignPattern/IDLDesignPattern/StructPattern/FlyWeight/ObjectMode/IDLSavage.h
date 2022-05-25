//
//  IDLSavage.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Cocoa/Cocoa.h>

#import "IDLSavageModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLSavage : NSObject

@property(nonatomic, strong, readwrite) NSString *name;
@property(nonatomic, strong, readwrite) NSString *skinColor;

+ (instancetype)savegeWithType:(IDLSavageType)type name:(NSString *)name skinColor:(NSString *)skinColor;

@end

NS_ASSUME_NONNULL_END
