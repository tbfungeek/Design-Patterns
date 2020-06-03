//
//  IDLFileDataSource.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/6/3.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "IDLFileDataSource.h"

@interface IDLFileDataSource ()

@property(nonatomic, strong, readwrite) NSString *fileName;

@end

@implementation IDLFileDataSource

#pragma mark - Initializer

+ (instancetype)fileDataSourceWithFileName:(NSString *)fileName {
    IDLFileDataSource *dataSource = [IDLFileDataSource new];
    dataSource.fileName = fileName;
    return dataSource;
}

#pragma mark - IDLDataSource

- (nonnull NSString *)readData {
    return [NSString stringWithFormat:@"data from file %@",self.fileName];
}

- (void)writeData:(nonnull NSString *)data {
    NSLog(@"write data to file %@",self.fileName);
}

@end
