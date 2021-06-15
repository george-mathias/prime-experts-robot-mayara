*** Settings ***
Documentation        Atividade proposta pela instrutora Mayara Fernandes
...                  02. criar uma variável do tipo lista de 5 frutas
...                  e imprima no console, uma por vez

*** Variables ***
@{FRUTAS}           maçã    laranja    banana    uva    morango

*** Test Cases ***
Imprimir os valores no console
    Imprimir1
    Imprimir2

*** Keywords ***
Imprimir1
    Log To Console    ${\n}
    Log To Console    Imprimindo individualmente cada campo
    Log To Console    ${frutas[0]}
    Log To Console    ${frutas[1]}
    Log To Console    ${frutas[2]}
    Log To Console    ${frutas[3]}
    Log To Console    ${frutas[4]}

Imprimir2
    Log To Console    ${\n}
    Log To Console    Percorrendo a lista utilizando um FOR e imprimindo cada campo
    FOR    ${fruta}    IN    @{FRUTAS}
        Log To Console       ${fruta}        
    END