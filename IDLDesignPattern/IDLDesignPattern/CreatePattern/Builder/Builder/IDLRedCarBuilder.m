//
//  IDLRedCardBuilder.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import "IDLRedCarBuilder.h"

#import "IDLWheal.h"
#import "IDLDoor.h"
#import "IDLCarBody.h"

@implementation IDLRedCarBuilder

- (IDLWheal *)buildWeel {
    IDLWheal *wheel = [IDLWheal new];
    wheel.wheelCout = 4;
    return wheel;
}

- (IDLDoor *)buildDoor {
    IDLDoor *door = [IDLDoor new];
    door.doorColor = @"RED";
    return door;
}

- (IDLCarBody *)buildCarBody {
    IDLCarBody *carBody = [IDLCarBody new];
    carBody.bodyColor = @"RED";
    return carBody;
}

@end
