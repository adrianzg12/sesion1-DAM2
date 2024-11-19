import UIKit

var edades: [String: Int] = ["Yvring":30, "Ana":31]
edades ["Pedro"] = 16

if let edadAna = edades ["Ana"] {
    print ("Ana tiene \(edadAna) anios")
} else {
    print ("No se encontro")
}

let nombres = edades.map {$0.key}
print ("Nombres: \(nombres)")

let mayoresDeEdad = edades.filter {$0.value > 18 }
print ("Mayores: \(mayoresDeEdad)")

enum DivisionError: Error {
    case DivisionPorCero
}

func dividir(_ a: Int, _ b: Int) throws -> Int {
    if (b == 0) {
        throw DivisionError.DivisionPorCero
    }
    return a / b
}

do {
    let resultado = try dividir(10, 0)
}
catch DivisionError.DivisionPorCero {
    print ("Error: No se puede dividir por 0")
}

catch {
    print ("Error: Desconocido")
}

let nombreOpcional: String? = "Yvring"
if let nombre = nombreOpcional {
    print ("Hola, \(nombre)")
} else {
    print ("El nombre es nulo")
}

func saludar (nombre: String?) {
    guard let nombreNoLocal = nombre else {
        print ("el nombre es nulo")
        return
    }
    print ("Saludos, \(nombreNoLocal)")
}

saludar(nombre: "Roberto")
nombreOpcional = nil
saludar(nombre: nombreOpcional)
