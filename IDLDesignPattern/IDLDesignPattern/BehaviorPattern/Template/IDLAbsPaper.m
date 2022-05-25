//
//  IDLAbsPaper.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLAbsPaper.h"

@implementation IDLAbsPaper

- (void)questionOne {
    NSLog(@"[问题 1] 你喜欢我吗 ？ A: 喜欢 B: 有点喜欢 C: 不喜欢 D:其他");
    NSLog(@"我的答案 : %@",[self answerForQuestionOne]);
}

- (void)questionTwo {
    NSLog(@"[问题 2] 你不喜欢我吗 ？ A: 不喜欢 B: 有点不喜欢 C: 喜欢 D:其他");
    NSLog(@"我的答案 : %@",[self answerForQuestionTwo]);
}

- (NSString *)answerForQuestionOne {
    return @"";
}

- (NSString *)answerForQuestionTwo {
    return @"";
}

- (void)showAnswer {
    [self questionOne];
    [self questionTwo];
}

@end
