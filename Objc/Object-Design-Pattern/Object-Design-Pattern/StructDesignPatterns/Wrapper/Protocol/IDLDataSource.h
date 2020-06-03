//
//  IDLFileDataSource.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/3.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IDLDataSource <NSObject>

- (void)writeData:(NSString *)data;

- (NSString *)readData;

@end

NS_ASSUME_NONNULL_END
