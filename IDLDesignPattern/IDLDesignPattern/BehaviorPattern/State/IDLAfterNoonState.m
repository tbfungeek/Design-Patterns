//
//  IDLAfterNoonState.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLAfterNoonState.h"

#import "IDLContext.h"

#import "IDLNightState.h"

@interface IDLAfterNoonState ()

@property(nonatomic, weak) IDLContext  *context;

@end

@implementation IDLAfterNoonState

- (void)updateContext:(IDLContext *)context {
    self.context = context;
    
    if (self.context.time >= 18) {
        IDLNightState *nextState = [IDLNightState new];
        [nextState updateContext:context];
        [self.context changeState:nextState];
    }
}

- (void)greeting {
    NSLog(@"中午好! 现在是北京时间 %ld 点整",(long)self.context.time);
}

@end
