//
//  IDLBaseMessage.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLBaseMessage.h"

@interface IDLBaseMessage ()

@end

@implementation IDLBaseMessage

- (void)inputContent:(nonnull NSString *)messsage {
    self.content = messsage;
}

- (nonnull NSString *)messageContent {
    return self.content;
}

- (nonnull NSString *)messageFlag {
    return @"";
}

@end
