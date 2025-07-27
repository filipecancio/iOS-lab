import Foundation

/**
 Ver aula [Aula 06 - Funções e Closures](https://github.com/filipecancio/iOS-lab/wiki/Aula-06-‐-Funções-e-Closures)
 */
let bronzeChallenge = """
🥉 Desafio Bronze: Contador de pares

Crie uma closure que recebe um array de números e retorna apenas os números pares. 
"""
print(bronzeChallenge)

let toPair = {(arr: [Int]) -> [Int] in
    var newArr = [] as [Int]
    for num in arr {
        if num.isMultiple(of: 2) {
            newArr.append(num)
        }
    }
    return newArr
}

let testArray1: [Int] = [1, 2, 3, 4, 5]

let result1 = toPair(testArray1)

print("Exemplo 1: \(testArray1) So pares: \(result1)")


let silverChallenge = """

 🥈 Desafio Prata: Processador de texto

 Crie uma função `processarTexto(texto: String, operacao: (String) -> String)` que recebe uma string e uma closure que pode modificar o texto, por exemplo, para maiúsculas. 

 * **Dica:** Utilize a função `.uppercased()`. 

"""
print(silverChallenge)

let processarTexto = {(texto: String, operacao: (String) -> String) in
    return """
    texto: \(texto) 
    resultado da operação: \(operacao(texto))
    """
}

let message = processarTexto("exemplo"){ $0.uppercased()}
print(message)

let goldChallenge = """


🥇 Desafio Ouro: Filtrar valores

Crie uma função `filtrarValores(valores: [Int], condicao: (Int) -> Bool)` que recebe um array de números e uma closure que define a condição para quais valores devem ser mantidos no array. 

* **Dica:** Utilize a função `.filter()`. 
"""

print(goldChallenge)

let filtrarValores = {(valores: [Int], condicao: (Int) -> Bool) in
    return valores.filter(condicao)
}

let numbers: [Int] = [1, 2, 3, 4, 5]
let evenNumbers = filtrarValores(numbers) { $0.isMultiple(of: 2) }

print("""
    Exemplo 1: \(numbers) 
    Números pares: \(evenNumbers)
""")
