//
//  IDLMemento.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IDLMemento : NSObject

@property(nonatomic, strong, readonly) NSString *state;

@property(nonatomic, strong, readonly) NSDate   *date;

- (instancetype)initWithState:(NSString *)state;

@end

NS_ASSUME_NONNULL_END
