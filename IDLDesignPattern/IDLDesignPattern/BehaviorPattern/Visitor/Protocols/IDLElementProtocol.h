//
//  IDLElementProtocol.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IDLVisitorProtocol;

@protocol IDLElementProtocol <NSObject>

@required

// 用于接收访问者到方法
//元素对象必须实现的方法
- (void)accept:(id<IDLVisitorProtocol>)visitor;

@optional

- (void)elementCommonMethod;

@end

NS_ASSUME_NONNULL_END
