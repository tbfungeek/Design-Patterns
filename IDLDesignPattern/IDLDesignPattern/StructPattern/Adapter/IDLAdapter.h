//
//  IDLAdapter.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import <Foundation/Foundation.h>

#import "IDLTargetProtocol.h"
#import "IDLAdaptee.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLAdapter : NSObject<IDLTargetProtocol>

+ (instancetype)adapterWithAdaptee:(IDLAdaptee *)adaptee;

- (void)methodAfterAdapter;

@end

NS_ASSUME_NONNULL_END
