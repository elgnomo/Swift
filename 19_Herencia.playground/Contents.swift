// herencia
//
class Mesa{
    var material : String
    
    init(material : String){
        self.material = material
    }
    
    func forma() -> String{
        return "cuadrada"
    }
    
    func description() -> String{
        return "Es una mesa de \(material) para 5 personas"
    }
    
}

var mesa1 = Mesa(material: "madera")
mesa1.forma()
print(mesa1.description())

var mesa2 = Mesa(material: "vidrio")
mesa2.forma()
print(mesa2.description())

class MesaCircular : Mesa{
    override func forma() -> String {
        return "Circular"
    }
}

var mesa3 = MesaCircular(material: "Alambre")
mesa3.forma()
print(mesa3.description())
