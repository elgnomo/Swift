//Types
func suma(a : Int, b : Int) -> Int{
    return a + b
}

func resta(a : Int, b : Int) -> Int{
    return a - b
}

func multiplicar(a : Int, b : Int) -> Int{
    return a * b
}

func dividir(a : Int, b : Int) -> Int{
    return a / b
}

suma(a: 3 , b: 5);
resta(a: 3 , b: 5);
multiplicar(a: 3 , b: 5);
dividir(a: 3 , b: 5);

//dividir(Int, Int) -> Int

func calculadora( a : Int, b : Int, operacionMatematica: (Int, Int) -> Int) -> Int {
    return operacionMatematica(a,b)
}

var resultado = calculadora(a: 5, b: 8, operacionMatematica: suma(a:b:))
var resultado2 = calculadora(a: 5, b: 8, operacionMatematica: multiplicar(a:b:))

