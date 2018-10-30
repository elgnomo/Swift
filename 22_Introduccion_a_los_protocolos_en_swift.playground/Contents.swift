//: Playground - noun: a place where people can play
// Protocolos un contrato que deben cumplirse
protocol miProtocolo{
    var aleatoriedad : Double {get set}
    func numeroAleatorio()//variables o funciones
}

class Sorteo : miProtocolo{
    var aleatoriedad: Double = 65.65
    func numeroAleatorio(){
        // generar numero implementamos la funcion
    }
}

