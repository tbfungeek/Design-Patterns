//
//  IDLModuleAComponent.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

#import "IDLModuleAProtocol.h"
#import "IDLBaseComponentProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLModuleAComponent : NSObject<IDLModuleAProtocol,IDLBaseComponentProtocol>

- (void)sendMessageToCallfunctionB;

@end

NS_ASSUME_NONNULL_END
