//
//  IDLWindowStyleUIFactory.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import "IDLWindowStyleUIFactory.h"

#import "IDLWinStyleCheckBox.h"
#import "IDLWinStyleButton.h"
#import "IDLWinStyleImageView.h"

@implementation IDLWindowStyleUIFactory

- (id<IDLButtonProtocol>)createButton {
    return [IDLWinStyleButton new];
}

- (id<IDLCheckBoxProtocol>)createCheckBox {
    return [IDLWinStyleCheckBox new];
}

- (id<IDLImageViewProtocol>)createImage {
    return [IDLWinStyleImageView new];
}

@end
