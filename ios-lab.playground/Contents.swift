/**
 > Ver aula [Aula 02 - Conceitos básicos](https://github.com/filipecancio/iOS-lab/wiki/Aula-2---Conceitos-básicos)
 */

let bronzeChallenge = """
 🥉 Desafio Bronze: Apresentação pessoal
 Crie variáveis para armazenar nome, idade e cidade, então exiba uma mensagem de apresentação, utilizando as variáveis criadas.

"""
print(bronzeChallenge)

var name: String = "Manuel"
var age: Int = 30
var city: String = "São Paulo"

print("Olá, meu nome é \(name), tenho \(age) anos e moro em \(city).")

let silverChallenge = """
------

  🥈 Desafio Prata: Contador de economia
  Crie um programa que simula uma economia mensal ao longo de 3 meses.  Adicione o valor inicial da economia.  Defina 3 valores fixos da economia para cada um dos próximos meses.  Exiba o valor total economizado ao final do período.

"""
print(silverChallenge)

var initialSavings: Double = 1000.0

let month1: Double = 200.0
let month2: Double = 150.0
let month3: Double = 250.0

var totalSavings: Double = initialSavings + month1 + month2 + month3
print("Total economizado após 3 meses: R$ \(totalSavings)")


let goldChallenge = """
------

  🥇 Desafio Ouro: Conversor de moedas
  Crie um programa que converte um valor em reais para dólares e euros, considerando taxas de câmbio fixas.  Insira o valor a ser convertido.  Defina as taxas de cambio.  Calcule os valores convertidos e exiba o resultado.

"""
print(goldChallenge)

let exchangeRateUSD: Double = 5.25
let exchangeRateEUR: Double = 6.00

var amountInBRL: Double = 1000.0

let amountInUSD: Double = amountInBRL / exchangeRateUSD
let amountInEUR: Double = amountInBRL / exchangeRateEUR

let resultMessage = "R$ \(amountInBRL) equivalem a US$ \(amountInUSD) e € \(amountInEUR)."

print(resultMessage)
