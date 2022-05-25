//
//  IDLCarBuidDirector.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import "IDLCarBuidDirector.h"

@interface IDLCarBuidDirector ()

@property(nonatomic, strong, readwrite) id<IDLBuilderProtocol> builder;
@property(nonatomic, strong, readwrite) IDLCar *car;

@end

@implementation IDLCarBuidDirector

+ (instancetype)carBuildDirectorWithBuilder:(id <IDLBuilderProtocol>)builder {
    IDLCarBuidDirector *director = [IDLCarBuidDirector new];
    director.builder = builder;
    return director;
}

- (void)changeBuilder:(id <IDLBuilderProtocol>)builder {
    self.builder = builder;
}

- (IDLCar *)getResult {
    IDLWheal *weel = [self.builder buildWeel];
    IDLCarBody *body = [self.builder buildCarBody];
    IDLDoor *door = [self.builder buildDoor];
    return [IDLCar carWithWheel:weel door:door carBody:body];
}

@end
