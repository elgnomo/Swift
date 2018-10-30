//Es un templeate partiendo de un mismo punto
//Clases

//class nombreClase{}

class Mesa{
    var material : String
    var forma : String
    //como se van a inicializar
    init(material: String, forma : String){
        self.material = material
        self.forma = forma
    }
    func formaMesa() -> String{
        return "Cuadrada"
    }
    func descripcion() -> String{
        return "es una mesa de \(material) para 5 personas de forma \(forma)"
    }
}

var mesa1 = Mesa(material: "Madera", forma: "Cuadrada")
mesa1.formaMesa()
print(mesa1.descripcion())


var mesa2 = Mesa(material: "vidrio", forma: "circular")
mesa2.formaMesa()
print(mesa2.descripcion())



