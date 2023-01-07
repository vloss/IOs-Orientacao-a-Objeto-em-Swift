// Classes

class Person {
    
    var name: String
    var gender: Character
    var age: Int = 0
    
    // Construtor
    init(name: String, gender: Character) {
        self.name = name
        self.gender = gender
    }
     
    func speak(sentence: String) {
        if age < 3 {
            print("Gugu dada...")
        } else {
            print(sentence)
        }
    }
    
    func introduce(){
        speak(sentence: "Meu nome é \(name)")
    }
}

class Job {
    var title: String
    var sallary: Double
    
    // Construtor
    init(title: String, sallary: Double) {
        self.title = title
        self.sallary = sallary
    }
}

// Instanciando as Classes/Objeto
let joao = Person(name: "João", gender: "M")
let clara = Person(name: "Clara", gender: "F")
let fabio = Person(name: "Fabio", gender: "M")

joao.age = 34
clara.age = 27
fabio.age = 1

joao.introduce()
clara.introduce()
fabio.introduce()


class Vehicle {
    var speed: Double = 0 {
        // Sempre que é varivel for altera é executado
        didSet{
            
            speed = min(speed, maxSpeed)
        }
    }
    var model: String
    static let speedUnit = "Km/h"
    
    var maxSpeed: Double {
        return 250
    }
    
    var speedInMilesPerHour: Double {
        
        get {
            return speed / 1.60934
        }
        
        set{
            speed = newValue * 1.60934
        }
    }
    
    init(model: String) {
        self.model = model
    }
    
    func descript() -> String {
        return "Veiculo: \(model) e velocidade: \(speed)"
    }
    
    // Metodo de Class
    class func alert() -> String {
        return "Se beber, não dirija!"
    }
    
}


Vehicle.alert()
Vehicle.speedUnit


let car = Vehicle(model: "City")

car.speed = 500
car.speed


