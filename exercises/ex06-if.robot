*** Settings ***
Documentation        Crie uma keyword que imprima no console a frase
...                  "Estou no número: ${numero}" de 0 a 10, porém,
...                  somente deve imprimir se for o número 5 ou 8.

*** Test Cases ***
Imprimir se for 5 ou 8
    Contador               0    10
    Contador todos + IF    0    10


*** Keywords ***
Contador
    [Arguments]    ${A}    ${B}
    Log To Console    ${\n}
    FOR    ${counter}    IN RANGE    ${A}    ${B}+1
        IF  ${counter} in (5,8)
            Log To Console    Contador: ${counter}
        END
    END

Contador todos + IF
    [Arguments]    ${A}    ${B}
    Log To Console    ${\n}
    FOR    ${counter}    IN RANGE    ${A}    ${B}+1
        Log To Console    Estou no número: ${counter}
        IF  ${counter} == 5 or ${counter} == 8
            Log To Console    Contador: ${counter}
        END
    END