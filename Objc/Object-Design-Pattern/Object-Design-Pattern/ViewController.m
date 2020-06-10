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

//Composite Design Pattern
#import "IDLCompositeDesignPatternShowCase.h"

//FlyWeight Design Pattern
#import "IDLFlyWeightDesignPatternShowCase.h"

//Responsibility Chain Design Pattern
#import "IDLResponsibilityDesignPatternShowCase.h"

//Observer Design Pattern
#import "IDLObserverDesignPatternShowCase.h"

//Templete Design Pattern
#import "IDLTempleteDesignPatternShowCase.h"

//Visitor Design Pattern
#import "IDLVisitorIDLDesignPatternShowCase.h"

//State Design Pattern
#import "IDLStateDesignPatternShowCase.h"

//Stategry Design Pattern
#import "IDLStrategyDesignPatternShowCase.h"

//Mediator Design Pattern
#import "IDLMediatorDesignPatternShowCase.h"

//Command Design Pattern
#import "IDLCommandDesignPatternShowCase.h"

//Memento Design Pattern
#import "IDLMementoDesignPatternShowCase.h"

//Iterator Design Pattern
#import "IDLIteratorDesignPatternShowCase.h"

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
    
    IDLCompositeDesignPatternShowCase *compositeDesignPatterShowCase = [IDLCompositeDesignPatternShowCase new];
    [compositeDesignPatterShowCase showCase];
    

    IDLFlyWeightDesignPatternShowCase *flyWeightDesignPatternShowCase = [IDLFlyWeightDesignPatternShowCase new];
    [flyWeightDesignPatternShowCase showCase];
    
    IDLResponsibilityDesignPatternShowCase *responsibilityDesignPatternShowCase = [IDLResponsibilityDesignPatternShowCase new];
    [responsibilityDesignPatternShowCase showCase];
    
    IDLObserverDesignPatternShowCase *observerDesignPatternShowCase = [IDLObserverDesignPatternShowCase new];
    [observerDesignPatternShowCase showCase];
    
    IDLTempleteDesignPatternShowCase *templeteDesignPatternShowCase = [IDLTempleteDesignPatternShowCase new];
    [templeteDesignPatternShowCase showCase];
    
    IDLVisitorIDLDesignPatternShowCase *visitorDesignPatternShowCase = [IDLVisitorIDLDesignPatternShowCase new];
    [visitorDesignPatternShowCase showCase];
    
    IDLStateDesignPatternShowCase *stateDesignPatternShowCase = [IDLStateDesignPatternShowCase new];
    [stateDesignPatternShowCase showCase];
    
    IDLStrategyDesignPatternShowCase *stategryDesignPatternShowCase = [IDLStrategyDesignPatternShowCase new];
    
    [stategryDesignPatternShowCase showCase];
    
    IDLMediatorDesignPatternShowCase *mediatorDesignPatternShowCase = [IDLMediatorDesignPatternShowCase new];
    [mediatorDesignPatternShowCase showCase];
    
    IDLCommandDesignPatternShowCase *commandDesignPatternShowCase = [IDLCommandDesignPatternShowCase new];
    [commandDesignPatternShowCase showCase];
    
    IDLMementoDesignPatternShowCase *mementoDesignPatternShowCase = [IDLMementoDesignPatternShowCase new];
    [mementoDesignPatternShowCase showCase];
    
    IDLIteratorDesignPatternShowCase *iteratorDesignPatternShowCase = [IDLIteratorDesignPatternShowCase new];
    [iteratorDesignPatternShowCase showCase];
    
    NSLog(@"This is the End of Design Pattern but may be The beginning, But Please firmly believe that you will reach SomeWhere locate in your heart and dreams! Thank you");
    
}


@end
