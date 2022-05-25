//
//  IDLRootCompany.m
//  DesignPattern
//
//  Created by linxiaohai on 2019/3/4.
//  Copyright © 2019 linxiaohai. All rights reserved.
//

#import "IDLConcreteCompany.h"

@interface IDLConcreteCompany ()

@property (nonatomic, strong) NSString *name;

@end

@implementation IDLConcreteCompany

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

- (void)addChildCompany:(id<IDLBaseCompanyProtocol>)company {
    
}

- (void)removeChildCompany:(id<IDLBaseCompanyProtocol>)company {
    
}

- (void)display {
    NSLog(@"机构名称:%@",self.name);
}

@end
