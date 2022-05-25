//
//  IDLObserver.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLObserver.h"

@implementation IDLObserver

- (void)onMessage:(id)messageObj {
    NSLog(@"收到新消息 %@",messageObj);
}

@end
