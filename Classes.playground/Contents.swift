import Foundation

//Orientacao a Objetos
//Classes

class Vehicle {
    //Propriedade armazenada
    private var _speed : UInt = UInt()
    
    var model : String
    var speed : UInt {
        get { return _speed }
        set {
            let finalSpeed = min(maxSpeed, newValue)
            _speed = finalSpeed
        }
    }
    
    //Propriedade de classe
    static let speedUnit = "km/h"
    
    //Propriedade computada
    var currentSpeed : String {
        return "\(speed) \(Vehicle.speedUnit)"
    }
    
    var maxSpeed : UInt {
        return 250
    }
    
    
    init(model : String) {
        self.model = model
    }
    
    //Metodo de instancia
    func descript() -> String {
        return "Vaiculo: \(model), velocidade: \(speed)"
    }
    
    //Metodo de classe
    class func alert() {
        print("Se beber, pode até dirigir, mas nao vou junto")
    }
    
}

print("A unidade utilizada é \(Vehicle.speedUnit)")
var vehicle = Vehicle(model: "Ferrari")
vehicle.speed = 600
print(vehicle.speed)
print(vehicle.descript())
Vehicle.alert()


class Car : Vehicle {
    var licensePlate : String
    var driver : String?
    
    subscript(index: Int) -> String{
        get {
            let plateArray = Array(self.licensePlate.characters)
            return String(plateArray[index])
        }
        set {
            var plateArray = Array(self.licensePlate.characters)
            plateArray[index] = Character(newValue)
            self.licensePlate = String(plateArray)
        }
    }
    
    override var maxSpeed: UInt{
        return 150
    }
    
    override func descript() -> String {
        return "\(super.descript()), Placa: \(licensePlate)"
    }
    
    init(model: String, licensePlate : String) {
        self.licensePlate = licensePlate
        super.init(model: model)
    }
    
    convenience init(driver: String) {
        self.init(model: "", licensePlate: "")
        self.driver = driver
    }
}

var car = Car(model: "Fusca", licensePlate: "EES0123")


if car[6] == "1" || car[6] == "2" {
    print("Só depois das 20h00")
} else {
    print("OK, livre de rodizio")
}


