//
//  IDLMacStyleUIFactory.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import "IDLMacStyleUIFactory.h"

#import "IDLMacStyleImageView.h"
#import "IDLMacStyleCheckBox.h"
#import "IDLMacStyleButton.h"

@implementation IDLMacStyleUIFactory

- (id<IDLButtonProtocol>)createButton {
    return [IDLMacStyleButton new];
}

- (id<IDLCheckBoxProtocol>)createCheckBox {
    return [IDLMacStyleCheckBox new];
}

- (id<IDLImageViewProtocol>)createImage {
    return [IDLMacStyleImageView new];
}

@end
