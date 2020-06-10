//
//  IDLMediatorDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLMediatorDesignPatternShowCase.h"

//mediator
#import "IDLMediator.h"

//component
#import "IDLComponentA.h"
#import "IDLComponentB.h"

@implementation IDLMediatorDesignPatternShowCase

#pragma mark - IDLDesignPatternShowCase

- (void)showCase {
    
    IDLMediator *mediator = [[IDLMediator alloc] init];
    
    IDLComponentA *componentA = [[IDLComponentA alloc] initWithComponentName:@"IDLComponentA"];
    IDLComponentB *componentB = [[IDLComponentB alloc] initWithComponentName:@"IDLComponentB"];
    
    [mediator registeComponent:componentA];
    [mediator registeComponent:componentB];
    
    [componentA sendMessage:[[IDLMessage alloc] initWithMessage:@"This is Message From IDLComponentA"
                                                            sender:NSStringFromClass([IDLComponentA class])
                                                          receiver:NSStringFromClass([IDLComponentB class])]];
    
    [componentB sendMessage:[[IDLMessage alloc] initWithMessage:@"This is Message From IDLComponentB"
                                                         sender:NSStringFromClass([IDLComponentB class])
                                                       receiver:NSStringFromClass([IDLComponentA class])]];
    
}

@end
