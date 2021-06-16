*** Settings ***
Documentation        Teste de loops (FOR)

*** Variables ***
@{FRUTAS}        maça    laranja    banana    morango

*** Test Cases ***
# Teste do FOR IN RANGE (para intervalos)
#     Imprimir de 0 a 8
#     Imprimir de 10 a 20

Teste do FOR IN (para percorrer listas)
    Imprimir lista

*** Keywords ***
Imprimir de ${A} a ${B}
    FOR    ${numero}    IN RANGE  ${A}  ${B}
        Log To Console    ${\n}Estou no número: ${numero}!
        ${RESULTADO}      Evaluate    ${numero}+10
        Log To Console    número+10 = ${RESULTADO}        
    END

Imprimir lista
    Log To Console    ${\n}
    FOR    ${fruta}    IN    @{FRUTAS}
        Log To Console       A fruta da vez é: ${fruta}
    END