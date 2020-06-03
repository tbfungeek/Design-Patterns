//
//  IDLWrapperDesignPatternShowCase.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/3.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLWrapperDesignPatternShowCase.h"

//wrapper
#import "IDLCompressionDataWrapper.h"
#import "IDLEncrptionDataWrapper.h"

//wrapee
#import "IDLFileDataSource.h"

@implementation IDLWrapperDesignPatternShowCase

#pragma mark - IDLDesignPatternShowCase

- (void)showCase {
    
    IDLFileDataSource *fileDataSource = [IDLFileDataSource fileDataSourceWithFileName:@"text.txt"];
    
    IDLCompressionDataWrapper *compressDataWrapper = [IDLCompressionDataWrapper dataWrapper:fileDataSource];
    [compressDataWrapper writeData:@"写入测试数据"];
    NSLog(@"%@",[compressDataWrapper readData]);
    
    IDLEncrptionDataWrapper *encriptionDataWrapper = [IDLEncrptionDataWrapper dataWrapper:fileDataSource];
    
    [encriptionDataWrapper writeData:@"写入测试数据"];
    NSLog(@"%@",[encriptionDataWrapper readData]);
    
}

@end
