*** Settings ***
Library                  SeleniumLibrary
Library                  FakerLibrary
Library                  String
Resource                 ../common_resource.robot

*** Variables ***
${NEWSLETTER_URL}             https://desafio-tester-clovis.ueek.dev/
${NOME}                       name=name
${EMAIL}                      name=email 
${WHATSAPP}                   name=whatsapp
${BOTAO_INSCREVER}            //button[@type='submit']
${RESULTADO_INSCRICAO}        //h2[contains(@class,'result-title')]


*** Keyword ***

Acessar a Newsletter
    Open Browser                        about:blank                 ${BROWSER}
    Go To                               ${NEWSLETTER_URL} 
    Maximize Browser Window
    Set Selenium Implicit Wait          ${SELENIUM_TIMEOUT}

O Usuário Esteja na Página de Cadastro
    Acessar a Newsletter

Gerar Dados de Formulário Aleatórios
    ${NOME_TESTE} =                     FakerLibrary.Name
    ${EMAIL_TESTE} =                    FakerLibrary.Email
    ${WHATSAPP_TESTE} =                 FakerLibrary.Random Number
    ...                                 digits=11      fix_len=True
    Set Test Variable                   ${NOME_TESTE}
    Set Test Variable                   ${EMAIL_TESTE}
    Set Test Variable                   ${WHATSAPP_TESTE}

Os Campos do Formulário São Preenchidos Corretamente
    Gerar Dados de Formulário Aleatórios
    Input Text                          ${NOME}                     ${NOME_TESTE}
    Input Text                          ${EMAIL}                    ${EMAIL_TESTE}
    Input Text                          ${WHATSAPP}                 ${WHATSAPP_TESTE}

O Usuário Submete o Formulário
    Click Element                       ${BOTAO_INSCREVER}

Uma Mensagem de Usuário Cadastrado Com Sucesso Deve Ser Apresentada
    Wait Until Page Contains            Sucesso!                    timeout=10s

Usuário Válido É Cadastrado Na Newsletter
    Acessar a Newsletter
    Os Campos do Formulário São Preenchidos Corretamente
    O Usuário Submete o Formulário
    Sleep                               1s
    Close Window