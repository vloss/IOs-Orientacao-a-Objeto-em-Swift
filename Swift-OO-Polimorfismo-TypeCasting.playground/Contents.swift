// Polimorfismo

// Classe Base
class Animal {
    let color: String
    let gender: Character
    let breed: String
    
    init(color: String, gender: Character, breed: String) {
        self.color = color
        self.gender = gender
        self.breed = breed
    }
    
    func emiteSound() {
        print("...")
    }
}

// Classe Derivada
class Dog: Animal {
    
    // Override segnifica que está sendo sobescrito o metodo
    override func emiteSound() {
        print("Au, au, au...")
    }
    
    func run(){
        print("O cachorro está correndo!")
    }
    
}

// Classe Derivada
class Bird: Animal{
    
    let canFly: Bool
    
    override func emiteSound() {
        print("🎶 🎶 🎶")
    }
    
    // Designated Initializer - DEVE CHAMAR O CONSTRUTOR DA CLASSE PAI
    init(color: String, gender: Character, breed: String, canFly:Bool) {
        self.canFly = canFly
        
        // Chamando construtor da classe pai
        super.init(color: color, gender: gender, breed: breed)
    }
    
    // Convenience Initializer - Construtor de conviniencia - DEVE CHAMAR O CONSTRUTOR DA MESMA CLASSE
    convenience init(color: String, breed: String) {
        self.init(color: color, gender: "M", breed: breed, canFly: true)
    }
    
    func fly(){
        if canFly {
            print("O pássaro está voando!")
        } else {
            print("Este pássaro não voa!")
        }
    }
}

class Duck: Bird {
    
    init(color: String, gender: Character, breed: String) {
        super.init(color: color, gender: gender, breed: breed, canFly: true)
    }
    
    override func emiteSound() {
        print("Quack, quack, quack")
    }
}

// Instanciando

let puma = Dog(color: "Preta", gender: "M", breed: "Labrador")
let zeCarioca = Bird(color: "Verde e Amarelo", gender: "M", breed: "Papaggaio", canFly: true)

let maleBird = Bird(color: "Black", breed: "Sabia")
let donald = Duck(color: "Branco", gender: "M", breed: "Disney")

puma.emiteSound()
zeCarioca.emiteSound()
donald.emiteSound()

print("========================================================================")


// Type Casting
let animals: [Animal] = [
    Animal(color: "Preto", gender: "F", breed: "Zurubeba"),
    Dog(color: "Marrom", gender: "M", breed: "Cocker Spaniel"),
    Dog(color: "Marrom", gender: "M", breed: "Pitbull"),
    Duck(color: "Branco", gender: "F", breed: "Silvestre"),
    Bird(color: "Green", gender: "F", breed: "Avestruz", canFly: false)
]

for animal in animals {
    animal.emiteSound()
    
    /*
    if animal is Dog{
        (animal as! Dog).run()
    }
    
    if animal is Duck{
        (animal as! Duck).fly()
    }*/
    
    /*
    if let dog = animal as? Dog{
        dog.run()
    }
    
    if let duck = animal as? Duck{
        duck.fly()
    }*/
    
    switch animal {

        case let dog as Dog:
            dog.run()

        case let duck as Duck:
            duck.fly()

        default:
            break
    }
}
