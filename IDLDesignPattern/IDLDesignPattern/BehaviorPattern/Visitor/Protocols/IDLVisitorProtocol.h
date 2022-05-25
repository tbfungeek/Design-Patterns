//
//  IDLVisitorProtocol.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IDLElementProtocol;

@protocol IDLVisitorProtocol <NSObject>

// 用于访问元素的接口
@required
- (void)visit:(id<IDLElementProtocol>)element;

@optional
// 访问者的公共方法
- (void)visitorCommonMethod;

@end

NS_ASSUME_NONNULL_END
