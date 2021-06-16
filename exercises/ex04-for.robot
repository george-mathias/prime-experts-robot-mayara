*** Settings ***
Documentation        Crie uma keyword que imprima no console a frase:
...                  "Estou no número: ${numero}" de 0 a 10


*** Test Cases ***
Imprimir no console
    Contador de 0 a 10
    Contador    15    25

*** Keywords ***
Contador de ${A} a ${B}
    Log To Console    ${\n}
    FOR    ${counter}    IN RANGE    ${A}    ${B}+1
        Log To Console    Estou no número: ${counter}
    END

Contador
    [Arguments]  ${A}  ${B}
    Log To Console    ${\n}
    FOR    ${counter}    IN RANGE    ${A}    ${B}+1
        Log To Console    Estou no número: ${counter}
    END