//
//  IDLM1LevelManager.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLM1LevelManager.h"

@implementation IDLM1LevelManager

- (void)handleRequest:(IDLRequest *)request {
    if(request.requstType == LeaveRequest) {
        NSLog(@"一级管理者同意了你的请假请求");
    } else if (request.requstType == QuitRequest) {
        NSLog(@"一级管理者不能批复离职请求，将改请求递给上级");
        [super handleRequest:request];
    }
}

@end
