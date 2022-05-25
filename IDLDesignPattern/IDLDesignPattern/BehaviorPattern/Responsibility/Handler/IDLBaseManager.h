//
//  IDLBaseManager.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Cocoa/Cocoa.h>

#import "IDLManagerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLBaseManager : NSObject<IDLManagerProtocol>

- (instancetype)initWithSuccessor:(id<IDLManagerProtocol>)successor;

@end

NS_ASSUME_NONNULL_END
