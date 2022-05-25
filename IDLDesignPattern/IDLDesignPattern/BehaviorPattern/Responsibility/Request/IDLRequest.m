//
//  IDLRequest.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLRequest.h"

@interface IDLRequest ()

@property (nonatomic, assign) IDLRequestType requstType;

@end

@implementation IDLRequest

+ (instancetype)leaveRequst {
    IDLRequest *request = [IDLRequest new];
    request.requstType = LeaveRequest;
    return request;
}


+ (instancetype)quitRequst {
    IDLRequest *request = [IDLRequest new];
    request.requstType = QuitRequest;
    return request;
}

@end
