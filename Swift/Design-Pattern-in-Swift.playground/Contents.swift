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













