/*
 
 ## 目录

 * [创建型模式](Creational)
 * [行为型模式](Behavioral)
 * [结构型模式](Structural)
 
*/

/**
 
 Factory Design Pattern
 
*/

protocol PCRroductProtocal {
    func showProduct()
}

protocol PCFactoryProtocal {
    func createPCProduct() -> PCRroductProtocal;
    func generateProduct()
}

extension PCFactoryProtocal {
    
    func generateProduct() {
        let product = createPCProduct()
        product.showProduct()
    }
}


class HPPCDevice:PCRroductProtocal {
    
    func showProduct() {
        print("Hello I am a HP PC Device")
    }
}

class IBMPCDevice:PCRroductProtocal {
    
    func showProduct() {
        print("Hello I am a IBM PC Device")
    }
}

class ApplePCDevice:PCRroductProtocal {
    
    func showProduct() {
        print("Hello I am a Apple PC Device")
    }
}


class HPFactory:PCFactoryProtocal {
    
    func createPCProduct() -> PCRroductProtocal {
        return HPPCDevice()
    }
}

class IBMFactory:PCFactoryProtocal {
    
    func createPCProduct() -> PCRroductProtocal {
        return IBMPCDevice()
    }
}

class AppleFactory:PCFactoryProtocal {
    
    func createPCProduct() -> PCRroductProtocal {
        return ApplePCDevice()
    }
}

var pcDeviceFactory:PCFactoryProtocal = HPFactory()
pcDeviceFactory.generateProduct()

pcDeviceFactory = IBMFactory()
pcDeviceFactory.generateProduct()

pcDeviceFactory = AppleFactory()
pcDeviceFactory.generateProduct()


///===========================================


/**
 
 Abstract Factory Design Pattern
 
*/

/// Base Protocal
protocol ChairProtocal {
    func packAChair()
}

protocol CoffeeTableProtocal {
    func packACoffeeOnTable()
}

protocol SofaProtocal {
    func packASofa()
}

protocol FurnitureFactoryProtocal {
    func createChair() -> ChairProtocal
    func createCoffeeTable() -> CoffeeTableProtocal
    func createSofa() -> SofaProtocal
    func packASuitFurniture()
}

extension FurnitureFactoryProtocal {
    func packASuitFurniture() {
        let chair = createChair()
        chair.packAChair()
        let coffeeTable = createCoffeeTable()
        coffeeTable.packACoffeeOnTable()
        let sofa = createSofa()
        sofa.packASofa()
    }
}

/// Modern Style
class ModernChair:ChairProtocal {
    
    func packAChair() {
        print("pack A Modern Chair")
    }
    
}

class ModernCoffeeTable:CoffeeTableProtocal {
    
    func packACoffeeOnTable() {
        print("pack a Modern CoffeeTable")
    }
}

class ModernSofa:SofaProtocal {
    
    func packASofa() {
        print("pack A Modern Sofa")
    }
}

class ModernFurnitureFactory:FurnitureFactoryProtocal {
    
    func createChair() -> ChairProtocal {
        return ModernChair()
    }
    
    func createCoffeeTable() -> CoffeeTableProtocal {
        return ModernCoffeeTable()
    }
    
    func createSofa() -> SofaProtocal {
        return ModernSofa()
    }
}


/// Victorian Style
class VictorianChair:ChairProtocal {
    
    func packAChair() {
        print("pack A Victorian Chair")
    }
    
}

class VictorianCoffeeTable:CoffeeTableProtocal {
    
    func packACoffeeOnTable() {
        print("pack a Victorian CoffeeTable")
    }
}

class VictorianSofa:SofaProtocal {
    
    func packASofa() {
        print("pack A Victorian Sofa")
    }
}

class VictorianFurnitureFactory:FurnitureFactoryProtocal {
    
    func createChair() -> ChairProtocal {
        return VictorianChair()
    }
    
    func createCoffeeTable() -> CoffeeTableProtocal {
        return VictorianCoffeeTable()
    }
    
    func createSofa() -> SofaProtocal {
        return VictorianSofa()
    }
    
}

/// Art­Deco Style
class Art­DecoChair:ChairProtocal {
    
    func packAChair() {
        print("pack A Art­Deco Chair")
    }
    
}

class Art­DecoCoffeeTable:CoffeeTableProtocal {
    
    func packACoffeeOnTable() {
        print("pack a Art­Deco CoffeeTable")
    }
}

class Art­DecoSofa:SofaProtocal {
    
    func packASofa() {
        print("pack A Art­Deco Sofa")
    }
}

class Art­DecoFurnitureFactory:FurnitureFactoryProtocal {
    
    func createChair() -> ChairProtocal {
        return Art­DecoChair()
    }
    
    func createCoffeeTable() -> CoffeeTableProtocal {
        return Art­DecoCoffeeTable()
    }
    
    func createSofa() -> SofaProtocal {
        return Art­DecoSofa()
    }
}

//Simulate scene

var furnitureFactory:FurnitureFactoryProtocal = ModernFurnitureFactory()
furnitureFactory.packASuitFurniture()

furnitureFactory = VictorianFurnitureFactory()
furnitureFactory.packASuitFurniture()

furnitureFactory = Art­DecoFurnitureFactory()
furnitureFactory.packASuitFurniture()


/**
 
 Builder Design Pattern
 
*/

struct House {
    var wallNum:Int = 0
    var doorNum:Int = 0
    var windowNum:Int = 0
    var hasRoot:Bool = false
    var hasGarage:Bool = false
    
    func showDetails() {
        
        print("This is a house with \(wallNum) walls, \(doorNum) doors, \(windowNum) window \(hasRoot ? "has a nice root":"without root") \(hasGarage ? "has a nice Garage":"without Garage")")
    }
    
}


protocol HouseBuilder {
    func reset()
    func buildWalls() -> HouseBuilder
    func buildDoors() -> HouseBuilder
    func buildWindows() -> HouseBuilder
    func buildRoot() -> HouseBuilder
    func buildGarage() -> HouseBuilder
    func getResult() -> House
}

class SimpleHouseBuilder: HouseBuilder {
    
    var house:House!
    
    init() {
        self.house = House()
    }
    
    func reset() {
        print("准备材料开始建造简单风格的房子")
    }
    
    func buildWalls() -> HouseBuilder {
        self.house.wallNum = 4
        return self
    }
    
    func buildDoors() -> HouseBuilder {
        self.house.doorNum = 2
        return self
    }
    
    func buildWindows() -> HouseBuilder {
        self.house.windowNum = 8
        return self
    }
    
    func buildRoot() -> HouseBuilder {
        self.house.hasRoot = true
        return self
    }
    
    func buildGarage() -> HouseBuilder {
        self.house.hasGarage = false
        return self
    }
    
    func getResult() -> House {
        return self.house
    }
    
}

class LuxuriousHouseBuilder: HouseBuilder {
    
    var house:House!
    
    init() {
        self.house = House()
    }
    
    func reset() {
        print("准备材料开始建造豪华风格的房子")
    }
    
    func buildWalls() -> HouseBuilder {
        self.house.wallNum = 4
        return self
    }
    
    func buildDoors() -> HouseBuilder {
        self.house.doorNum = 4
        return self
    }
    
    func buildWindows() -> HouseBuilder {
        self.house.windowNum = 8
        return self
    }
    
    func buildRoot() -> HouseBuilder {
        self.house.hasRoot = true
        return self
    }
    
    func buildGarage() -> HouseBuilder {
        self.house.hasGarage = true
        return self
    }
    
    func getResult() -> House {
        return self.house
    }
}

class HouseBuildDirector {
    
    var builder:HouseBuilder?
    
    func buildWithHouseBuilder(builder:HouseBuilder) ->  HouseBuildDirector {
        self.builder = builder
        
        if let houseBuilder = self.builder  {
            houseBuilder.buildWalls()
                        .buildDoors()
                        .buildWindows()
                        .buildRoot()
                        .buildGarage()
        }
        
        return self
    }
    
    func getResult() -> House? {
        
        if let houseBuilder = self.builder {
            return houseBuilder.getResult()
        }
        
        return nil
    }
}

var director:HouseBuildDirector = HouseBuildDirector()

director.buildWithHouseBuilder(builder: SimpleHouseBuilder()).getResult()?.showDetails()

director.buildWithHouseBuilder(builder: LuxuriousHouseBuilder()).getResult()?.showDetails()


import Foundation

/**
 
 Prototype  Design Pattern
 
*/

class BaseClass:NSObject, NSCopying {
    
    var value1 = 54
    
    //必须使用required关键字修饰
    required override init() {
        
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        //最顶层的子类类型
        let theCopyObjc = type(of: self).init()
        theCopyObjc.value1 = self.value1
        return theCopyObjc
    }
}

class CloneAbleClass:BaseClass {
    var value2 = 44
    
    override func copy(with zone: NSZone? = nil) -> Any {
        let theCopyObj = super.copy(with: zone) as!CloneAbleClass
        theCopyObj.value2 = self.value2
        return theCopyObj
    }
}

let cloneAbleObjc:CloneAbleClass = CloneAbleClass()


var objectPool:Array<CloneAbleClass> = []

for _ in 0..<10 {
    objectPool.append(cloneAbleObjc.copy() as! CloneAbleClass)
}

print(cloneAbleObjc.value1)
print(cloneAbleObjc.value2)


class Shape:NSCopying {
    var x:Int = 0
    var y:Int = 0
    
    init() {
    }
    
    init(x:Int,y:Int) {
        self.x = x
        self.y = y
    }
    
    required init(shape:Shape) {
        self.x = shape.x
        self.y = shape.y
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return type(of: self).init(shape: self)
    }
}

class Rectangle:Shape {
    var width:Int = 0
    var height:Int = 0
    
    override init() {
        super.init()
    }
    
    init(x:Int, y:Int, width:Int, height:Int) {
        super.init(x: x, y: y)
        self.width = width
        self.height = height
    }
    
    required convenience init(shape: Shape) {
        self.init(x: shape.x,y: shape.y ,width: 0,height: 0)
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        let object = super.copy(with: zone) as! Rectangle
        object.width = self.width
        object.height = self.height
        return object
    }
}

class Circle:Shape {
    
    var circleRadius:Int = 0
    
    override init() {
        super.init()
    }
    
    init(x:Int, y:Int, circleRadius:Int) {
        super.init(x: x, y: y)
        self.circleRadius = circleRadius
    }
    
    required convenience init(shape: Shape) {
        self.init(x: shape.x,y: shape.y , circleRadius:0)
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        let object = super.copy(with: zone) as! Circle
        object.circleRadius = self.circleRadius
        return object
    }
}

let rect1 = Rectangle(x: 100, y: 100, width: 200, height: 300)
let rect2 = Rectangle(x: 101, y: 110, width: 201, height: 310)
let rect3 = Rectangle(x: 102, y: 120, width: 202, height: 320)
let rect4 = Rectangle(x: 103, y: 130, width: 203, height: 330)
let rect5 = Rectangle(x: 104, y: 140, width: 204, height: 340)
let circle1 = Circle(x: 100, y: 100, circleRadius: 410)
let circle2 = Circle(x: 100, y: 100, circleRadius: 420)
let circle3 = Circle(x: 100, y: 100, circleRadius: 430)
let circle4 = Circle(x: 100, y: 100, circleRadius: 440)
let circle5 = Circle(x: 100, y: 100, circleRadius: 450)

var shapes = [rect1,rect2,rect3,rect4,rect5,circle1,circle2,circle3,circle4,circle5]
var shapeCopy:Array<Shape> = []

for shape in shapes {
    shapeCopy.append(shape.copy() as! Shape)
}

shapeCopy

/**
 
 Singleton  Design Pattern
 
*/

class SingletonObject {
    
    static let shared:SingletonObject = SingletonObject()
    
}

print(SingletonObject.shared === SingletonObject.shared)



class Singleton {
    
    private init() {
        
    }
    
    static let shared:Singleton = {
        let instance = Singleton()
        return instance
    }()
}

extension Singleton:NSCopying {
    
    func copy(with zone: NSZone? = nil) -> Any {
        return self
    }
}

print(Singleton.shared === Singleton.shared)

/**
 
 Adapter  Design Pattern
 
*/

//这个是目标接口用于限制适配器
protocol Target {
    func getDataWithJsonFormat() -> String
}


class Adaptee {
    //待转换的不适用的接口
    func getDataWithXMLFormat() -> String {
        return "<xml>This is XML format Data</xml>"
    }
}

//适配器实现目标接口，目标接口通过被代理对象提供的各项服务，创建出目标接口的数据
class Adapter:Target {
    
    let adaptee:Adaptee
    
    init(adaptee:Adaptee) {
        self.adaptee = adaptee
    }
    
    func getDataWithJsonFormat() -> String {
        print("Data before transform :" + adaptee.getDataWithXMLFormat() + "\n")
        return "{ data: This is Json format Data}"
    }
    
}

//客户调用的是适配器对象
let adapter = Adapter(adaptee: Adaptee())
print(adapter.getDataWithJsonFormat())


/**
 
 Facade Design Pattern
 
*/

protocol DrawShapProtocol {
    func drawShap()
}

class LineDrawer:DrawShapProtocol {
    
    func drawShap() {
        print("Draw a line")
    }
}

class RectDrawer:DrawShapProtocol {
    
    func drawShap() {
        print("Draw a Rect")
    }
}

class CircleDrawer:DrawShapProtocol {
    
    func drawShap() {
        print("Draw a Circle")
    }
}


class Facade {
    
    let lineDrawer:LineDrawer
    let rectDrawer:RectDrawer
    let circleDrawer:CircleDrawer
    
    private init() {
        lineDrawer      = LineDrawer()
        rectDrawer      = RectDrawer()
        circleDrawer    = CircleDrawer()
    }
    
    static let shared:Facade = {
        let instance = Facade()
        return instance
    }()
    
    func drawPicOne() {
        print("Begin to draw Picture One ......")
        self.lineDrawer.drawShap()
        self.lineDrawer.drawShap()
        self.circleDrawer.drawShap()
        self.lineDrawer.drawShap()
        self.rectDrawer.drawShap()
        print("End to draw Picture One ......")
    }
    
    func drawPicTwo() {
        print("Begin to draw Picture TWo ......")
        self.circleDrawer.drawShap()
        self.circleDrawer.drawShap()
        self.lineDrawer.drawShap()
        self.rectDrawer.drawShap()
        print("End to draw Picture TWo ......")
    }
}

extension Facade:NSCopying {
    
    func copy(with zone: NSZone? = nil) -> Any {
        return self
    }
}

Facade.shared.drawPicOne()
Facade.shared.drawPicTwo()











