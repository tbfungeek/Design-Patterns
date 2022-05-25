//
//  IDLRequest.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, IDLRequestType) {
    LeaveRequest,
    QuitRequest,
};

NS_ASSUME_NONNULL_BEGIN

@interface IDLRequest : NSObject

@property (nonatomic, assign, readonly) IDLRequestType requstType;

+ (instancetype)leaveRequst;

+ (instancetype)quitRequst;

@end

NS_ASSUME_NONNULL_END
