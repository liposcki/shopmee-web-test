*** Settings ***
Library                  SeleniumLibrary
Library                  FakerLibrary
Library                  String
Resource                 ../common_resource.robot
Resource                 ../../../credentials.robot

*** Variables ***
${ADM_URL}                    https://desafio-tester-clovis.ueek.dev/content-adm
${PAGINA_LOGIN}               id=login-page
${EMAIL}                      name=email 
${SENHA}                      name=password
${ENTRAR}                     //input[@type="submit"]


*** Keyword ***

Acessar o Ambiente de Gerenciamento
    Open Browser                        about:blank       ${BROWSER}
    Go To                               ${ADM_URL} 
    Maximize Browser Window
    Set Browser Implicit Wait          ${SELENIUM_TIMEOUT}
    Page Should Contain Element         ${PAGINA_LOGIN}

Entrar Com as Credenciais
    Input Text                          ${EMAIL}              ${ADM_USUARIO}
    Input Password                      ${SENHA}              ${ADM_SENHA}
    Click Element                       ${ENTRAR}

O Administrador Esteja Logado na Página de Gerenciamento dos Dados
    Acessar o Ambiente de Gerenciamento
    Entrar Com as Credenciais