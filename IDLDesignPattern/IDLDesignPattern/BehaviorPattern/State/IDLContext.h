//
//  IDLContext.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

#import "IDLStateProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLContext : NSObject

@property(nonatomic, assign, readwrite) NSInteger time;

- (void)changeState:(id<IDLStateProtocol>)state;

- (void)greeting;

@end

NS_ASSUME_NONNULL_END
