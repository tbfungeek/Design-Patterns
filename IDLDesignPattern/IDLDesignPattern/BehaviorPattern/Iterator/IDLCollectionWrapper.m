//
//  IDLCollectionWrapper.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLCollectionWrapper.h"

#import "IDLIterator.h"

@interface IDLCollectionWrapper ()

@property (nonatomic, strong) NSMutableArray *innerArray;

@end

@implementation IDLCollectionWrapper

- (nonnull id<IDLIteratorProtocol>)createIterator {
    return [[IDLIterator alloc] initWithComponent:self];
}

- (NSInteger)size {
    return self.innerArray.count;
}

- (nonnull id)itemOfIndex:(NSInteger)index {
    if (index < 0 || index >= self.innerArray.count) return nil;
    return [self.innerArray objectAtIndex:index];
}

- (void)addItem:(nonnull id)item {
    if (item == nil) return;
    [self.innerArray addObject:item];
}

- (void)removeItem:(nonnull id)item {
    if (![self.innerArray containsObject:item]) return;
    [self.innerArray removeObject:item];
}

- (NSMutableArray *)innerArray {
    if (!_innerArray) {
        _innerArray = [NSMutableArray new];
    }
    return _innerArray;
}

@end
