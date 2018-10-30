func traductor(saludo: String) -> (String) -> String{
    return {
        (nombre: String) -> String in
        return saludo + " " + nombre
    }
}

var saludoIngles = traductor(saludo: "Hello")
var saludoAleman = traductor(saludo: "Guten tag")

saludoIngles("Jhon")
saludoAleman("Hittler")

//Sirve para animaciones
