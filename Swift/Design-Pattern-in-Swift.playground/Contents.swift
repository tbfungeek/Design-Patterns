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






