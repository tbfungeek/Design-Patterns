//
//  IDLBaseCompanyProtocol.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IDLBaseCompanyProtocol <NSObject>

- (void)addChildCompany:(id<IDLBaseCompanyProtocol>)company;
- (void)removeChildCompany:(id<IDLBaseCompanyProtocol>)company;

- (void)display;

@end

NS_ASSUME_NONNULL_END
