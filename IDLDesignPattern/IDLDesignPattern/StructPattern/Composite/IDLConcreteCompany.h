//
//  IDLRootCompany.h
//  DesignPattern
//
//  Created by linxiaohai on 2019/3/4.
//  Copyright © 2019 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//protocol
#import "IDLBaseCompanyProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLConcreteCompany : NSObject<IDLBaseCompanyProtocol>

- (instancetype)initWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
