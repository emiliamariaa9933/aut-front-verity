*** Settings ***
Resource  ${EXECDIR}/resource/main.resource

*** Keywords ***
realizo a validação dos elementos presentes na tela
  [Documentation]  Keyword responsável por validar o título presente na tela de home.
  desliza abaixo até encontrar o elemento  ${home.txt_home_somos_verity}
  Realiza Screenshot

devo visualizar os títulos relacionados à tela home
  [Documentation]  Keyword responsável por validar o título presente na tela de home.
  desliza abaixo até encontrar o elemento  ${home.txt_home_nossos_clientes}
  Wait Until Element Is Visible  ${home.txt_home_nossos_clientes}
  Realiza Screenshot

preencho os campos do formulário com dados válidos
  [Documentation]  Keyword responsável por preencher os campos do formulário com dados do arquivo YAML.
  Inserir o texto  css=input[name="nome"]  ${CAMPO.nome}
  Inserir o texto  css=input[name="email"]  ${CAMPO.email}
  Inserir o texto  css=input[name="phone"]  ${CAMPO.telefone}
  Inserir o texto  css=textarea[id="textarea_comp-kwz6tqfr"]  ${CAMPO.motivo_contato}
  Select Checkbox  css=input[data-testid="input"]
  Clicar no elemento  css=div[id="comp-kwz6tqhd"]

devo ver uma confirmação de envio ou mensagem similar
  [Documentation]  Keyword responsável por validar a mensagem após envio do formulário.
  Page Should Contain  Verificação
  Realiza Screenshot