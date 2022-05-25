//
//  IDLM2LevelManager.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLM2LevelManager.h"

@implementation IDLM2LevelManager

- (void)handleRequest:(IDLRequest *)request {
    if(request.requstType == LeaveRequest) {
        NSLog(@"二级管理者同意了你的请假请求");
    } else if (request.requstType == QuitRequest) {
        NSLog(@"二级管理者不能批复离职请求，将改请求递给上级");
        [super handleRequest:request];
    }
}


@end
