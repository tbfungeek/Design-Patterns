//
//  IDLResponsibilityDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLResponsibilityDesignPatternShowCase.h"

//request
#import "IDLRequest.h"
//handlers
#import "IDLHandler1.h"
#import "IDLHandler2.h"
#import "IDLHandler3.h"
#import "IDLHandler4.h"
#import "IDLHandler5.h"
#import "IDLDefaultHandler.h"


@implementation IDLResponsibilityDesignPatternShowCase

- (void)showCase {
    
    IDLRequest *request404 = [IDLRequest requstWithCode:404];
    
    IDLRequest *request500 = [IDLRequest requstWithCode:500];
    
    IDLHandler1* handler1 = [[IDLHandler1 alloc] initWithHandleCode:100];
    IDLHandler2* handler2 = [[IDLHandler2 alloc] initWithHandleCode:200];
    IDLHandler3* handler3 = [[IDLHandler3 alloc] initWithHandleCode:300];
    IDLHandler4* handler4 = [[IDLHandler4 alloc] initWithHandleCode:404];
    IDLHandler5* handler5 = [[IDLHandler5 alloc] initWithHandleCode:101];
    IDLDefaultHandler* defaultHandler = [[IDLDefaultHandler alloc] initWithHandleCode:0];
    
    [handler1 setNextHandler:handler2];
    [handler2 setNextHandler:handler3];
    [handler3 setNextHandler:handler4];
    [handler4 setNextHandler:handler5];
    [handler5 setNextHandler:defaultHandler];
    
    [handler1 handleRequest:request404];
    [handler1 handleRequest:request500];
    
}

@end
