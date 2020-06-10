//
//  IDLIterator.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/11.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLIterator.h"

//protocols
#import "IDLCollectionProtocol.h"

@interface IDLIterator ()

@property(nonatomic, strong, readwrite) id<IDLCollectionProtocol> collection;

@property(nonatomic, assign, readwrite) NSInteger index;

@end

@implementation IDLIterator

#pragma mark Initializer

- (instancetype)initWithCollection:(id<IDLCollectionProtocol>)collection {
    if(self = [super init]) {
        _collection = collection;
        _index = 0;
    }
    return self;
}

#pragma mark IDLIteratorProtocol

- (nonnull NSString *)currentObject {
    return [self.collection itemWithIndex:self.index];
}

- (void)first {
    self.index = 0;
}

- (BOOL)hasNext {
    return self.index != [self.collection size];
}

- (nonnull NSString *)next {
    NSString *value = [self.collection itemWithIndex:self.index];
    self.index += 1;
    return value;
}

- (NSInteger)size {
    return [self.collection size];
}

@end
