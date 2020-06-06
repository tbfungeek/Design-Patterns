//
//  IDLRequest.m
//  Object-Design-Pattern
//
//  Created by  tbfungeek on 2020/6/6.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLRequest.h"

@interface IDLRequest ()

@property(nonatomic, assign, readwrite) NSInteger requestCode;

@end

@implementation IDLRequest

#pragma mark Initializer

+ (instancetype)requstWithCode:(NSInteger)requestCode {
    IDLRequest *requst = [IDLRequest new];
    requst.requestCode = requestCode;
    return requst;
}

- (NSInteger)requestCode {
    return _requestCode;
}

@end
