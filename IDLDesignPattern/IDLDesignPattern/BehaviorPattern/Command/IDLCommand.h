//
//  IDLCommand.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

#import "IDLCommandProtocol.h"
#import "IDLReceiver.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLCommand : NSObject<IDLCommandProtocol>

+ (instancetype)commandWithValue1:(NSInteger)value1 value2:(NSInteger)value2;

@end

NS_ASSUME_NONNULL_END
