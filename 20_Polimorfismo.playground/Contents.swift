// Polimorfismo capaciadad de ls objetos que oueden cambiar dependieno de un caso
//class RectTable{
/*
class MesaCuadrada{
    var area : Double = 0.0
    
    init (area : Double){
        self.area = area
    }
    
    func clacularArea(ancho : Double, alto : Double) -> Double{
        return ancho * alto
    }
}

class MesaTriengular{
    var area : Double = 0.0
    
    init (area : Double){
        self.area = area
    }
    
    func clacularArea(base : Double, altura : Double) -> Double{
        return (base * altura) / 2
    }
}
*/

//Dos clases que comparten la area

class MesaBasica{
    var area : Double
    
    init (area : Double){
        self.area = area
    }
    
    func calcularArea(parametro1 : Double, parametro2 : Double){
    }
}

class MesaCuadrada : MesaBasica{
    override func calcularArea(parametro1: Double, parametro2: Double){
        self.area = parametro1 * parametro2
    }
}

class MesaTriangular : MesaBasica{
    override func calcularArea(parametro1: Double, parametro2: Double){
        self.area = (parametro1 * parametro2)/2
    }
}




