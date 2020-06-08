//
//  IDLVisitorIDLDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/9.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLVisitorIDLDesignPatternShowCase.h"

//visitor
#import "IDLVisitor.h"

//shapes
#import "IDLDotShape.h"
#import "IDLCircleShape.h"
#import "IDLRectAngleShape.h"

@implementation IDLVisitorIDLDesignPatternShowCase

#pragma mark IDLDesignPatternShowCase

- (void)showCase {
    
    IDLDotShape *dotShape = [[IDLDotShape alloc] initWithDotSize:10 center:CGPointMake(100, 200)];
    IDLCircleShape *circleShape = [[IDLCircleShape alloc] initWithCircleRadius:40 center:CGPointMake(100, 100)];
    IDLRectAngleShape *rectAngleShape = [[IDLRectAngleShape alloc] initWithWidth:200 height:100 center:CGPointMake(20, 200)];
    
    NSArray<id<IDLElementProtocol>> *elementsArray = @[dotShape,circleShape,rectAngleShape];
    for (id<IDLElementProtocol> element in elementsArray) {
        NSLog(@"Result ==> %@",[element accept:[IDLVisitor new]]);
    }
}

@end
