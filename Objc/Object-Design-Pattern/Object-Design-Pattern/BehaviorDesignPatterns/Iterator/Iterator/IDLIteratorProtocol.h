//
//  IDLIteratorProtocol.h
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/11.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@protocol IDLIteratorProtocol <NSObject>

- (BOOL)hasNext;

- (NSString *)next;

- (void)first;

- (NSInteger)size;

- (NSString *)currentObject;

@end

NS_ASSUME_NONNULL_END
