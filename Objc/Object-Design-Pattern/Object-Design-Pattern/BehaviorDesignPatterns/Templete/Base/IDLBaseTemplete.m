//
//  IDLBaseTemplete.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/7.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLBaseTemplete.h"

@implementation IDLBaseTemplete

- (void)fixTempleteMethodOne {
    NSLog(@"IDLBaseTemplete fixTempleteMethodOne");
}

- (void)fixTempleteMethodTwo {
    NSLog(@"IDLBaseTemplete fixTempleteMethodTwo");
}

- (void)overidableTempleteMethodOne {
    NSLog(@"IDLBaseTemplete overidableTempleteMethodOne");
}

- (void)overidableTempleteMethodTwo {
    NSLog(@"IDLBaseTemplete overidableTempleteMethodTwo");
}

- (void)hookMethodOne {
    NSLog(@"IDLBaseTemplete hookMethodOne");
}

- (void)hookMethodTwo {
    NSLog(@"IDLBaseTemplete hookMethodTwo");
}

- (void)templete:(CallBack)callback {
    [self fixTempleteMethodOne];
    [self fixTempleteMethodTwo];
    [self overidableTempleteMethodOne];
    [self hookMethodOne];
    [self overidableTempleteMethodTwo];
    [self hookMethodTwo];
    if(callback) callback();
}

@end
