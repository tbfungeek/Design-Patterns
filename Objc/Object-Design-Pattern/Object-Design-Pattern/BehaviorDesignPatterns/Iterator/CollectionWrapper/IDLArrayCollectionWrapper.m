//
//  IDLArrayCollectionWrapper.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/11.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLArrayCollectionWrapper.h"

//iterator
#import "IDLIterator.h"

@interface IDLArrayCollectionWrapper ()

@property(nonatomic, strong, readwrite) NSArray<NSString *> *innerArray;

@end

@implementation IDLArrayCollectionWrapper

#pragma mark Initializer

- (instancetype)initWithArray:(NSArray *)array {
    if(self = [super init]) {
        _innerArray = array;
    }
    return self;
}

#pragma mark IDLCollectionProtocol

- (nonnull NSString *)itemWithIndex:(NSInteger)index {
    return [self.innerArray objectAtIndex:index];
}

- (nonnull id<IDLIteratorProtocol>)iterator {
    return [[IDLIterator alloc] initWithCollection:self];
}

- (NSInteger)size {
    return [self.innerArray count];
}

@end
