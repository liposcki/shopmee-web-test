*** Settings ***
Resource            ../resources/pages/adm_page.robot
Resource            ../resources/pages/adm_login_page.robot
Resource            ../resources/pages/newsletter_page.robot
Suite Setup         Close All Browsers


*** Test Case ***
CT-24: Verificação de registro de usuário válido no ambiente de gerenciamento
    Given Usuário Válido É Cadastrado Na Newsletter
    And O Administrador Esteja Logado na Página de Gerenciamento dos Dados
    And O Administrador Acessa o Menu de Usuários Registrados
    When Clicar no Botão Excluir Usuário
    Then O Usuário Referente ao Botão de Excluir Usuário Deve Ser Deletado