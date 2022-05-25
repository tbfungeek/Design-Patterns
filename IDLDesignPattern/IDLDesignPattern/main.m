//
//  main.m
//  IDLDesignPattern
//
//  Created by 林晓海 on 2022/5/24.
//

#import <Foundation/Foundation.h>

#import "IDLAppleFactory.h"
#import "IDLHPPCFactory.h"

#import "IDLMacStyleUIFactory.h"
#import "IDLWindowStyleUIFactory.h"

#import "IDLBlueCarBuilder.h"
#import "IDLRedCarBuilder.h"
#import "IDLCarBuidDirector.h"

#import "IDLCircle.h"
#import "IDLRectangle.h"

#import "IDLAdapter.h"

#import "IDLFacade.h"

#import "IDLProxy.h"
#import "IDLService.h"

#import "IDLDinosaur.h"
#import "IDLSavage.h"
#import "IDLMonster.h"

#import "IDLRootCompany.h"
#import "IDLHRDepartment.h"
#import "IDLFinanceDepartment.h"

#import "IDLUrgentMessage.h"
#import "IDLNormalMessage.h"
#import "IDLMobilePhone.h"
#import "IDLEmail.h"

#import "IDLWrapper.h"


#import "IDLM1LevelManager.h"
#import "IDLM2LevelManager.h"
#import "IDLM3LevelManager.h"
#import "IDLM4LevelManager.h"

#import "IDLModuleAComponent.h"
#import "IDLModuleBComponent.h"

#import "IDLSubscriber.h"
#import "IDLObserver.h"

#import "IDLVisitor.h"
#import "IDLElementA.h"
#import "IDLElementB.h"

#import "IDLContext.h"

#import "IDLSaleStrategyA.h"
#import "IDLSaleStrategyB.h"
#import "IDLSaleStategyContext.h"

#import "IDLPaperA.h"
#import "IDLPaperB.h"

#import "IDLMemoToManager.h"

#import "IDLCommand.h"
#import "IDLInvoker.h"
#import "IDLReceiver.h"

#import "IDLCollectionWrapper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id<IDLFactoryProtocol> factory1 = [IDLAppleFactory new];
        [factory1 showProduct];
        
        id<IDLFactoryProtocol> factory2 = [IDLHPPCFactory new];
        [factory2 showProduct];
        
        id<IDLAbsFactoryProtocol> macStyleUIFactory = [IDLMacStyleUIFactory new];
        [macStyleUIFactory makeUILibray];
        id<IDLAbsFactoryProtocol> winStyleUIFactory = [IDLWindowStyleUIFactory new];
        [winStyleUIFactory makeUILibray];
        
        
        /**
            Builder 管生产  Director 管理流程
         */
        id<IDLBuilderProtocol> blueCarBuilder = [IDLBlueCarBuilder new];
        id<IDLBuilderProtocol> redCardBuilder = [IDLRedCarBuilder new];
        
        IDLCarBuidDirector *carBuildDirector = [IDLCarBuidDirector carBuildDirectorWithBuilder:blueCarBuilder];
        NSLog(@"====> %@",[carBuildDirector getResult]);
        
        [carBuildDirector changeBuilder:redCardBuilder];
        NSLog(@"====> %@",[carBuildDirector getResult]);
        
        
        
        IDLCircle *circle = [IDLCircle new];
        circle.x = 100;
        circle.y = 100;
        circle.radius  = 200;
        
        IDLRectangle *rectTangle = [IDLRectangle new];
        rectTangle.x = 200;
        rectTangle.y = 400;
        rectTangle.width = 50;
        rectTangle.height = 50;
        
        NSLog(@"===> %@",circle);
        NSLog(@"===> %@",rectTangle);
        
        IDLCircle *circleCopy = [circle clone];
        IDLRectangle *rectTangleCopy = [rectTangle clone];
        
        NSLog(@"===> %@",circleCopy);
        NSLog(@"===> %@",rectTangleCopy);
        
        NSLog(@"=======>");
        
        //被代理类
        IDLAdaptee *adaptee = [IDLAdaptee new];
        //装到代理类中，代理类中用它来转换为新的实现
        IDLAdapter *adapter = [IDLAdapter adapterWithAdaptee:adaptee];
        //调用目标方法
        [adapter methodAfterAdapter];
        
        
        IDLFacade *facade = [IDLFacade new];
        [facade drawCircleAndLine];
        [facade drawRoundRect];
        [facade drawAll];
        
        id<IDLServiceProtocol> service = [IDLService new];
        IDLProxy *proxy = [IDLProxy proxyWithRealService:service];
        [proxy operation];
        
        
        IDLSavage *weakRedSave = [IDLSavage savegeWithType:IDLSavageTypeWeak name:@"Weak red Save" skinColor:@"redColor"];
        IDLSavage *weakRedSave1 = [IDLSavage savegeWithType:IDLSavageTypeWeak name:@"Weak red Save1" skinColor:@"redColor"];
        IDLSavage *weakRedSave2 = [IDLSavage savegeWithType:IDLSavageTypeWeak name:@"Weak red Save2" skinColor:@"redColor"];
        //上面的SaveModel是共享的
        
        IDLSavage *strongBlueSave = [IDLSavage savegeWithType:IDLSavageTypeStrong name:@"Strong blue Save" skinColor:@"blueColor"];
        
        
        IDLDinosaur *fastRaptor = [IDLDinosaur dinosaurWithType:IDLDinosaurTypeRaptor name:@"haha" speed:1000];
        IDLDinosaur *funnyTriceratops = [IDLDinosaur dinosaurWithType:IDLDinosaurTypeTriceratops name:@"mammmmm" speed:2000];
        IDLDinosaur *pterosaur = [IDLDinosaur dinosaurWithType:IDLDinosaurTypePterosaur name:@"eeeee" speed:100];
        
        IDLMonster *monstor1 = [IDLMonster monstorWithType:IDLMonsterTypeWaterMonster name:@"kaka" attract:10];
        IDLMonster *monstor2 = [IDLMonster monstorWithType:IDLMonsterTypeAlienMonster name:@"lallal" attract:100];
        
        NSLog(@"");
        
        //顶部
        IDLRootCompany *rootCompany = [[IDLRootCompany alloc] initWithName:@"集团总公司"];
        
        //集团总公司下一层
        IDLRootCompany *shanghaiCompany = [[IDLRootCompany alloc] initWithName:@"上海分公司"];
        IDLRootCompany *guangdongCompany = [[IDLRootCompany alloc] initWithName:@"广东分公司"];
        
        //每个公司的部门
        IDLHRDepartment *shanghaiHRDepartment = [[IDLHRDepartment alloc] initWithName:@"上海HR部门"];
        IDLHRDepartment *guangdongHRDepartment = [[IDLHRDepartment alloc] initWithName:@"广东HR部门"];
        
        IDLFinanceDepartment *guangdongFinanceDepartment = [[IDLFinanceDepartment alloc] initWithName:@"广东财务部门"];
        
        
        [rootCompany addChildCompany:shanghaiCompany];
        [rootCompany addChildCompany:guangdongCompany];
        
        [shanghaiCompany addChildCompany:shanghaiHRDepartment];
        [guangdongCompany addChildCompany:guangdongHRDepartment];
        [guangdongCompany addChildCompany:guangdongFinanceDepartment];
        
        [rootCompany display];
        
        IDLNormalMessage *normalMessage = [[IDLNormalMessage alloc] init];
        [normalMessage inputContent:@"这是一条普通消息"];
        
        IDLUrgentMessage *urgentMessage = [[IDLUrgentMessage alloc] init];
        [urgentMessage inputContent:@"出大事了。。。。。"];
        
        
        IDLEmail *email = [[IDLEmail alloc] init];
        [email prepareMessage:normalMessage];
        [email sendMessage];
        
        [email prepareMessage:urgentMessage];
        [email sendMessage];
        
        IDLMobilePhone *mobilePhone = [[IDLMobilePhone alloc] init];
        [mobilePhone prepareMessage:normalMessage];
        [mobilePhone sendMessage];
        
        [mobilePhone prepareMessage:urgentMessage];
        [mobilePhone sendMessage];
        
        
        IDLWrapper *wrapper = [IDLWrapper wrapperWithWrapee:[IDLWrapee new]];
        [wrapper origMethod];
        [wrapper extraMethod];
        
        IDLM4LevelManager *M4 = [[IDLM4LevelManager alloc] initWithSuccessor:nil];
        IDLM3LevelManager *M3 = [[IDLM3LevelManager alloc] initWithSuccessor:M4];
        IDLM2LevelManager *M2 = [[IDLM2LevelManager alloc] initWithSuccessor:M3];
        IDLM1LevelManager *M1 = [[IDLM1LevelManager alloc] initWithSuccessor:M2];
        
        IDLRequest *leaveRequest = [IDLRequest leaveRequst];
        IDLRequest *quitRequest = [IDLRequest quitRequst];
        [M1 handleRequest:leaveRequest];
        [M1 handleRequest:quitRequest];
        
        IDLModuleAComponent *componentA = [IDLModuleAComponent new];
        IDLModuleBComponent *componentB = [IDLModuleBComponent new];
        [componentA sendMessageToCallfunctionB];
        [componentB sendMessageToCallfunctionA];
        
        
        IDLSubscriber *subject = [IDLSubscriber new];
        IDLObserver *observer1 = [IDLObserver new];
        IDLObserver *observer2 = [IDLObserver new];
        IDLObserver *observer3 = [IDLObserver new];
        IDLObserver *observer4 = [IDLObserver new];
        [subject addObserver:observer1];
        [subject addObserver:observer2];
        [subject addObserver:observer3];
        [subject addObserver:observer4];
        
        [subject notify];
        
        IDLElementA *elementA = [IDLElementA new];
        IDLElementB *elementB = [IDLElementB new];
        
        IDLVisitor *elementVistor = [IDLVisitor new];
        [elementA accept:elementVistor];
        [elementB accept:elementVistor];
        
        IDLContext *context = [IDLContext new];
        context.time = 8;
        [context greeting];
        
        context.time = 13;
        [context greeting];
        
        context.time = 22;
        [context greeting];
        
        
        
        IDLSaleStategyContext *saleContext = [IDLSaleStategyContext new];
        IDLSaleStrategyA *saleStrategyA = [IDLSaleStrategyA saleStrategyWithOffPrice:110];
        [saleContext setStrategy:saleStrategyA];
        CGFloat finalPrice = [saleContext finalPrice:500];
        NSLog(@"finalPrice = %f",finalPrice);
        
        IDLSaleStrategyB *saleStrategyB = [IDLSaleStrategyB saleStrategyWithOffPercent:0.4];
        [saleContext setStrategy:saleStrategyB];
        finalPrice = [saleContext finalPrice:500];
        NSLog(@"finalPrice = %f",finalPrice);
        
        
        IDLAbsPaper *paperA = [IDLPaperA new];
        [paperA showAnswer];
        IDLAbsPaper *paperB = [IDLPaperB new];
        [paperB showAnswer];
        
        
        IDLEditor *editor = [IDLEditor new];
        IDLMemoToManager *manager = [IDLMemoToManager new];
        
        editor.text = @"text1";
        editor.posX = 2;
        editor.posY = 10;
        
        [manager storeSnapShot:[editor createSnapShot]];
        
        editor.text = @"text4";
        editor.posX = 6;
        editor.posY = 17;
        [manager storeSnapShot:[editor createSnapShot]];
        
        editor.text = @"text6";
        editor.posX = 69;
        editor.posY = 1;
        [manager storeSnapShot:[editor createSnapShot]];
        
        editor.text = @"text8";
        editor.posX = 19;
        editor.posY = 100;
        
        [manager undo];
        NSLog(@"==================>%@",editor);
        [manager undo];
        NSLog(@"==================>%@",editor);
        [manager undo];
        NSLog(@"==================>%@",editor);
        
        IDLInvoker *invoker = [IDLInvoker invokerWithCommand:[IDLCommand commandWithValue1:23 value2:22]];
        NSInteger result = [invoker excuteCommand];
        NSLog(@"===========>");
        
        
        IDLCollectionWrapper *collectionWrapper = [IDLCollectionWrapper new];
        [collectionWrapper addItem:@"Hello World"];
        [collectionWrapper addItem:@"Objective C"];
        [collectionWrapper addItem:@"Sketch"];
        
        id<IDLIteratorProtocol> iterator = [collectionWrapper createIterator];
        while([iterator hasNext]) {
            NSLog(@"====> %@",iterator.element);
            [iterator next];
        }
    }
    return 0;
}
