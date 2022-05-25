//
//  IDLBaseMessgeCarrier.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLBaseMessgeCarrier.h"

#import "IDLMessageProtocol.h"

@interface IDLBaseMessgeCarrier ()

@property(nonatomic, strong, readwrite) id<IDLMessageProtocol> message;

@end

@implementation IDLBaseMessgeCarrier

- (void)prepareMessage:(id<IDLMessageProtocol>)message {
    self.message = message;
}

- (NSString *)carrier {
    return @"";
}

- (NSString *)accout {
    return @"";
}

- (void)sendMessage {
    NSLog(@"[Message Will Send]:");
    NSLog(@"%@ : %@",[self.message messageFlag],[self.message messageContent]);
    NSLog(@"send By %@ Use %@",[self accout],[self carrier]);
}

@end
