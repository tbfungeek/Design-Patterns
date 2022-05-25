//
//  IDLRootCompany.m
//  DesignPattern
//
//  Created by linxiaohai on 2019/3/4.
//  Copyright © 2019 linxiaohai. All rights reserved.
//

#import "IDLRootCompany.h"

@interface IDLRootCompany ()

@property (nonatomic, strong) NSMutableArray *childList;

@end

@implementation IDLRootCompany

#pragma mark - IDLConcreteCompany

- (void)addChildCompany:(id<IDLBaseCompanyProtocol>)company {
    [self.childList addObject:company];
}

- (void)removeChildCompany:(id<IDLBaseCompanyProtocol>)company {
    [self.childList removeObject:company];
}

- (void)display {
    [super display];
    for (id<IDLBaseCompanyProtocol> child in self.childList) {
        [child display];
    }
}

#pragma mark - Getters/Setters

- (NSMutableArray *)childList {
    if (!_childList) {
        _childList = [NSMutableArray new];
    }
    return _childList;
}
@end
