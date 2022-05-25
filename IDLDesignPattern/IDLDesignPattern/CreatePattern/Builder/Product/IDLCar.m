//
//  IDLCar.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import "IDLCar.h"

#import "IDLWheal.h"
#import "IDLDoor.h"
#import "IDLCarBody.h"

@interface IDLCar ()

@property(nonatomic, strong, readwrite) IDLWheal    *wheal;
@property(nonatomic, strong, readwrite) IDLDoor     *door;
@property(nonatomic, strong, readwrite) IDLCarBody  *carbody;

@end

@implementation IDLCar

+ (instancetype)carWithWheel:(IDLWheal *)wheal
                        door:(IDLDoor *)door
                     carBody:(IDLCarBody *)carBody {
    IDLCar *car = [IDLCar new];
    car.wheal = wheal;
    car.door = door;
    car.carbody = carBody;
    return car;
}

- (NSString *)description {
    
    return [NSString stringWithFormat:@"wheel count = %ld , doorColor = %@, carBody = %@", (long)self.wheal.wheelCout,
                                                                                          self.door.doorColor,
                                                                                          self.carbody.bodyColor];
}

@end
