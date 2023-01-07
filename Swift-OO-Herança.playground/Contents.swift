// Herença

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
    func run(){
        print("O cachorro está correndo!")
    }
    
}

// Classe Derivada
class Bird: Animal{
    
    let canFly: Bool
    
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

// Instanciando

let puma = Dog(color: "Preta", gender: "M", breed: "Labrador")
let zeCarioca = Bird(color: "Verde e Amarelo", gender: "M", breed: "Papaggaio", canFly: true)

let maleBird = Bird(color: "Black", breed: "Sabia")

puma.emiteSound()
zeCarioca.emiteSound()


