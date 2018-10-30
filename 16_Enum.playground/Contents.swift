//validar ciertas tartjetas de credito
enum ValidCreditCards: String{
    case MasterCard
    case Visa
    case Chase
}
let userCard: String = "MasterCard"

switch userCard {
case ValidCreditCards.MasterCard.rawValue:
    print("Tarjeta valida")
case ValidCreditCards.Visa.rawValue:
    print("No Valida")
default:
    print("Ni si quiera es una tarjeta")
}
