//
//  ViewController.m
//  Object-Design-Pattern
//
//  Created by linxiaohai on 2020/5/30.
//  Copyright © 2020 linxiaohai. All rights reserved.
//

#import "ViewController.h"

//Show Cases

//Factory Design Pattern
#import "IDLFactoryDesignPatternShowCase.h"

//Abstract Factories Design Pattern
#import "IDLAbstractFactoryDesignPatternShowCase.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    IDLFactoryDesignPatternShowCase *factoryDesignPatternShowCase = [IDLFactoryDesignPatternShowCase new];
    [factoryDesignPatternShowCase showCase];
    
    IDLAbstractFactoryDesignPatternShowCase *absFactoryDesignPatternShowCase = [IDLAbstractFactoryDesignPatternShowCase new];
    [absFactoryDesignPatternShowCase showCase];
    
}


@end
