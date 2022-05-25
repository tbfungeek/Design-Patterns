//
//  IDLMorningState.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLMorningState.h"

#import "IDLAfterNoonState.h"

#import "IDLContext.h"

@interface IDLMorningState ()

@property(nonatomic, weak) IDLContext  *context;

@end

@implementation IDLMorningState

- (void)updateContext:(IDLContext *)context {
    self.context = context;
    
    if (self.context.time >= 12) {
        IDLAfterNoonState *nextState = [IDLAfterNoonState new];
        [nextState updateContext:context];
        [self.context changeState:nextState];
    }
}

- (void)greeting {
    NSLog(@"早上好! 现在是北京时间 %ld 点整",(long)self.context.time);
}

@end
