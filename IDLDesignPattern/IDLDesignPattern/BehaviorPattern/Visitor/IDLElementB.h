//
//  IDLElementB.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Cocoa/Cocoa.h>

#import "IDLElementProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLElementB : NSObject<IDLElementProtocol>

- (void)elementBSpecialMethod;

@end

NS_ASSUME_NONNULL_END
