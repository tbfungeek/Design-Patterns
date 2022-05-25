//
//  IDLMemoToManager.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

#import "IDLEditor.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDLMemoToManager : NSObject

- (void)storeSnapShot:(IDLSnapshot *)snapShot;

- (void)undo;

@end

NS_ASSUME_NONNULL_END
