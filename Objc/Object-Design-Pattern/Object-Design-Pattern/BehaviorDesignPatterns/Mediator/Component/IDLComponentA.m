//
//  IDLComponentA.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLComponentA.h"

@implementation IDLComponentA

#pragma mark - Overide

- (void)onMessage:(IDLMessage *)message {
    NSLog(@"IDLComponentA  onMessage: message %@ from %@",message.message,message.sender);
}

@end
