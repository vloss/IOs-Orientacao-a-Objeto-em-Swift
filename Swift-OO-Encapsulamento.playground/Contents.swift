// Encapsulamento

class CreditCard{
    let number: String
    let limit: Double
    let invoiceValue: Double = 0
    
    let iof: Double = 6.38
    
    init(number: String, limit: Double) {
        self.number = number
        self.limit  = limit
    }
    
    func makePurchase (off value: Double, usingCreditCard: Bool) -> Bool {
        
        let debit = usingCreditCard ? value * (1 + iof/100) : value
        let finalValue = invoiceValue + debit
        
        if finalValue > limit{
            return false
        } else {
            invoiceValue = finalValue
            return true
        }
    }
}
