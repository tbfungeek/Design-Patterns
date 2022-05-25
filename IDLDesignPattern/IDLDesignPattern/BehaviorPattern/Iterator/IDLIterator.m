//
//  IDLiterator.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLIterator.h"

#import "IDLCollectionProtocol.h"

@interface IDLIterator ()

@property(nonatomic, weak) id<IDLCollectionProtocol> component;

@property(nonatomic, assign) NSInteger                index;

@end

@implementation IDLIterator

- (instancetype)initWithComponent:(id<IDLCollectionProtocol>)component {
    if (self = [super init]) {
        _component = component;
    }
    return self;
}

- (nonnull id)element {
    return [self.component itemOfIndex:self.index];
}

- (void)first {
    self.index = 0;
}

- (BOOL)hasNext {
    return self.index <= self.component.size - 1;
}

- (void)next {
    self.index++;
}

@end
