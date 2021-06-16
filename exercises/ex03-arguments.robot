*** Settings ***
Documentation        Crie uma keyword que cria um e-mail formado por nome_sobrenome_idade@robot.com, 
...                  onde o nome, o sobrenome e a idade são recebidos via passagem de argumentos e, ao final, 
...                  a keyword deve retornar esse e-mail formatado. Imprima o e-mail retornado no console.

*** Variables ***
${NOME}        george
${SOBRENOME}   mathias
${IDADE}       ${41}
&{PESSOA}      nome=george    sobrenome=mathias    idade=41

*** Test Cases ***
Criar email com argumentos passando argumentos
    ${email}         Concatenador1    ${PESSOA.nome}   ${PESSOA.sobrenome}    ${PESSOA.idade}
    Imprimir email   ${\n}Concatenador1: ${email}

Criar email com argumentos 
    ${email}         Concatenador2 "${NOME}" "${SOBRENOME}" "${IDADE}"
    Imprimir email   ${\n}Concatenador2: ${email}


*** Keywords ***
Concatenador1
    [Arguments]        ${nome}    ${sobrenome}    ${idade}
    [Return]           ${\n}email: ${nome}_${sobrenome}_${idade}@robot.com

Concatenador2 "${nome}" "${sobrenome}" "${idade}"
    [Return]           ${\n}email: ${nome}_${sobrenome}_${idade}@robot.com

Imprimir email
    [Arguments]    ${email}
    Log To Console    ${email}