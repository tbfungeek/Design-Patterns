//
//  IDLM3LevelManager.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLM3LevelManager.h"

@implementation IDLM3LevelManager

- (void)handleRequest:(IDLRequest *)request {
    if(request.requstType == LeaveRequest) {
        NSLog(@"三级管理者同意了你的请假请求");
    } else if (request.requstType == QuitRequest) {
        NSLog(@"三级管理者同意了你的离职请求");
    }
}

@end
