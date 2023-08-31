*** Settings ***
Resource  ${EXECDIR}/resource/main.resource

*** Keywords ***
configura ambiente
  [Documentation]  Keyword responsável por direcionar os testes para serem executados em um determinado ambiente.
  valida ambiente
  seleciona ambiente
  Log To Console  \n>>>>> Ambiente: "${ENVIRONMENT} = ${AMBIENTE}"

valida ambiente
  [Documentation]  Keyword responsável por validar existência e retornar variável com o ambiente selecionado pronto para realizar requisições.
  ${status_ambiente}  Run Keyword and Return Status  Variable Should Exist  ${ENVIRONMENT}
  IF  ${status_ambiente} == False
      Fatal Error  msg=ERRO: Os dados do ambiente não foram corretamente enviados.\n
  ELSE IF  "${ENVIRONMENT}" == "${EMPTY}"
      Fatal Error  msg=ERRO: Os dados do ambiente não foram corretamente enviados.\n
  END

seleciona ambiente
  [Documentation]  Keyword responsável por selecionar os ambientes utilizando como parametrização um dos ambientes padrões do index_ambiente
  ${AMBIENTE}  Get From Dictionary  ${AMBIENTES}  ${ENVIRONMENT}
  Set Global Variable  ${AMBIENTE}
  IF  "${ENVIRONMENT}" == "prod"
      Set Global Variable  ${AMBIENTE}  ${AMBIENTES.prod}
      Set Global Variable  ${AMBIENTE}  ${AMBIENTES.prod_contato}
  ELSE IF  "${ENVIRONMENT}" == "hml"
      Set Global Variable  ${AMBIENTE}  ${AMBIENTES.hml}
  ELSE
      Set Global Variable  ${AMBIENTE}  ${AMBIENTES.dev}
  END