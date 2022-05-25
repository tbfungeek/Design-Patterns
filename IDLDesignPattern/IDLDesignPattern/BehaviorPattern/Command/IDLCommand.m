//
//  IDLCommand.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLCommand.h"

@interface IDLCommand ()

@property(nonatomic, strong, readwrite) IDLReceiver *receiver;
@property(nonatomic, assign, readwrite) NSInteger   value1;
@property(nonatomic, assign, readwrite) NSInteger   value2;

@end

@implementation IDLCommand

+ (instancetype)commandWithValue1:(NSInteger)value1 value2:(NSInteger)value2 {
    IDLCommand *command = [IDLCommand new];
    command.receiver = [IDLReceiver new];
    command.value1 = value1;
    command.value2 = value2;
    return command;
}

- (NSInteger)execute {
    return [self.receiver addActionWithValue1:self.value1 value2:self.value2];
}

@end
