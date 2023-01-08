// Encapsulamento

class CreditCard{

    let number: String
    let limit: Double
     
    //Quando privado só a classe acessa.
    private var invoiceValue: Double = 0
    
    let iof: Double = 6.38
    
    init(number: String, limit: Double) {
        self.number = number
        self.limit  = limit
    }
    
    // Adicionando o final o metodo não pode ser modificado por uma classe filha.
    final func makePurchase (off value: Double, isInternational: Bool) -> Bool {
        
        let debit = isInternational ? value * (1 + iof/100) : value
        let finalValue = invoiceValue + debit
        
        if finalValue > limit{
            return false
        } else {
            invoiceValue = finalValue
            return true
        }
    }
    
    func getInvoice() -> Double {
        return invoiceValue
    }
    
    var invoice: Double {
        return invoiceValue
    }
}


let creditCard = CreditCard(number: "1245-9876-2893-1837", limit: 5000)

creditCard.makePurchase(off: 1500, isInternational: true)

creditCard.limit

// Quando não é privado o invoiceValue pode se acessar direto
//creditCard.invoiceValue
//creditCard.invoiceValue = 0

creditCard.invoice
creditCard.getInvoice()


// Criando cartão de crédito e débito que herda classe CreditCard
class DebitCreditCard: CreditCard {

    private var _balance: Double = 0
    
    var balance: Double {
        return _balance
    }
    
    func makeTransaction(of value: Double){
        _balance += value
    }
}

let debitCard = DebitCreditCard(number: "9876-9876-2893-1837", limit: 5000)

debitCard.makeTransaction(of: 500)
debitCard.makeTransaction(of: -100)

print(debitCard.balance)
