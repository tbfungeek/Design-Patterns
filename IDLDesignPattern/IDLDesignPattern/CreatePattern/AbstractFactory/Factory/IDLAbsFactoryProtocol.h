//
//  IDLAbsFactoryProtocol.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import <Foundation/Foundation.h>

#import "IDLButtonProtocol.h"
#import "IDLCheckBoxProtocol.h"
#import "IDLImageViewProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol IDLAbsFactoryProtocol <NSObject>

- (id<IDLButtonProtocol>)createButton;
- (id<IDLCheckBoxProtocol>)createCheckBox;
- (id<IDLImageViewProtocol>)createImage;

- (void)makeUILibray;

@end

NS_ASSUME_NONNULL_END
