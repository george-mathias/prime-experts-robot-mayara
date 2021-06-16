![](https://www.primecontrol.com.br/wp-content/uploads/2021/01/novalogo-primecontrol-website.png)

Repositório para os códigos do robotframework gerados durante a Prime Experts ministrado pela Mayara Fernandes.


# Dependências
- [Python](https://www.python.org/downloads/)
- [Visual Studio Code](https://code.visualstudio.com/download)
- [Git](https://git-scm.com/downloads)
- [RobotFramework](https://github.com/robotframework/robotframework)
- [Selenium Library](https://github.com/robotframework/SeleniumLibrary/)

# Atalhos Robot
-d "folder"
    ex.: robot -d .\logs "filename.robot"

-t "case test name" "filename": roda apenas o teste indicado no parâmetro
    ex.: robot -d .\logs -t "case test name" "filename.robot"

# Como funcionam variáveis
- Variáveis declaradas na seção *** Variables *** tem o escopo GLOBAL!    
- Set Test Variable:   faz com que todas as KWs do teste enxerguem a variável!
    ex.: "${NOME_VARIAVEL}"  Set Variable  "valor da variavel"

- Set Suite Variable:  faz com que todas os testes da suíte enxerguem a variável!
    ex.: Set Suite Variable  "${NOME_VARIAVEL}"  "valor da variavel"

- Set Global Variable: faz com que todas suítes da execução enxerguem a variável!
    ex.: ex.: Set Global Variable  "${NOME_VARIAVEL}"  "valor da variavel"
