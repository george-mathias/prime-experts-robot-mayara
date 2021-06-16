*** Settings ***
Documentation        Teste para IFs - tomada de decisões

*** Variables ***
@{PAISES}    Argentina    Chile    Brasil    Uruguai    Brasil    Chile    Brasil

*** Test Cases ***
Teste de IFs
    Imprimir apenas pais Brasil

*** Keywords ***
Imprimir apenas pais Brasil
    Log To Console    ${\n}
    FOR    ${pais}    IN    @{PAISES}
        IF    '${pais}' == 'Brasil'
            Log To Console    Opa!! Deu Brasil
        ELSE
            Log To Console    Ahhhh! ${pais} não é Brasil!
        END
    END