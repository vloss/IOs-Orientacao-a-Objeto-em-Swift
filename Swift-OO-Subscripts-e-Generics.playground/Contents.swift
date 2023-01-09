// Subscripts e Generics

class Car {
    var licensePlate: String
    
    subscript(index: Int)->String{
        get{
            let characters = Array(licensePlate)[index]
            return String(characters)
        }
        set {
            var array = Array(licensePlate)
            array[index] = Character(newValue)
            
            self.licensePlate = String(array)
        }
    }
    
    init(licensePlate: String) {
        self.licensePlate = licensePlate
    }
}

let car = Car(licensePlate: "EXP-8722")
 
car.licensePlate
car[7] = "1"
car.licensePlate


// Generics

func swapValues<T>(_ a: inout T, _ b: inout T){
    let temA = a
    a = b
    b = temA
}

var a = 10.3
var b = 20.3

swapValues(&a, &b)

a
b
