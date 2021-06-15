*** Settings ***
Documentation        Teste para criar KWs que recebem argumentos
...                  e retornam um resultado

*** Test Cases ***
Teste de somar dois numeros
    ${RESULTADO_SOMA}    Somar dois numeros    1    2
    Log To Console       O resultado da soma é: ${RESULTADO_SOMA}

    ${RESULTADO_SOMA}    Somar dois numeros    3    4
    Log To Console       O resultado da soma é: ${RESULTADO_SOMA}

Teste de somar dois numeros embutidos
    ${RESULTADO_SOMA}    Somar os numeros "3" e "6"
    Log To Console       O resultado da soma embutida é: ${RESULTADO_SOMA}

    ${RESULTADO_SOMA}    Somar os numeros "55" e "45"
    Log To Console       O resultado da soma embutida é: ${RESULTADO_SOMA}

*** Keywords ***
Somar dois numeros
    [Arguments]     ${n1}    ${n2}
    Log To Console  ${\n}Estou somando: ${n1} + ${n2}
    ${RESULTADO}    Evaluate    ${n1}+${n2}
    [Return]        ${RESULTADO}

Somar os numeros "${n1}" e "${n2}"
    Log To Console    ${\n}Estou somando os números embutidos: ${n1} + ${n2}
    ${RESULTADO}      Evaluate    ${n1} + ${n2}
    [Return]          ${RESULTADO}