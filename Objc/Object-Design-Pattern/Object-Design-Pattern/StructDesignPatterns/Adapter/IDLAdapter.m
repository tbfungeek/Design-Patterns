//
//  IDLAdapter.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/2.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLAdapter.h"

//adaptee
#import "IDLAdaptee.h"

@interface IDLAdapter ()

@property(nonatomic, strong, readwrite) IDLAdaptee *adaptee;

@end

@implementation IDLAdapter

#pragma mark - Initializer

+ (instancetype)adapterWithAdaptee:(IDLAdaptee *)adaptee {
    IDLAdapter *adapter = [IDLAdapter new];
    adapter.adaptee = adaptee;
    return adapter;
}

#pragma mark - IDLTarget

- (NSString *)dataWithJsonFormat {
    NSLog(@"This is Data before format %@",[self.adaptee dataWithXMLFormat]);
    NSLog(@"Formating .......");
    return @"{data : This is json format data}";
}

@end
