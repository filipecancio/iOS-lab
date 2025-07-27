import Foundation

/**
 Ver aula [Aula 06 - Funções e Closures](https://github.com/filipecancio/iOS-lab/wiki/Aula-06-‐-Funções-e-Closures)
 */
let bronzeChallenge = """
🥉 Desafio Bronze: Conversor de temperatura

Crie uma função que recebe um valor em graus Celsius e retorna sua conversão para Fahrenheit.
"""
print(bronzeChallenge)

func toFahrenheit(celsius: Double) -> String {
    let fahrenheit = (celsius * 9.0 / 5.0) + 32.0
    return String(format: "%.2f", fahrenheit)
}

let celsiusZero = 0.00
let celsiusHundred = 100.00
let message = """
A temperatura de \(celsiusZero) graus Celsius é igual a \(toFahrenheit(celsius: celsiusZero)) graus Fahrenheit.
A temperatura de \(celsiusHundred) graus Celsius é igual a \(toFahrenheit(celsius: celsiusHundred)) graus Fahrenheit.
"""
print(message)


let silverChallenge = """

 🥈  Desafio Prata: Gerenciador de Estoque de Loja Online 

Crie uma função que lida com as operações de um caixa eletrônico. A função recebe 3 valores como parâmetro: saldo (da conta), valor (da operação) e operação (depósito ou saque), e exibe uma mensagem com as informações bancárias ao fim da operação.

"""
print(silverChallenge)

enum Operation: Int {
    case Deposit
    case Withdraw
}

var bancDebt : Double = 0.0

func doTransaction(
    _ debt: inout Double, _ value: Double, _ operation: Operation
) {
    switch(operation){
    case .Deposit:
        deposit(&debt,value)
    case .Withdraw:
        withdraw(&debt, value)
    }
}

func deposit( _ current: inout Double, _ new: Double ){
    current += new
    print("Desposito de R$ \(String(format: "%.2f", new)) reais feito com sucesso! Saldo atual de R$ \(String(format: "%.2f", current))")
}

func withdraw( _ current: inout Double, _ new: Double ){
    if (new > current){
        print("Saldo Insuficiente! Valor de R$ \(String(format: "%.2f", new)) não debitado.")
    } else {
        current -= new
        print("Debito de R$ \(String(format: "%.2f", new)) reais feito com sucesso! Saldo atual de R$ \(String(format: "%.2f", current))")
    }
}

bancDebt = 10.00
for i in 0...10 {
    let currValue = Double.random(in: 10.0...100.0)
    let operation: Operation = Operation(rawValue: Int.random(in: 0...1))!
    doTransaction(&bancDebt, currValue, operation)
}


let goldChallenge = """


🥇 Desafio Ouro: Sistema escolar
Crie uma função que calcula a média das notas de um aluno e retorna "Aprovado" se a média for 
≥
7
 e "Reprovado" caso contrário.
"""

print(goldChallenge)

func getMedia( _ values : Double...) -> Double {
    var total = 0.0
    for value in values {
        total += value
    }
    
    return total/Double(values.count)
}

let units = [6.5, 7.0, 8.0]
let media = getMedia(units[0],units[1],units[2])
let status = if media < 7 {"Reprovado"} else {"Aprovado"}

print("""
    Boletim

    Nota:
    1a unidade: \(units[0])
    2a unidade: \(units[1])
    3a unidade: \(units[2])

    Média: \(String(format: "%.2f", media)) (\(status))
""")
