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

/**
 
 Proxy Design Pattern
 
*/

protocol ServiceProtocol {
    func request(url:String, userProfile:Profile) -> Bool
}

class RealSubject:ServiceProtocol {
    
    func request(url: String,userProfile:Profile) -> Bool {
        print(userProfile.nickname + " 访问 " + url + " ...... ")
        return true
    }
}

struct Profile {
    var nickname:String = ""
    var accessToken = ""
}

class ProxySubject:ServiceProtocol {
    
    var realSubject:ServiceProtocol
    
    init(realSubject:ServiceProtocol) {
        self.realSubject = realSubject
    }
    
    var accessableUrl:Array<String> = [
        "https://www.baidu.com",
        "https://www.google.com",
        "https://www.youtu.com"
    ]
    
    func request(url: String, userProfile:Profile) -> Bool {
        if !checkAccessable(url: url, userProfile: userProfile) {
            return false
        }
        realSubject.request(url: url, userProfile: userProfile)
        return true
    }
    
    private func checkAccessable(url:String, userProfile:Profile) -> Bool {
        
        guard !url.isEmpty else {
            print("url cannot be empty")
            return false
        }
        
        if (!accessableUrl.contains(url)) {
            print("you has not permission to access this web site")
            return false
        }
        
        if (userProfile.accessToken.isEmpty) {
            print("you accessToken is unavaiable, please re login")
            return false
        }
        
        return true
    }
}

let realSubject = RealSubject()
let proxy = ProxySubject(realSubject: realSubject)
let profile = Profile(nickname: "tbfungeek", accessToken: "123456")
proxy.request(url: "https://www.bilibili.com", userProfile: profile)
proxy.request(url: "https://www.baidu.com", userProfile: Profile(nickname: "tbfungeek", accessToken: ""))
proxy.request(url: "https://www.baidu.com", userProfile: profile)


/**
 
 Wrapper Design Pattern
 
*/

protocol DataSource {
    func writeData(data:String)
    func readData() -> String
}

class FileDataSource:DataSource {
    
    let fileName:String
    init(fileName:String) {
        self.fileName = fileName
    }
    
    func writeData(data: String) {
        print("Write data to " + self.fileName)
    }
    
    func readData() -> String {
        return "data from file "+self.fileName
    }
}

class DataSourceWrapper:DataSource {
    
    let wrappee:DataSource
    init(wrappee:DataSource) {
        self.wrappee = wrappee
    }
    
    func writeData(data: String) {
        wrappee.writeData(data: data)
    }
    
    func readData() -> String {
        return wrappee.readData()
    }
}

class EncryptionWrapper:DataSourceWrapper {
    
    override func writeData(data: String) {
        print("加密数据")
        super.writeData(data: data)
    }
    
    override func readData() -> String {
        print("解密数据")
        return super.readData()
    }
}


class CompressionWrapper:DataSourceWrapper {
    
    override func writeData(data: String) {
        print("压缩数据")
        super.writeData(data: data)
    }
    
    override func readData() -> String {
        print("解压数据")
        return super.readData()
    }
    
}

let fileDataSource = FileDataSource(fileName: "text.txt")

let encryDataSource = EncryptionWrapper(wrappee: fileDataSource)
encryDataSource.writeData(data: "写入测试数据")
print(encryDataSource.readData())

let compressDataSource = CompressionWrapper(wrappee: fileDataSource)
compressDataSource.writeData(data: "写入测试数据")
print(compressDataSource.readData())


/**
 
 Bridge Design Pattern
 
*/

protocol RemoteProtocol {
    func togglePower()
    func volumUp()
    func volumDown()
    func channelUp()
    func channelDown()
    func currentState() -> String
}


protocol DeviceProtocol {
    func isEnabled() -> Bool
    func enable()
    func disable()
    func getVolume() -> Float
    func setVolume(volume:Float)
    func getChannel() -> Int
    func setChannel(channel:Int)
    func deviceName() -> String
}

class Remote:RemoteProtocol {
    
    let device:DeviceProtocol
    init(device:DeviceProtocol) {
        self.device = device
    }
    
    func togglePower() {
        
        if device.isEnabled() {
            device.disable()
        } else {
            device.enable()
        }
    }
    
    func volumUp() {
        
        if !device.isEnabled() {
            return
        }
        device.setVolume(volume: device.getVolume() + 1)
    }
    
    func volumDown() {
        
        if !device.isEnabled() {
            return
        }
        device.setVolume(volume:device.getVolume() - 1 < 0 ? 0:device.getVolume() - 1)
    }
    
    func channelUp() {
        if !device.isEnabled() {
            return
        }
        device.setChannel(channel: device.getChannel() + 1)
    }
    
    func channelDown() {
        if !device.isEnabled() {
            return
        }
        device.setChannel(channel: device.getChannel() - 1 < 0 ? 0:device.getChannel() - 1)
    }
    
    func currentState() -> String {
        return self.device.deviceName()+" Volume: \(self.device.getVolume()) Channel: \(self.device.getChannel())"
    }
    
}

class Device:DeviceProtocol {
    
    var status:Bool = false
    var volume:Float = 0.0
    var channel:Int = 0
    
    func isEnabled() -> Bool {
        return self.status
    }
    
    func enable() {
        self.status = true
    }
    
    func disable() {
        self.status = false
    }
    
    func getVolume() -> Float {
        return self.volume
    }
    
    func setVolume(volume: Float) {
        self.volume = volume
    }
    
    func getChannel() -> Int {
        return self.channel
    }
    
    func setChannel(channel: Int) {
        self.channel = channel
    }
    
    func deviceName() -> String {
        return ""
    }
}

class Radio:Device {
    
    override func deviceName() -> String {
        return "Radio"
    }
    
}

class TV:Device {
    
    override func deviceName() -> String {
        return "TV"
    }
}

let radioRemote = Remote(device: Radio())
radioRemote.togglePower()
radioRemote.volumUp()
radioRemote.volumUp()
radioRemote.volumUp()
radioRemote.volumUp()
radioRemote.channelDown()
radioRemote.channelDown()
radioRemote.channelDown()
print(radioRemote.currentState())

let tvRemote = Remote(device: TV())
tvRemote.togglePower()
tvRemote.volumUp()
tvRemote.volumUp()
tvRemote.channelUp()
tvRemote.channelUp()
tvRemote.channelUp()
tvRemote.channelDown()
print(tvRemote.currentState())

/**
 
 Component Design Pattern
 
*/

protocol Component {
    func getPrice() -> Int
}


class BasicGoods:Component {
    
    let price:Int
    init(price:Int) {
        self.price = price
    }
    
    func getPrice() -> Int {
        return self.price
    }
    
}

class GoodsPackge:Component {
    
    var childGoods:Array<Component>
    
    init() {
        self.childGoods = []
    }
    
    func addGood(good:Component) {
        self.childGoods.append(good)
    }
    
    func removeGood(good:Component) {
        if self.childGoods.count > 0 {
            self.childGoods.removeLast()
        }
    }
    
    func goodsCount() -> Int {
        return self.childGoods.count
    }
    
    func getPrice() -> Int {
        
        var totalPrice = 0
        for goods in self.childGoods {
            totalPrice += goods.getPrice()
        }
        return totalPrice
    }
}


let baseGood1:Component = BasicGoods(price: 5)
let baseGood2:Component = BasicGoods(price: 6)
let baseGood3:Component = BasicGoods(price: 7)
let baseGood4:Component = BasicGoods(price: 8)
let baseGood5:Component = BasicGoods(price: 9)
let baseGood6:Component = BasicGoods(price: 10)

let goodPackage = GoodsPackge()
goodPackage.addGood(good: BasicGoods(price: 1))
goodPackage.addGood(good: BasicGoods(price: 2))
goodPackage.addGood(good: BasicGoods(price: 3))
goodPackage.addGood(good: BasicGoods(price: 4))

let goodsComponnet:Component = goodPackage

var totalGoodComponents:Array<Component> = []
totalGoodComponents.append(baseGood1)
totalGoodComponents.append(baseGood2)
totalGoodComponents.append(baseGood3)
totalGoodComponents.append(baseGood4)
totalGoodComponents.append(baseGood5)
totalGoodComponents.append(baseGood6)
totalGoodComponents.append(goodPackage)

var totalPrice = 0
for good in totalGoodComponents {
    totalPrice += good.getPrice()
}
print(totalPrice)


/**
 
 Flyweight  Design Pattern
 
*/

enum TextureType {
    case monster,bullet
}

protocol Texture {
    func type() -> String
    func size() -> Int
}

/// 假设这是个怪兽的纹理，很占用资源
struct MonsterTexture:Texture {
    
    func type() -> String {
        return "MonsterTexture"
    }
    
    func size() -> Int {
        return 1000000 * 10; //10M
    }
    
}

/// 假设这是个子弹的纹理，很占用资源
struct BulletTexture:Texture {
    
    func type() -> String {
        return "BulletTexture"
    }
    
    func size() -> Int {
        return 1000000 * 3; //3M
    }
    
}

class Object {
    var posX = 0
    var posY = 0
    var speed = 0
    var texture:Texture?
}

class Monster:Object {
    
    init(texture:Texture) {
        super.init()
        self.texture = texture
    }
    
    func drawMonster(x:Int,y:Int,speed:Int) {
        self.posX = x
        self.posY = y
        self.speed = speed
        
        print("Show Monster at position with (\(self.posX),\(self.posY)) with Speed \(self.speed)")
    }
    
}

class Bullet:Object {
    
    init(texture:Texture) {
        super.init()
        self.texture = texture
    }
    
    func drawBullet(x:Int,y:Int,speed:Int) {
        self.posX = x
        self.posY = y
        self.speed = speed
        
        print("Show Bullet at position with (\(self.posX),\(self.posY)) with Speed \(self.speed) ")
    }
    
}

class TextureFactory {
    
    static var textures:[TextureType:Texture] = [:]
    
    static func textureByType(type:TextureType) -> Texture {
        
        if (type == .monster) {
            if(!self.textures.keys.contains(.monster)) {
                let monsterTexture = MonsterTexture()
                self.textures[.monster] = monsterTexture
                return monsterTexture;
            } else {
                return self.textures[.monster]!
            }
        } else {
            if(!self.textures.keys.contains(.bullet)) {
                let bulletTexture = BulletTexture()
                self.textures[.bullet] = bulletTexture
                return bulletTexture;
            } else {
                return self.textures[.bullet]!
            }
        }
    }
}

var objects:Array<Object> = []

for _ in 0...10 {
    let monster:Monster = Monster(texture: TextureFactory.textureByType(type: .monster))
    objects.append(monster)
}

for _ in 0...10 {
    let bullet:Bullet = Bullet(texture: TextureFactory.textureByType(type: .bullet))
    objects.append(bullet)
}

for object in objects {
        
    if let obj = object as? Monster {
        obj.drawMonster(x: Int(arc4random_uniform(100)), y: Int(arc4random_uniform(100)), speed: Int(arc4random_uniform(100)))
    }
    
    if let obj = object as? Bullet {
        obj.drawBullet(x: Int(arc4random_uniform(100)), y: Int(arc4random_uniform(100)), speed: Int(arc4random_uniform(100)))
    }
}

/**
 
 Chain of Responsibility  Design Pattern
 
*/

struct Request {
    let requestCode:Int
    
    init(requestCode:Int) {
        self.requestCode = requestCode
    }
    
}

protocol HandlerProtocol {
    func canHandleRequest(request:Request) -> Bool
    func setNextHandler(nextHandler:HandlerProtocol)
    func handleRequest(request:Request)
}

class BaseHandler:HandlerProtocol {
    
    var nextHandler:HandlerProtocol?
    
    let handlerCode:Int
    
    init(handlerCode:Int) {
        self.handlerCode = handlerCode
    }
    
    func canHandleRequest(request: Request) -> Bool {
        return self.handlerCode == request.requestCode
    }
    
    func setNextHandler(nextHandler: HandlerProtocol) {
        self.nextHandler = nextHandler
    }
    
    func handleRequest(request: Request) {
        
    }
    
}

class Handler1:BaseHandler {
    
    override func handleRequest(request: Request) {
        if self.canHandleRequest(request: request) {
            print("request had been process by Handler1")
        } else {
            self.nextHandler?.handleRequest(request: request)
        }
    }
}

class Handler2:BaseHandler {
    
    override func handleRequest(request: Request) {
        if self.canHandleRequest(request: request) {
            print("request had been process by Handler2")
        } else {
            self.nextHandler?.handleRequest(request: request)
        }
    }
}

class Handler3:BaseHandler {
    
    override func handleRequest(request: Request) {
        if self.canHandleRequest(request: request) {
            print("request had been process by Handler3")
        } else {
            self.nextHandler?.handleRequest(request: request)
        }
    }
}

class Handler4:BaseHandler {
    
    override func handleRequest(request: Request) {
        if self.canHandleRequest(request: request) {
            print("request had been process by Handler4")
        } else {
            self.nextHandler?.handleRequest(request: request)
        }
    }
    
}

class Handler5:BaseHandler {
    
    override func handleRequest(request: Request) {
        if self.canHandleRequest(request: request) {
            print("request had been process by Handler5")
        } else {
            self.nextHandler?.handleRequest(request: request)
        }
    }
}

class DefaultHandler:BaseHandler {
    
    override func handleRequest(request: Request) {
        print("request had been process by Default Handler")
    }
}

let request404 = Request(requestCode: 404)
let request500 = Request(requestCode: 500)

let hander1 = Handler1(handlerCode: 100)
let hander2 = Handler2(handlerCode: 102)
let hander3 = Handler3(handlerCode: 102)
let hander4 = Handler4(handlerCode: 404)
let hander5 = Handler5(handlerCode: 102)
let defaultHandler = DefaultHandler(handlerCode: 0)

hander1.setNextHandler(nextHandler: hander2)
hander2.setNextHandler(nextHandler: hander3)
hander3.setNextHandler(nextHandler: hander4)
hander4.setNextHandler(nextHandler: hander5)
hander5.setNextHandler(nextHandler: defaultHandler)

hander1.handleRequest(request: request404)
hander1.handleRequest(request: request500)


/**
 
 Observer  Design Pattern
 
*/
class SubScribe {
    
    var observers:Array<Observer>
    var status:Int
    
    init() {
        self.observers = []
        self.status = 0
    }
    
    func registeObserver(observer:Observer) {
        self.observers.append(observer)
    }
    
    func unregisteObserver(observer:Observer) {
        self.observers.removeAll(where: { $0 === observer })
    }
    
    func setStatus(status:Int) {
        self.status = status
        for observer in self.observers {
            observer.update(subscribe: self);
        }
    }
    
    func getStatus() -> Int {
        return self.status
    }
}

class Observer {
    
    var name:String
    
    init(name:String) {
        self.name = name
    }
    
    func update(subscribe: SubScribe) {
        print("Message From \(self.name) Subscribe status \(subScribe.getStatus())")
    }
}

let observer1 = Observer(name: "Observer1")
let observer2 = Observer(name: "Observer2")
let observer3 = Observer(name: "Observer3")
let observer4 = Observer(name: "Observer4")

let subScribe = SubScribe()
subScribe.registeObserver(observer: observer1)
subScribe.registeObserver(observer: observer2)
subScribe.registeObserver(observer: observer3)
subScribe.registeObserver(observer: observer4)

subScribe.unregisteObserver(observer: observer2)

subScribe.setStatus(status: 200)

/**
 
 Templete  Design Pattern
 
*/

class BaseTemplete {
    
    //固定的步骤
    final func fixStep1() {
        print("Fix Templete Step 1")
    }
    
    //固定的步骤
    final func fixStep2() {
        print("Fix Templete Step 2")
    }
    
    //子类可覆写的模版步骤
    func templeteStep1() {
        print("templete Step1 by BaseTemplete")
    }
    
    //子类可覆写的模版步骤
    func templeteStep2() {
        print("templete Step2 by BaseTemplete")
    }
    
    //模版中部分可供hook的方法
    func hookStep1() {
        
    }
    
    //模版中部分可供hook的方法
    func hookStep2() {
        
    }
    
    //还可以以回调方式提供
    func templete(callback:() -> Void) {
        fixStep1()
        fixStep2()
        templeteStep1()
        hookStep1()
        templeteStep2()
        hookStep2()
        callback()
    }
}

class TempleteOne:BaseTemplete {
    
    override func templeteStep1() {
        print("templete Step1 by TempleteOne")
    }
    
    override func templeteStep2() {
        print("templete Step2 by TempleteOne")
    }
    
    override func hookStep1() {
        print("hookStep1 by TempleteOne")
    }
    
}

class TempleteTwo:BaseTemplete {
    
    override func templeteStep2() {
        print("templete Step2 by TempleteTwo")
    }
    
    override func hookStep1() {
        print("hookStep1 by TempleteTwo")
    }
    
}

TempleteOne().templete {
    print("This Code is from TempleteOne CallBack")
}


TempleteTwo().templete {
    print("This Code is from TempleteTwo CallBack")
}

/**
 
 Visitor Design Pattern
 
*/

protocol ElementProtocol {
    func accept(visitor:VisitorProtocol) -> String
}

class Shap:ElementProtocol {
    
    var centerX:Int = 0
    var centerY:Int = 0
    
    init(centerX:Int,centerY:Int) {
        self.centerX    = centerX
        self.centerY    = centerY
    }
    
    func accept(visitor: VisitorProtocol) -> String {
        return ""
    }
}

class DotShape:Shap {
    
    var centerSize:Int = 0
    
    init(centerX:Int,centerY:Int,centerSize:Int) {
        super.init(centerX: centerX, centerY: centerY)
        self.centerSize = centerSize
    }
    
    override func accept(visitor: VisitorProtocol) -> String {
        return visitor.visit(dot: self)
    }
    
}

class CircleShape:Shap {
    
    var circleRadius:Int = 0
    
    init(centerX:Int,centerY:Int,circleRadius:Int) {
        super.init(centerX: centerX, centerY: centerY)
        self.circleRadius = circleRadius
    }
    
    override func accept(visitor: VisitorProtocol) -> String {
        return visitor.visit(circle: self)
    }
    
}

class RectangleShape:Shap {
    
    var width:Int = 0
    var height:Int = 0
    
    init(centerX:Int,centerY:Int,width:Int,height:Int) {
        super.init(centerX: centerX, centerY: centerY)
        self.width = width
        self.height = height
    }
    
    override func accept(visitor: VisitorProtocol) -> String {
        return visitor.visit(rect: self);
    }
}

class CompoundShape:Shap {
    
    var dot:DotShape?
    var circle:CircleShape?
    
    init(dot:DotShape, circle:CircleShape) {
        super.init(centerX: 0, centerY: 0)
        self.dot = dot
        self.circle = circle
    }
    
    override func accept(visitor: VisitorProtocol) -> String {
        return visitor.visit(compond: self)
    }
}

protocol VisitorProtocol {
    
    func visit(dot:DotShape) -> String
    func visit(circle:CircleShape) -> String
    func visit(rect:RectangleShape) -> String
    func visit(compond:CompoundShape) -> String
}

class Visitor:VisitorProtocol {
    
    func visit(dot: DotShape) -> String {
        return "This is a dot with Center ( \(dot.centerX) : \(dot.centerY) ) dot Size = \(dot.centerSize)"
    }
    
    func visit(circle: CircleShape) -> String {
        return "This is a circle with Center ( \(circle.centerX) : \(circle.centerY) ) circle radius = \(circle.circleRadius)"
    }
    
    func visit(rect: RectangleShape) -> String {
        return "This is a rectangle with Center ( \(rect.centerX) : \(rect.centerY) ) rect width = \(rect.width) height = \(rect.height)"
    }
    
    func visit(compond: CompoundShape) -> String {
        return "This is a compond with dot \(compond.dot) and circle \(compond.circle)"
    }
    
}

let dot:DotShape = DotShape(centerX: 100, centerY: 100, centerSize: 2)
let circle:CircleShape = CircleShape(centerX: 100, centerY: 100, circleRadius: 40)
let rect:RectangleShape = RectangleShape(centerX: 300, centerY: 200, width: 100, height: 200)
let compound:CompoundShape = CompoundShape(dot: dot, circle: circle)

let shapesArray:Array<ElementProtocol> = [dot,circle,rect,compound]

let visitor:Visitor = Visitor()

for shape:ElementProtocol in shapesArray {
    print(shape.accept(visitor: visitor))
}


/**
 
 State Design Pattern
 
*/

class Context {
    
    private var currentState:State
    
    init(state : State) {
        self.currentState = state
        transitionTo(state: state)
    }
    
    func transitionTo(state:State) {
        self.currentState = state
        self.currentState.update(context: self)
    }
    
    func request1() {
        self.currentState.handle1()
    }
    
    func request2() {
        self.currentState.handle2()
    }
    
}

protocol State:class {
    
    func update(context: Context)
    
    func handle1()
    
    func handle2()
}

class BaseState: State {
    
    private (set) weak var context:Context?
    
    func update(context: Context) {
        self.context = context
    }
    
    func handle1() {
        
    }
    
    func handle2() {
        
    }
}

class ConcreteStateA: BaseState {
    
    override func handle1() {
        print("This is ConcreteStateA call handle1")
        print("Will Switch to Next State")
        self.context?.transitionTo(state: ConcreteStateB())
    }
    
    override func handle2() {
        print("This is ConcreteStateA call handle2")
    }
}

class ConcreteStateB: BaseState {
    
    override func handle1() {
        print("This is ConcreteStateB call handle1")
        print("Will Switch to Next State")
        self.context?.transitionTo(state: ConcreteStateA())
    }
    
    override func handle2() {
        print("This is ConcreteStateB call handle2")
    }
}

let stateA = ConcreteStateA()
let stateB = ConcreteStateB()
let context = Context(state: stateA)
context.request1()
context.request2()


/**
 
 Strategy Design Pattern
 
*/

protocol StategyProtocol {
    func excuteSalePriceStategy(originePrice:Int) -> Float
}

class SaleStategyA:StategyProtocol {
    
    var scale:Float = 0.8
    
    init(scale:Float) {
        self.scale = scale
    }
    
    func excuteSalePriceStategy(originePrice: Int) -> Float {
        return Float(originePrice) * self.scale
    }
}

class SaleStategyB:StategyProtocol {
    
    var discount: Int = 50
    init(discount: Int) {
        self.discount = discount
    }
    
    func excuteSalePriceStategy(originePrice: Int) -> Float {
        return Float(originePrice - self.discount)
    }
}

class ScaleContext {
    
    var stategy:StategyProtocol?
    
    func applyStategy(stategy:StategyProtocol) {
        self.stategy = stategy
    }
    
    func priceAfterScale(originePrice: Int) -> Float {
        return Float(self.stategy?.excuteSalePriceStategy(originePrice: originePrice) ?? Float(originePrice))
    }
}

let scaleStategyA:SaleStategyA = SaleStategyA(scale: 0.95)
let scaleStategyB:SaleStategyB =  SaleStategyB(discount: 90)

let scaleContext = ScaleContext()

scaleContext.applyStategy(stategy: scaleStategyA)
print("price ofter scale Stategy A = \(scaleContext.priceAfterScale(originePrice: 200))")

scaleContext.applyStategy(stategy: scaleStategyB)
print("price ofter scale Stategy A = \(scaleContext.priceAfterScale(originePrice: 200))")


/**
 
 Mediator Design Pattern
 
*/

struct Message {
    var message:String
    var targetComponentName:String
}

protocol ComponentProtocol {
    
    func componnetName() -> String
    
    func updateMediator(mediator:Mediator)
    
    func onMessage(message:String)
    
    func sendMessage(message:Message)
    
}

class BaseComponent: ComponentProtocol {
    
    private weak var mediator:Mediator?
    
    func componnetName() -> String {
        return ""
    }
    
    func updateMediator(mediator:Mediator) {
        self.mediator = mediator
    }
    
    func onMessage(message:String) {
        
    }
    
    func sendMessage(message:Message) {
        self.mediator?.notify(message: message)
    }
}

class ComponentA: BaseComponent {

    override func componnetName() -> String {
        return "ComponentA"
    }
    
    override func onMessage(message: String) {
        print("ComponentA  onMessage :\(message)")
    }
    
}

class ComponentB: BaseComponent {
    
    override func componnetName() -> String {
        return "ComponentB"
    }
    
    override func onMessage(message: String) {
        print("ComponentB  onMessage :\(message)")
    }
}

class Mediator {
    
    var components:[String:BaseComponent]
    
    init() {
        self.components = [:]
    }
    
    func registComponent(conponent:BaseComponent) {
        
        if(!conponent.componnetName().isEmpty) {
            self.components[conponent.componnetName()] = conponent
            conponent.updateMediator(mediator: self)
        }

    }
    
    func notify(message:Message) {
        let component:ComponentProtocol? = self.components[message.targetComponentName]
        component?.onMessage(message: message.message)
    }
}

let mediator:Mediator = Mediator()
let componentA:ComponentA = ComponentA()
let componentB:ComponentB = ComponentB()

mediator.registComponent(conponent: componentA)
mediator.registComponent(conponent: componentB)

componentA.sendMessage(message: Message(message: "Message From componentA", targetComponentName: componentB.componnetName()))
componentB.sendMessage(message: Message(message: "Message From componentB", targetComponentName: componentA.componnetName()))


/**
 
 Command Design Pattern
 
*/

protocol CommandProtocol {
    func excute()
}

class Receiver {
    
    func doWork(params:Array<String>) {
        print("do Work With Parameter : ==>")
        for param in params {
            print("parameter : \(param)")
        }
    }
}

class Command: CommandProtocol {
    
    var receiver:Receiver?
    var params:Array<String> = []
    
    init(receiver:Receiver,params:String...) {
        self.receiver = receiver
        for param in params {
            self.params.append(param)
        }
    }
    
    func excute() {
        receiver?.doWork(params: self.params)
    }
}

class CommandInvoker {
    
    var commands:Array<CommandProtocol>
    
    init() {
        self.commands = []
    }
    
    func addCommand(command:Command) {
        self.commands.append(command)
    }
    
    func excute() {
        for command in self.commands {
            command.excute()
        }
    }
}

let invoker:CommandInvoker = CommandInvoker()


let receiver:Receiver = Receiver()

let command1:Command = Command(receiver: receiver, params: "Parameter1","Parameter2","Parameter3")

let command2:Command = Command(receiver: receiver, params: "Param1","Param2","Param3")

let command3:Command = Command(receiver: receiver, params: "P1","P2","P3")

invoker.addCommand(command: command1)
invoker.addCommand(command: command2)
invoker.addCommand(command: command3)

invoker.excute()


/**
 
 Memento Design Pattern
 
*/

class Originator {
    
    //私有变量，不对外发布，但是需要备份该数据
    private var state:String
    
    init(state:String) {
        self.state = state
    }
    
    private func generateRandomString() -> String {
        return String(UUID().uuidString.suffix(4))
    }
    
    func doSomeWork() {
        self.state = self.generateRandomString()
    }
    
    func store() -> Memento {
        return Memento(state: self.state)
    }
    
    func restore(memento:Memento) {
        self.state = memento.state
    }
    
    func showState() -> String {
        return self.state
    }
}


class Memento {
    
    //private(set) 只有getter权限
    private(set) var state:String
    private(set) var date:Date
    
    init(state:String) {
        self.state = state
        self.date = Date()
    }
}

class CareTaker {
    
    private var originater:Originator
    
    private var memenToList:Array<Memento>
    
    init(originater:Originator) {
        self.originater = originater
        self.memenToList = []
    }
    
    func backup() {
        memenToList.append(originater.store())
    }
    
    func undo() {
        originater.restore(memento: memenToList.removeLast())
    }
    
    func showState() {
        print(originater.showState())
    }
}

let originator = Originator(state: "Init State")
originator.showState()
let careTaker = CareTaker(originater: originator)
careTaker.backup()
careTaker.showState()
originator.doSomeWork()
careTaker.showState()
originator.doSomeWork()
careTaker.showState()
careTaker.undo()
careTaker.showState()





