#language: pt

@lotofacil
Funcionalidade: Conferir jogo da loteria
    Para que eu possa conferir meu jogo
    Sendo um usuário tem o numero do seu jogo
    Posso verificar o resultado

    Contexto:

        Dado que eu estou visitando a página da lotofácil
        

   @conferir_jogo
   Esquema do Cenario: Conferindo um jogo existente
       Quando eu busco o <numero> do meu jogo na barra de busca
       E verifico se o <numero> do concurso é o do meu jogo
       Então devo ver o <resultado> da minha aposta
       E conferir o <premio> de quinze acertos

        Exemplos:
            | numero   | resultado                                        | premio                                               |
            | "2198"   | "01 04 05 07 09 11 12 13 15 17 18 20 21 22 23"   | "R$ 2.854.783,75"             |
            | "1200"   | "03 04 05 06 07 08 10 11 12 14 15 16 22 24 25"   | "R$ 967.752,48"               |
            | "1582"   | "01 02 05 07 08 10 11 14 16 17 18 19 23 24 25"   | "R$ 477.072,00"               |




    @arrecadacao
    Esquema do Cenario: Conferindo o total arrecado nas premiações
        Quando eu busco o jogo "1102"
        Então eu verifico o valor total arrecadado de cada premiação
       

    @jogo_não_encontrado
    Cenario: Login sem sucesso
        Quando eu faço procuro pelo jogo "5000"
        Então não devo ver a mensagem "Não foi encontrado nenhum concurso com esta numeração"
        

