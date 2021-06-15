*** Settings ***
Documentation        Primeira iteração com o robotframework
...                  Trabalhando com impressão no console e no log do robot
...                  Trabalhando com Test Cases e Keywords
...                  Trabalhando com tipos variáveis simples, lista e dicionário
...                  Trabalhando com variáveis globais, de escopo, de suíte

# variaveis globais
*** Variables ***
${MENSAGEM}    Hello World!! Hello Console!! Hello Prime Experts!!!
${NUMERO}      ${10}
${BOOLEAN}     true
${BOOLEAN}     false

# dicionarios
&{PESSOA}         nome=George    sobrenome=Mathias    idade=41

# listas
@{FRUTAS}         laranja    banana    maçã    uva    morango

*** Test Cases ***
Meu teste de impressão de mensagem no terminal
    Logar no meu terminal uma mensagem

Meu teste imprimindo um dicionário de PESSOA
    Logar no meu terminal uma PESSOA

Meu teste imprimindo uma lista de FRUTAS
    Logar no meu terminal uma LISTA DE FRUTAS

*** Keywords ***
Logar no meu terminal uma mensagem
    Log To Console    ${\n}
    Log To Console    ${MENSAGEM}

Logar no meu terminal uma PESSOA
    Log To Console    ${\n}
    Log To Console    ${PESSOA}
    Log To Console    ${\n}    
    Log To Console    Nome: ${PESSOA.nome} ${PESSOA.sobrenome} Idade: ${PESSOA.idade} anos!        

Logar no meu terminal uma LISTA DE FRUTAS
    ## Declaro localmente uma nova variável
    ${outra_fruta}     Set Variable    abacaxi
    ## Declaro uma nova variável em escopo do teste
    Set Test Variable  ${nova_fruta}   morango
    Log To Console     ${\n}
    Log To Console     ${FRUTAS}
    Log Many           ${FRUTAS}
    Log To Console     ${nova_fruta}-${outra_fruta}