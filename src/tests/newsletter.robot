*** Settings ***
Documentation       testes da página newsletter
Resource            ../resources/pages/newsletter_page.robot
Suite Setup         Close All Browsers
     

*** Test Case ***
CT-06: Cadastro com sucesso no newsletter 
    Given O Usuário Esteja na Página de Cadastro
    And Os Campos do Formulário São Preenchidos Corretamente
    When O Usuário Submete o Formulário
    Then Uma Mensagem de Usuário Cadastrado Com Sucesso Deve Ser Apresentada