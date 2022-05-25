//
//  IDLCommand.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IDLCommandProtocol <NSObject>

- (NSInteger)execute;

@end

NS_ASSUME_NONNULL_END
