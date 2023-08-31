*** Settings ***
Resource  ${EXECDIR}/resource/main.resource

*** Test Cases ***
TC0001: Validar informações da home
  [Documentation]  Teste responsável por validar informações presentes na tela home do sistema
  [Tags]  TC0001
  Dado que acesso a tela inicial da tela "PRINCIPAL"
  Quando realizo a validação dos elementos presentes na tela
  Então devo visualizar os títulos relacionados à tela home

TC0002: Preencher e enviar formulário de contato
  [Documentation]  Teste que verifica o preenchimento e envio do formulário de contato
  [Tags]  TC0002
  Dado que acesso a tela inicial da tela "CONTATO"
  Quando preencho os campos do formulário com dados válidos
  Então devo ver uma confirmação de envio ou mensagem similar