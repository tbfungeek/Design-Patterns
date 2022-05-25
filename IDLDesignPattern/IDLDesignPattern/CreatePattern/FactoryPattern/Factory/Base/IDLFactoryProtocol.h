//
//  IDLFactoryProtocol.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import <Foundation/Foundation.h>

#import "IDLProductProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol IDLFactoryProtocol <NSObject>

- (id<IDLProductProtocol>)createProduct;

- (void)showProduct;

@end

NS_ASSUME_NONNULL_END
