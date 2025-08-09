let name = "Filipe"

var age = 28

print("Olá Mundo sou o \(name) e tenho \(age) anos.")

var valor1 = 20
var valor2 = 30

var resultado = valor1 + valor2

print(resultado)

let presName = "Marcelo"
let presIdade = 34
let presHobby = "jogar bola"

let apresentacao = """
Ola tudo bom?

Meu nome: \(presName)
Minha idade: \(presIdade)
Meu hobby: \(presHobby)
"""

print(apresentacao)

let MIN_AGE = 18
let TOO_YOUNG_MESSAGE = "Você é menor de idade. Não pode ainda"
let EXPECTED_AGE_MESSAGE = "Você é maior de idade. Já pode tirar a carteira"
let INVALID_AGE_MESSAGE = "Idade inválida."

var currAge = 23

if currAge >= MIN_AGE {
    print("Você é maior de idade.")
} else {
    print("Você é menor de idade.")
}

let message = currAge >= MIN_AGE ? "Você é maior de idade. Já pode tirar a carteira" : "Você é menor de idade. Não pode ainda"

print("""
\(message)

""")

currAge = 260

let newMessage = if currAge <= 0 || currAge >= 120  {INVALID_AGE_MESSAGE}
else if currAge >= MIN_AGE {EXPECTED_AGE_MESSAGE}
else {EXPECTED_AGE_MESSAGE}

print(newMessage)