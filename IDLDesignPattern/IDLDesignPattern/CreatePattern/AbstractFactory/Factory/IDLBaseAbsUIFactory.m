//
//  IDLBaseAbsUIFactory.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import "IDLBaseAbsUIFactory.h"

@implementation IDLBaseAbsUIFactory

- (id<IDLImageViewProtocol>)createImage {
    return nil;
}

- (id<IDLButtonProtocol>)createButton {
    return nil;
}

- (id<IDLCheckBoxProtocol>)createCheckBox {
    return nil;
}

- (void)makeUILibray {
    id <IDLButtonProtocol> button = [self createButton];
    [button setUp];
    [button onClick];
    
    id <IDLCheckBoxProtocol> checkbox = [self createCheckBox];
    [checkbox setUp];
    [checkbox setOn:YES];
    
    id <IDLImageViewProtocol> imageView = [self createImage];
    [imageView setUp];
    [imageView drawImage];
}


@end
