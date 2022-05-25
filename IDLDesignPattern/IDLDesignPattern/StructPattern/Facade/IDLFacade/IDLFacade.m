//
//  IDLFacade.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import "IDLFacade.h"

//shaps
#import "IDLCircleShape.h"
#import "IDLRectShape.h"
#import "IDLLineShape.h"

@interface IDLFacade ()

@property (nonatomic, strong) IDLCircleShape *circle;
@property (nonatomic, strong) IDLRectShape   *rect;
@property (nonatomic, strong) IDLLineShape   *line;

@end

@implementation IDLFacade

#pragma mark - Public

- (void)drawRoundRect {
    [self.circle draw];
    [self.line draw];
    [self.circle draw];
    [self.line draw];
    [self.circle draw];
    [self.line draw];
    [self.circle draw];
    [self.line draw];
}

- (void)drawCircleAndLine {
    [self.circle draw];
    [self.line draw];
}

- (void)drawAll {
    [self.circle draw];
    [self.rect draw];
    [self.line draw];
}

#pragma mark - Getters/Setters

- (IDLCircleShape *)circle {
    if (!_circle) {
        _circle = [IDLCircleShape new];
    }
    return _circle;
}

- (IDLRectShape *)rect {
    if (!_rect) {
        _rect = [IDLRectShape new];
    }
    return _rect;
}

- (IDLLineShape *)line {
    if (!_line) {
        _line = [IDLLineShape new];
    }
    return _line;
}

@end
