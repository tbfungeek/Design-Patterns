//
//  IDLNightState.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLNightState.h"

#import "IDLContext.h"

#import "IDLMorningState.h"

@interface IDLNightState ()

@property(nonatomic, weak) IDLContext  *context;

@end

@implementation IDLNightState

- (void)updateContext:(IDLContext *)context {
    self.context = context;
    
    if (self.context.time >= 24) {
        IDLMorningState *nextState = [IDLMorningState new];
        [nextState updateContext:context];
        [self.context changeState:nextState];
    }
}

- (void)greeting {
    NSLog(@"晚上好! 现在是北京时间 %ld 点整",(long)self.context.time);
}

@end
