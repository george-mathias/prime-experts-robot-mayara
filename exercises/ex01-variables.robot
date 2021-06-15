*** Settings ***
Documentation        Atividade proposta pela instrutora Mayara Fernandes
...                  01. criar uma variável do tipo dicionário que conterá dados de uma pessoa,
...                  com no mínimo 6 informações e imprima no console, uma informação por vez
Library    String

*** Variables ***
&{PESSOA}    nome=george    sobrenome=mathias    idade=41    cidade=rio de janeiro    estado=rj    curso=robotframework

*** Test Cases ***
Imprimir os valores no console
    Imprimir1
    Imprimir2

*** Keywords ***
Imprimir1
    Log To Console    ${\n}
    Log To Console    Imprimindo individualmente cada campo
    Log To Console    Nome: ${PESSOA.nome}
    Log To Console    Sobrenome: ${PESSOA.sobrenome}
    Log To Console    Idade: ${PESSOA.idade}
    Log To Console    Cidade: ${PESSOA.cidade}
    Log To Console    Estado: ${PESSOA.estado}
    Log To Console    Curso: ${PESSOA.curso}

Imprimir2
    Log To Console    ${\n}
    Log To Console    Percorrendo o dicionario utilizando um FOR e imprimindo cada campo
    FOR    ${key}    IN       @{PESSOA.keys()}
           ${valor}           Convert To Title Case       ${key}: ${PESSOA["${key}"]}
           Log To Console     ${valor}
    END