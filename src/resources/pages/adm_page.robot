

*** Settings ***
Library                  SeleniumLibrary
Library                  FakerLibrary
Library                  String
Resource                 ../common_resource.robot


*** Variables ***
${MENU_USUARIOS_REGISTRADOS}                //a[contains(@href, 'lista-usuarios')]
${BOTAO_EXPORTAR}                           //button[contains(@class,"btn-export")]
${SELECAO_QUANT_MOSTRAR}                    name=dataTable_length
${OPCAO_QUANT_MOSTRAR}                      //select[@name='dataTable_length']/option[@value='$QUANT']
${EXCLUIR_USUARIO}                          //td[text()='$USUARIO']//following::button[1]


*** Keyword ***

O Administrador Acessa o Menu de Usuários Registrados
    Sleep                                1s
    Click Element                        ${MENU_USUARIOS_REGISTRADOS}

Clicar no Botão Excluir Usuário
    ${EXCLUIR_USUARIO} =                 Replace String          ${EXCLUIR_USUARIO}    
    ...                                  $USUARIO                ${EMAIL_TESTE}
    Set Test Variable                    ${EXCLUIR_USUARIO}
    Click Element                        ${EXCLUIR_USUARIO}

 O Usuário Referente ao Botão de Excluir Usuário Deve Ser Deletado
    Sleep                                 2s
    Page Should Not Contain               ${NOME_TESTE}
    Page Should Not Contain               ${EMAIL_TESTE}
    Page Should Not Contain               ${WHATSAPP_TESTE}