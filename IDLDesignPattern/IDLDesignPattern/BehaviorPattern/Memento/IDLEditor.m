//
//  IDLEditor.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLEditor.h"

@interface IDLSnapshot()
@property(nonatomic, strong, readwrite) IDLEditor *editor;
@property(nonatomic, copy, readwrite) NSString *text;
@property(nonatomic, assign, readwrite) CGFloat posX;
@property(nonatomic, assign, readwrite) CGFloat posY;

@end

@implementation IDLSnapshot

+ (instancetype)snapShotWithEditor:(IDLEditor *)editor {
    IDLSnapshot *snapShot = [IDLSnapshot new];
    snapShot.editor = editor;
    snapShot.text = editor.text;
    snapShot.posX = editor.posX;
    snapShot.posY = editor.posY;
    return snapShot;
}

- (void)restore {
    self.editor.text = self.text;
    self.editor.posX = self.posX;
    self.editor.posY = self.posY;
}

@end


@interface IDLEditor ()


@end

@implementation IDLEditor

- (IDLSnapshot *)createSnapShot {
    return [IDLSnapshot snapShotWithEditor:self];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"text = %@ posX = %f posY=%f", self.text,self.posX,self.posY];
}


@end
