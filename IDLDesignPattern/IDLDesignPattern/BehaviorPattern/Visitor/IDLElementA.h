//
//  IDLElementA.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Cocoa/Cocoa.h>

#import "IDLElementProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLElementA : NSObject<IDLElementProtocol>

- (void)elementASpecialMethod;

@end

NS_ASSUME_NONNULL_END
