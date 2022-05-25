//
//  IDLBuilderProtocol.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import <Foundation/Foundation.h>

#import "IDLWheal.h"
#import "IDLDoor.h"
#import "IDLCarBody.h"

NS_ASSUME_NONNULL_BEGIN

@protocol IDLBuilderProtocol <NSObject>

- (IDLWheal *)buildWeel;

- (IDLDoor *)buildDoor;

- (IDLCarBody *)buildCarBody;

@end

NS_ASSUME_NONNULL_END
