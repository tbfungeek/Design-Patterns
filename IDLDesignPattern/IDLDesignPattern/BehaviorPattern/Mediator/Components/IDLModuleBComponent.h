//
//  IDLModuleBComponent.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

#import "IDLModuleBProtocol.h"
#import "IDLBaseComponentProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLModuleBComponent : NSObject<IDLModuleBProtocol,IDLBaseComponentProtocol>

- (void)sendMessageToCallfunctionA;

@end

NS_ASSUME_NONNULL_END
