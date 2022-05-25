//
//  IDLWrapper.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Cocoa/Cocoa.h>

#import "IDLWrapee.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLWrapper : NSObject<IDLWrappereeProtocol>

+ (instancetype)wrapperWithWrapee:(IDLWrapee *)wrapee;

- (void)extraMethod;

@end

NS_ASSUME_NONNULL_END
