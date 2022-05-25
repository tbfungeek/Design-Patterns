//
//  IDLElementA.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/25.
//

#import "IDLElementA.h"

#import "IDLVisitorProtocol.h"

@implementation IDLElementA

- (void)accept:(id<IDLVisitorProtocol>)visitor {
    //###### 接受后就会在接受方法里面用访问器访问自己 ######
    //这里相当于开了个口将自己暴露出去
    [visitor visit:self];
}

- (void)elementCommonMethod {
    NSLog(@"This is A CommonMethod From %@",NSStringFromClass([self class]));
}

- (void)elementASpecialMethod {
    NSLog(@"This is A SpecialMethod From %@",NSStringFromClass([self class]));
}

@end
