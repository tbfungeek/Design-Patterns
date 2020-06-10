//
//  IDLIteratorDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/11.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLIteratorDesignPatternShowCase.h"

//collections
#import "IDLArrayCollectionWrapper.h"

//iterator
#import "IDLIterator.h"

@implementation IDLIteratorDesignPatternShowCase

#pragma mark IDLDesignPatternShowCase

- (void)showCase {
    
    IDLArrayCollectionWrapper *collectionWrapper = [[IDLArrayCollectionWrapper alloc] initWithArray:@[@"A",@"B",@"C",@"D",@"E",@"F"]];
    id<IDLIteratorProtocol> iterator = collectionWrapper.iterator;
    while ([iterator hasNext]) {
        NSLog(@"===> %@",[iterator next]);
    }
    
}

@end
