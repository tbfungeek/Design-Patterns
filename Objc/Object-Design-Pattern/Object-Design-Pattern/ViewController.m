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

//Builder Design Pattern
#import "IDLBuilderDesignPatternShowCase.h"

//Prototype Design Pattern
#import "IDLPrototypeDesignPatternShowCase.h"

//Singleton Design Pattern
#import "IDLSingletonDesignPatternShowCase.h"

//Adapter Design Pattern
#import "IDLAdapterDesignPatternShowCase.h"

//Facade Design Pattern
#import "IDLFacadeDesignPatternShowCase.h"

//Proxy Design Pattern
#import "IDLProxyDesignPatternShowCase.h"

//Wrapper Design Pattern
#import "IDLWrapperDesignPatternShowCase.h"

//Bridge Design Pattern
#import "IDLBridgeDesignPatternShowCase.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    IDLFactoryDesignPatternShowCase *factoryDesignPatternShowCase = [IDLFactoryDesignPatternShowCase new];
    [factoryDesignPatternShowCase showCase];
    
    IDLAbstractFactoryDesignPatternShowCase *absFactoryDesignPatternShowCase = [IDLAbstractFactoryDesignPatternShowCase new];
    [absFactoryDesignPatternShowCase showCase];
    
    IDLBuilderDesignPatternShowCase *builderDesignPatternShowCase = [IDLBuilderDesignPatternShowCase new];
    [builderDesignPatternShowCase showCase];
    
    IDLPrototypeDesignPatternShowCase *prototypeDesignPatternShowCase = [IDLPrototypeDesignPatternShowCase new];
    [prototypeDesignPatternShowCase showCase];
    
    IDLSingletonDesignPatternShowCase *singletonDesignPatternShowCase = [IDLSingletonDesignPatternShowCase new];
    [singletonDesignPatternShowCase showCase];
    
    IDLAdapterDesignPatternShowCase *adapterDesignPatternShowCase = [IDLAdapterDesignPatternShowCase new];
    [adapterDesignPatternShowCase showCase];
    
    IDLFacadeDesignPatternShowCase *facadeDesignPatternShowCase = [IDLFacadeDesignPatternShowCase new];
    [facadeDesignPatternShowCase showCase];
    
    IDLProxyDesignPatternShowCase *proxyDesignPatternShowCase = [IDLProxyDesignPatternShowCase new];
    [proxyDesignPatternShowCase showCase];
    
    IDLWrapperDesignPatternShowCase *wrapperDesignPatternShowCase = [IDLWrapperDesignPatternShowCase new];
    [wrapperDesignPatternShowCase showCase];
    
    IDLBridgeDesignPatternShowCase *bridgeDesignPatternShowCase = [IDLBridgeDesignPatternShowCase new];
    [bridgeDesignPatternShowCase showCase];
}


@end
