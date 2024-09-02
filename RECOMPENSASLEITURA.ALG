Algoritmo "RecompensasLeitura"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor    : Antonio Carlos Nicolodi
// Descrição    : Calcula os pontos de leitura e o número de cupons de desconto.
// Autor(a)     : Nome do(a) aluno(a)
// Data atual   : 28/08/2024

Var
    horas_leitura, pontos, bonus, total_pontos, cupons: inteiro
    valor_cupons: real

Inicio

    escreva("Digite o total de horas de leitura no mês: ")
    leia(horas_leitura)


    se horas_leitura <= 5 entao
        pontos := horas_leitura * 3
    senao
        se horas_leitura <= 15 entao
            pontos := (5 * 3) + ((horas_leitura - 5) * 7)
        senao
            pontos := (5 * 3) + (10 * 7) + ((horas_leitura - 15) * 12)
        fimse
    fimse


    se pontos > 50 entao
        bonus := pontos * 0.10
    senao
        bonus := 0
    fimse

    total_pontos := pontos + bonus

    cupons := total_pontos div 10
    valor_cupons := cupons * 2.00

    escreva("Total de pontos ganhos: ", total_pontos)
    escreva("Número de cupons obtidos: ", cupons)
    escreva("Valor total em cupons: R$ ", valor_cupons:2)

Fimalgoritmo