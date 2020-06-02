//
//  IDLFacade.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/3.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLFacade.h"

//drawer
#import "IDLLineDrawer.h"
#import "IDLCircleDrawer.h"
#import "IDLRectDrawer.h"

@interface IDLFacade ()

@property(nonatomic, strong, readwrite) IDLLineDrawer   *lineDrawer;
@property(nonatomic, strong, readwrite) IDLCircleDrawer *circleDrawer;
@property(nonatomic, strong, readwrite) IDLRectDrawer   *rectDrawer;

@end

@implementation IDLFacade

#pragma mark Singleton

+ (instancetype)shared {
    static IDLFacade *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [IDLFacade new];
    });
    return instance;
}

#pragma mark Initializer

- (instancetype)init {
    
    if (self = [super init]) {
        _lineDrawer = [IDLLineDrawer new];
        _circleDrawer = [IDLCircleDrawer new];
        _rectDrawer  = [IDLRectDrawer new];
    }
    return self;
}

#pragma mark Public

- (void)drawPictureOne {
    
    NSLog(@"开始绘制Picture One");
    
    [self.lineDrawer drawShape];
    [self.lineDrawer drawShape];
    [self.lineDrawer drawShape];
    [self.circleDrawer drawShape];
    [self.lineDrawer drawShape];
    [self.rectDrawer drawShape];
    
    NSLog(@"Picture One 绘制结束");
}

- (void)drawPictureTwo {
    
    NSLog(@"开始绘制Picture Two");
    
    [self.lineDrawer drawShape];
    [self.rectDrawer drawShape];
    [self.rectDrawer drawShape];
    [self.circleDrawer drawShape];
    [self.lineDrawer drawShape];
    [self.rectDrawer drawShape];
    
    NSLog(@"Picture Two 绘制结束");
}

@end
