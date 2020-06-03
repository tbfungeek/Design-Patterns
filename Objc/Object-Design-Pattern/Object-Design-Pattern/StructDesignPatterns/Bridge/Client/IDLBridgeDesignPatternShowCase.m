//
//  IDLBridgeDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/4.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLBridgeDesignPatternShowCase.h"

//protocols
#import "IDLDesignPatternShowCase.h"

//device
#import "IDLRadioDevice.h"
#import "IDLTVDevice.h"

//remote
#import "IDLRemote.h"

@implementation IDLBridgeDesignPatternShowCase

#pragma mark IDLDesignPatternShowCase

- (void)showCase {
    
    IDLRemote *radioRemote = [IDLRemote remoteOfDevice:[IDLRadioDevice new]];
    [radioRemote togglePower];
    [radioRemote channelUp];
    [radioRemote channelUp];
    [radioRemote channelUp];
    [radioRemote channelDown];
    [radioRemote volumUp];
    [radioRemote volumUp];
    [radioRemote volumUp];
    [radioRemote volumDown];
    NSLog(@"%@",radioRemote);
    
    IDLRemote *tvRemote = [IDLRemote remoteOfDevice:[IDLTVDevice new]];
    
    [tvRemote togglePower];
    [tvRemote channelUp];
    [tvRemote channelUp];
    [tvRemote channelDown];
    [tvRemote volumUp];
    [tvRemote volumUp];
    [tvRemote volumDown];
    NSLog(@"%@",tvRemote);
    
}

@end
