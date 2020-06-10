//
//  IDLReceiver.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLReceiver.h"

@implementation IDLReceiver

#pragma mark - Public

- (void)doWorkWithParas:(NSArray<NSString *> *)parameters {
    
    NSLog(@"IDLReceiver doWorkWithParas:");
    
    for (NSString *param in parameters) {
        NSLog(@"IDLReceiver Parameter: %@",param);
    }
}

@end
