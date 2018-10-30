//: Playground - noun: a place where people can play

func unaFuncion(){
    
}

/*
 Si no retorna
func otraFuncion(parametro1 : String){
    print(parametro1)
}
 otraFuncion(parametro1: "Hola Gnomo")
*/

func otraFuncion(parametro1: String) -> String{
    return parametro1 + " Gnomo"
}

otraFuncion(parametro1: "Hola Mundito")


  //Para agrupar funciones de codigo que vamos a grupar

var appleTv = 149.0
let appleTVIVA = appleTv * 0.15
let appleTVPrice = appleTv + appleTVIVA

var macBook = 199.0
let macBookIVA = macBook * 0.15
let macBookPrice = macBook + macBookIVA

//crear una funcion que clacule el iva

// Funciones
func calculateTax(price : Double) -> Double {
    let taxValue = 0.16
    return price + (price * taxValue)
}
let mbpFullPrice = calculateTax(price: 1799.0)
let macMiniFullPrice = calculateTax(price: 999.0)
let appleWatchjFullPrice = calculateTax(price: 399.0)
