//
//  IDLBaseMessage.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

#import "IDLMessageProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLBaseMessage : NSObject<IDLMessageProtocol>

@property(nonatomic, strong, readwrite) NSString *content;

@end

NS_ASSUME_NONNULL_END
