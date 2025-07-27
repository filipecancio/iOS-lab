/**
 Ver aula [Aula 05 - Condicionais](https://github.com/filipecancio/iOS-lab/wiki/Aula-05-‐-Swift:-Condicionais)
 */
let bronzeChallenge = """
 
 🥉  Desafio Bronze: Simulador de Previsão do Tempo 

O programa recebe a temperatura atual e informa a condição climática, sugerindo o que vestir.

* **Regras:** 
    * Menor que 10°C: "Muito frio! Vista um casaco pesado".
    * Entre 10°C e 19°C: "Clima fresco! Um moletom deve bastar".
    * Entre 20°C e 29°C: "Tempo agradável! Uma roupa leve é ideal".
    * 30°C ou mais: "Muito quente! Use roupas leves e beba bastante água".

"""
print(bronzeChallenge)

let currentWether = Double.random(in: 0.0...32.0)

let message = switch currentWether {
    case ..<10.0: "Muito frio! Vista um casaco pesado"
    case 10.0...19.0: "Clima fresco! Um moletom deve bastar"
    case 20.0...29.0: "Tempo agradável! Uma roupa leve é ideal"
    default: "Muito quente! Use roupas leves e beba bastante água"
}

print("""
    Está fazendo \(currentWether) graus! \(message)
    ----
    
    
    
    """)


let silverChallenge = """

 🥈  Desafio Prata: Gerenciador de Estoque de Loja Online 

O sistema classifica o status do estoque de um produto para facilitar a reposição.

* **Regras:** 
    * 0 unidades: "Produto fora de estoque".
    * 1 a 5 unidades: "Estoque baixo".
    * 6 a 20 unidades: "Estoque médio".
    * 21 unidades ou mais: "Estoque alto".
    * Se o estoque for baixo ou zerado, exiba um alerta recomendando a reposição.

"""
print(silverChallenge)
let currentStock = Int.random(in: 0...320)

let messageStock = switch currentStock {
    case  ..<0: "Produto fora de estoque"
    case 1...5: "Estoque baixo"
    case 6...20: "Estoque médio"
    default: "Estoque alto"
}

print("""
    Temos \(currentStock) unidades! \(messageStock)
    ----
    
    
    
    """)


let goldChallenge = """
Desafio Ouro: Gerador de NPCs para o jogo RPG

O sistema gera NPCs, classificando-os por idade e definindo uma função aleatória.

* **Regras de Idade:**
    * 1 a 12 anos: "Criança".
    * 13 a 17 anos: "Adolescente".
    * 18 a 64 anos: "Adulto".
    * 65 anos ou mais: "Idoso".
* **Funções Aleatórias:**
    * Mercador
    * Guerreiro
    * Curandeiro
    * Ladrão
* **Dica:** Use a função `Int.random(in:)` para gerar números aleatórios.
"""

print(goldChallenge)

enum Age {
    case Child
    case Teen
    case Adult
    case OldAge
    
    static func byRaw(rawValue: Int) -> Age {
        return switch(rawValue){
        case 1...12 : .Child
        case 13...17 : .Teen
        case 18...64 : .Adult
        default : .OldAge
        }
    }
}

enum Role: Int, CustomStringConvertible {
    case Mercador
    case Guerreiro
    case Curandeiro
    case Ladrao
    
    var description: String{
        switch(self){
        case .Mercador: "Mercador"
        case .Guerreiro: "Guerreiro"
        case .Curandeiro: "Curandeiro"
        case .Ladrao: "Ladrao"
        }
    }
}

for i in 1...10 {
    let ageNumber = Int.random(in: 1...20)
    let roleNumber = Int.random(in: 0...3)
    
    let personRole: Role = Role(rawValue: roleNumber)!
    let age = Age.byRaw(rawValue: ageNumber)
    
    print("""
        
        Jogador de Idade:\(age) (\(ageNumber) anos) Função \(personRole) criado!
        """)
}

