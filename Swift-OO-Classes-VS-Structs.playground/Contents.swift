// Classes VS Structs

struct Student {
    var name: String
    var age: Int
}

class Person{
    var name: String
    var age: Int
    weak var friend: Person?
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    deinit {
        print("\(name) foi desalocado da memória")
    }
}


// Utilizando struct
 var student1 = Student(name: "Zeca", age: 22)
 var student2 = student1 // Value type, feito uma cópia

print(student1.name, student1.age)
print(student2.name, student2.age)

student1.name = "Alisson"
student1.age = 33

print(student1.name, student1.age)
print(student2.name, student2.age)

 print("===============")


// Utilizando Classe

var person1: Person? = Person(name: "Vini", age: 31)
//var person2: Person? = person1 // Reference Type, feito uma referência
var person2: Person? = Person(name: "Loss", age: 44)

print(person1!.name, person1!.age)
print(person2!.name, person2!.age)

person1!.name = "Beatriz"
person1!.age = 1

print(person1!.name, person1!.age)
print(person2!.name, person2!.age)

person1!.friend = person2
person2!.friend = person1

print(person1!.friend?.name)
print(person2!.friend?.name)

person2 = nil
person1 = nil
