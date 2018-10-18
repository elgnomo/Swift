//: Playground - noun: a place where people can play

let diaDelaSemana = "fin de semana"
switch diaDelaSemana {
case "jueves":
    print ("hoy es jueves")
case "martes":
    print ("hoy es martes")
default:
    print("hoy es un dia valido")
}

let speed = 10

//con rangos
switch speed {
    case 0...20:
    print("Vas demasiado lento")
    case 21...60:
    print("Vas a una velocidad aceptable")
    case 61...100:
    print("Vas demasiado rápido")
default:
    print("No válido")
}


