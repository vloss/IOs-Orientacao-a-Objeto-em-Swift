// Protocol

enum FuelType {
    case gasoline, ethanol, diesel, flex
}

protocol ACCapable {
    var hasAC: Bool {get set}
    func turnAC(on: Bool)
}

class Vehicle {
    var brand: String
    var fuelType: FuelType
    
    init(brand: String, fuelType: FuelType) {
        self.brand = brand
        self.fuelType = fuelType
    }
}

class Car: Vehicle, ACCapable {
    var numberOfDoors: Int
    var hasAC: Bool = true
    
    init(brand: String, fuelType: FuelType, numberOfDoors: Int) {
        self.numberOfDoors = numberOfDoors
        super.init(brand: brand, fuelType: fuelType)
    }
    
    func turnAC(on: Bool) {
        if on {
            print("AR Ligado")
        } else {
            print("AR Desligado")
        }
    }
}

class Bike: Vehicle {
    
    var cc: Int
    
    
    init(brand: String, fuelType: FuelType, cc: Int) {
        self.cc = cc
        super.init(brand: brand, fuelType: fuelType)
    }
}

class Airplane: Vehicle, ACCapable {
    var numberOfEngines: Int
    var hasAC: Bool = true
    
    init(brand: String, fuelType: FuelType, numberOfEngines: Int) {
        self.numberOfEngines = numberOfEngines
        super.init(brand: brand, fuelType: fuelType)
    }
    
    func turnAC(on: Bool) {
        
        if numberOfEngines > 1{
            if on {
                print("AR Ligado")
            } else {
                print("AR Desligado")
            }
        } else {
            print("Aviões monomotores não podem ligar ar condicionado.")
        }
       
    }
}

let airplane = Airplane(brand: "Bus", fuelType: FuelType.diesel, numberOfEngines: 2)


airplane.turnAC(on: true)


// Utilizando Extensions para implementar Protocols
//extension Bike: ACCapable{
//    
//}
