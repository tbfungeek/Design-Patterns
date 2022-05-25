//
//  IDLBaseMessgeCarrier.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

#import "IDLMessageCarrierProtocol.h"
#import "IDLMessageProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLBaseMessgeCarrier : NSObject<IDLMessageCarrierProtocol>

- (void)prepareMessage:(id<IDLMessageProtocol>)message;

@end

NS_ASSUME_NONNULL_END
