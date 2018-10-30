// Manejo de Errores
//enum DivisionError : Error {
//    case DivisionConCero
//}
//
//func dividir(a : Int, b : Int) throws -> Int{
//    if b == 0{
//        throw DivisionError.DivisionConCero
//    }
//    return a / b
//}
//
//
//do {
//    //let resultado = try dividir(a: 9, b: 0)
//    try dividir(a: 9, b: 0)
//}catch(DivisionError.DivisionConCero){
//    print("no se puede dividir entre 0")
//}
//dividir(a: 5, b: 0)

enum DivisionError : Error{
    case DivisionConCero
    case DivisionNulo
    
    
}


func dividir(a: Int?, b:Int?)throws -> Int{
    if b == 0 {
        throw DivisionError.DivisionConCero
    }
    if b == nil || a == nil  {
        throw DivisionError.DivisionNulo
    }
    return a! / b!
}



do {
    _ = try dividir(a: 8, b: 0)
} catch(DivisionError.DivisionConCero) {
    print("No se puede dividir entre 0")
}

do {
    _ = try dividir(a: 12, b: nil)
    
} catch(DivisionError.DivisionNulo) {
    print("digite un número")
}

do {
    _ = try dividir(a: nil, b: nil)
    
} catch(DivisionError.DivisionNulo) {
    print("digite un número")
}
