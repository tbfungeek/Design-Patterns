//
//  IDLEditor.h
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class IDLEditor;

@interface IDLSnapshot : NSObject

+ (instancetype)snapShotWithEditor:(IDLEditor *)editor;

- (void)restore;

@end


@interface IDLEditor : NSObject

@property(nonatomic, strong, readwrite) NSString *text;
@property(nonatomic, assign, readwrite) CGFloat posX;
@property(nonatomic, assign, readwrite) CGFloat posY;

- (IDLSnapshot *)createSnapShot;

@end

NS_ASSUME_NONNULL_END
