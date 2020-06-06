//
//  IDLTempleteOne.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/7.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLTempleteOne.h"

@implementation IDLTempleteOne

#pragma mark Overide

- (void)overidableTempleteMethodOne {
    NSLog(@"IDLTempleteOne overidableTempleteMethodOne");
}

- (void)overidableTempleteMethodTwo {
    NSLog(@"IDLTempleteOne overidableTempleteMethodTwo");
}

- (void)hookMethodOne {
    NSLog(@"IDLTempleteOne hookMethodOne");
}

@end
