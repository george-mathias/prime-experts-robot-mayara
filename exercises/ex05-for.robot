*** Settings ***
Documentation        Crie uma keyword que imprima no console
...                  5 nomes de países.

*** Variables ***
@{PAISES}            Brasil    Canadá    Inglaterra    Rússia    USA

*** Test Cases ***
Imprimir nome dos paises
    Percorrer lista

*** Keywords ***
Percorrer lista
    Log To Console    ${\n}
    FOR    ${pais}    IN    @{PAISES}
        Log To Console      ${pais}        
    END
