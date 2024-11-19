import UIKit

let suma: (Int, Int) -> Int = {a, b in
    print("Primer numero: \(a)")
    print("Segundo numero: \(b)")
    return a + b
}

let resultado = suma(2,4)
print ("Resultado: \(resultado)")

func ejecutarOperacion(
    a: Int,
    b: Int,
    operacion: (Int, Int) -> Int
)-> Int {
    let resultado = operacion(a, b)
    return resultado
}

var resultadoSuma = ejecutarOperacion(a: 2, b: 3) {
    (x, y) in
    return x + y
}
print ("Resultado suma: \(resultadoSuma)")

var resultadoResta = ejecutarOperacion(a: 2, b: 3) {
    (x, y) in
    return x - y
}

print ("Resultado Resta: \(resultadoResta)")

var resultadoAnonimo
= ejecutarOperacion(a: 4, b: 5, operacion: suma)
print ("Resultado Anonimo: \(resultadoAnonimo)")

