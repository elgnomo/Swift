//Protocol Type es un protocolo que puede ser usado como un tipo de dato

protocol TipoDeEstabilizador{
    var estabilizador : String {get set}//lectura y escritura
}

class CamaraIPhone : TipoDeEstabilizador{
    var estabilizador: String = "Digital"
}

class CamaraIPhonePlus : TipoDeEstabilizador{
    var estabilizador: String = "Fisico"
}
class FanBoy{
    var nombre : String
    var celularConEstabilizador : TipoDeEstabilizador
    
    init(nombre : String, celularConEstabilizador : TipoDeEstabilizador){
        self.nombre = nombre
        self.celularConEstabilizador = celularConEstabilizador
    }
    
    func especificacionesDeCamara() -> String{
        return "tiene un estabilizador \(celularConEstabilizador.estabilizador)"
    }
}

// ahora creamos un iPhone
var iPhone = CamaraIPhonePlus()

var fanboy = FanBoy(nombre: "pablo", celularConEstabilizador: iPhone)
print(fanboy.especificacionesDeCamara())

