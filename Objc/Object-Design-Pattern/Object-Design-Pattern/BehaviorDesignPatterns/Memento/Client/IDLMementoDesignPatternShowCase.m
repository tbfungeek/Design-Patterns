//
//  IDLMementoDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLMementoDesignPatternShowCase.h"

//memento
#import "IDLMemento.h"

//originator
#import "IDLOriginator.h"

//caretaker
#import "IDLCareTaker.h"

@implementation IDLMementoDesignPatternShowCase

#pragma mark - IDLDesignPatternShowCase

- (void)showCase {
    
    IDLOriginator *originator = [[IDLOriginator alloc] initWithState:@"Init State"];
    IDLCareTaker *careTaker = [[IDLCareTaker alloc] initWithOriginator:originator];
    NSLog(@"===> %@",[originator showState]);
    [careTaker backUp];
    [originator changeState];
    NSLog(@"===> %@",[originator showState]);
    [originator changeState];
    NSLog(@"===> %@",[originator showState]);
    [careTaker undo];
    NSLog(@"===> %@",[originator showState]);
    
    
    
}

@end
