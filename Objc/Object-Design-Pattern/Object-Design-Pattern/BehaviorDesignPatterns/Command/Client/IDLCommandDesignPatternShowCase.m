//
//  IDLCommandDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/10.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLCommandDesignPatternShowCase.h"

//invoker
#import "IDLCommandInvoker.h"
//receiver
#import "IDLReceiver.h"
//command
#import "IDLCommand.h"

@implementation IDLCommandDesignPatternShowCase

#pragma mark - IDLDesignPatternShowCase

- (void)showCase {
    IDLCommandInvoker *invoker = [IDLCommandInvoker new];
    
    IDLReceiver *receiver = [IDLReceiver new];
    
    IDLCommand *command1 = [IDLCommand commandWithReceiver:receiver
                                                       params:@[@"Parameters1",@"Parameters2",@"Parameters3"]];
    
    IDLCommand *command2 = [IDLCommand commandWithReceiver:receiver
                                                      params:@[@"Param1",@"Param2",@"Param3"]];
    
    IDLCommand *command3 = [IDLCommand commandWithReceiver:receiver
                                                       params:@[@"P1",@"P2",@"P3"]];
    
    [invoker addCommand:command1];
    [invoker addCommand:command2];
    [invoker addCommand:command3];
    
    [invoker excute];
}

@end
