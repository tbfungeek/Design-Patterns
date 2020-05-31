//
//  IDLAppleHostDevice.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/31.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLAppleHostDevice.h"

@implementation IDLAppleHostDevice

#pragma mark - IDLPCComponentProtocal

- (void)startUpComponent {
    NSLog(@"开始启动苹果电脑主机");
    NSLog(@"检测中..........");
    NSLog(@"苹果电脑主机启动完毕");
}

@end
