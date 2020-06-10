//
//  IDLOriginator.h
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>

//Memento
#import "IDLMemento.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLOriginator : NSObject

- (instancetype)initWithState:(NSString *)state;

- (void)changeState;

- (IDLMemento *)store;

- (void)restore:(IDLMemento *)memento;

- (NSString *)showState;

@end

NS_ASSUME_NONNULL_END
