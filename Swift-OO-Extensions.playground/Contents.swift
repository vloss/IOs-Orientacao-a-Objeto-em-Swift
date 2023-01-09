// Extensions

import Foundation

let name = "Vinicius Viana Loss"

extension String {
    
//    var vowels: [Character] {
//    var list: [Character] = []
//
//        for character in characters {
//
//            switch String(character).lowercased() {
//            case "a", "e", "i", "o", "u":
//                list.append(character)
//            default:
//                break
//            }
//        }
//
//        return list
//    }
    
    func initials() -> String {
        let arrya = self.components(separatedBy: " ")
        let firsts = arrya.map({$0.first!})
        
        return String(firsts)
    }
}

name.initials()


// Utilizando Extensions para Classes
class Account {
    let number: String
    var balance: Double = 0
    
    init(number: String) {
        self.number = number
    }
}

extension Account {
    convenience init(number: String, balance: Double) {
        self.number = number
        self.balance = balance
    }
}

let account = Account(number: "986966355423452")
