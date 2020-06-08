//
//  IDLVisitor.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/8.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLVisitor.h"

//shapes
#import "IDLDotShape.h"
#import "IDLCircleShape.h"
#import "IDLRectAngleShape.h"

@implementation IDLVisitor

#pragma mark Public

- (NSString *)visiteDotShape:(IDLDotShape *)dotShape {
    return [NSString stringWithFormat:@"This is a dot With center = ( %ld , %ld )",dotShape.centerX,dotShape.centerY];
}

- (NSString *)visitCircleShape:(IDLCircleShape *)circleShape {
    return [NSString stringWithFormat:@"This is a Circle With center = ( %ld , %ld ) radius = %ld",
                                 circleShape.centerX,circleShape.centerY,circleShape.circleRadius];
}

- (NSString *)visitRectAngleShape:(IDLRectAngleShape *)rectAngleShape {
    return [NSString stringWithFormat:@"This is a RectAngle With center = ( %ld , %ld ) width = %ld height = %ld",
            rectAngleShape.centerX,rectAngleShape.centerY,rectAngleShape.width,rectAngleShape.height];
}

@end
