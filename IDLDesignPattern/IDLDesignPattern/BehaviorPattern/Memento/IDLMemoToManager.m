//
//  IDLMemoToManager.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLMemoToManager.h"

@interface IDLMemoToManager ()

@property(nonatomic, strong, readwrite) NSMutableArray<IDLSnapshot *> *histories;

@end

@implementation IDLMemoToManager

- (void)storeSnapShot:(IDLSnapshot *)snapShot {
    [self.histories addObject:snapShot];
}

- (void)undo {
    IDLSnapshot *lastSnapshot = self.histories.lastObject;
    if (lastSnapshot) {
        [lastSnapshot restore];
        [self.histories removeLastObject];
    }
}

- (NSMutableArray<IDLSnapshot *> *)histories {
    if (!_histories) {
        _histories = [NSMutableArray new];
    }
    return _histories;
}

@end
