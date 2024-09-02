Algoritmo "JogoAdivinhacao"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor    : Antonio Carlos Nicolodi
// Descrição    : Jogo de adivinhação onde o jogador tenta adivinhar um número entre 1 e 10.
// Autor(a)     : Nome do(a) aluno(a)
// Data atual   : 28/08/2024

Var
    numero_sorteado, palpite, tentativas: inteiro

Inicio

    numero_sorteado :=(10) + 1

    tentativas := 4


    enquanto tentativas > 0 faca
        escreva("Digite seu palpite (entre 1 e 10): ")
        leia(palpite)


        se palpite < 1 ou palpite > 10 entao
            escreva("Entrada inválida. Tente novamente.")
        senao

            se palpite = numero_sorteado entao
                escreva("Parabéns! Você acertou o número.")
                pare
            senao
                se palpite < numero_sorteado entao
                    escreva("Tente um número maior.")
                senao
                    escreva("Tente um número menor.")
                fimse
            fimse


            tentativas := tentativas - 1
        fimse
    fimenquanto


    se tentativas = 0 entao
        escreva("Você perdeu. O número sorteado era: ", numero_sorteado)
    fimse

Fimalgoritmo