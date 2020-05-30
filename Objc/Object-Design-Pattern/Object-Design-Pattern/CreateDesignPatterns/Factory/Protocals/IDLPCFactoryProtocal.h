//
//  IDLPCFactory.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/30.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//protocals
#import "IDLPCDeviceProtocal.h"

NS_ASSUME_NONNULL_BEGIN

@protocol IDLPCFactoryProtocal <NSObject>

- (id<IDLPCDeviceProtocal>)createPCDevice;

- (void)generateProduct;


@end

NS_ASSUME_NONNULL_END
