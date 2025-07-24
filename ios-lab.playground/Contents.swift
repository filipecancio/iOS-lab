/**
 Ver aula Aula 04 - [Loops](https://github.com/filipecancio/iOS-lab/wiki/Aula-04-%E2%80%90-Loops)
 */
let bronzeChallenge = """
 
 🥉 Desafio Bronze: Contador de passos
Crie um programa que conte quantos passos uma pessoa deu em um dia. O programa começará com 0 passos, contando até atingir 10.000 passos.

Dica: Utilize a função `Int.random(in:)`.

"""
print(bronzeChallenge)

var currentSteps = 0

while currentSteps < 10000 {
    currentSteps += Int.random(in: 1...798)
    let message = switch currentSteps {
    case 0..<2000: "Você andou \(currentSteps) passos."
    case 2001..<5000: "Você está chegando na média! Já andou \(currentSteps) passos!"
    case 5001..<9000: "Você está acima da média! Já andou \(currentSteps) passos!"
    case 9001..<9999: "Você está chegando no objetivo diário! Já andou \(currentSteps) passos!"
    default: "Wow! Você superou o limite diário!"
    }
    print(message)
}

print("Parabéns, hoje você andou \(currentSteps) passos!")

let silverChallenge = """

 🥈 Desafio Prata: Validação de senhas
Crie um sistema que peça para o usuário inserir uma senha. O sistema só aceitará a senha correta: "SwiftRocks".

"""
print(silverChallenge)

let brutalForcepass = [
    "lalala",
    "1234",
    "0000",
    "SwiftRocks"
]

let rightPass = "SwiftRocks"

for pass in brutalForcepass {
    print("Por favor insira a senha:")
    print("Senha: \(pass)")
    if pass == rightPass { break }
    print("""
        
        Senha incorreta. Tente novamente!
        -----
        
        """)
}

print("""
    
    Login efetuado com sucesso!
    -----
    
    """)


let goldChallenge = """
 🥇 Desafio Ouro: FizzBuzz
Crie um programa que exiba os números de 1 a 50 com as seguintes regras:

Se o número for múltiplo de 3, exiba "Fizz".
Se o número for múltiplo de 5, exiba "Buzz".
Se for múltiplo de 3 e 5, exiba "FizzBuzz".
"""

print(goldChallenge)

for num in 1...50 {
    let message = switch(num){
    case num where num % 3 == 0 && num % 5 == 0  :
        " - FizzBuzz"
    case num where num % 3 == 0  :
        " - Fizz"
    case num where num % 5 == 0  :
        " - Buzz"
    default:
        ""
    }
    
    print("numero: \(num) \(message)")
    
}
