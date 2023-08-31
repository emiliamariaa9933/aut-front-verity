*** Settings ***
Resource  ${EXECDIR}/resource/main.resource

*** Keywords ***
### SESSION CONFIGS ###
acesso a tela inicial da tela "${pagina}"
  [Documentation]  Keyword responsável por inicializar o navegador e acessar a página inicial do site Verity. 
  ...              É necessário manter a opção --headless descomentada para conseguir rodar os testes na pipeline.
  Acessar URL Conforme Parâmetro  ${pagina}
  ${options}  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys
  Call Method  ${options}  add_argument  start-maximized
  Call Method  ${options}  add_argument  disable-web-security
  Call Method  ${options}  add_argument  disable-notifications
  Call Method  ${options}  add_argument  --disable-extensions
  Call Method  ${options}  add_argument  --headless
  Call Method  ${options}  add_argument  --disable-gpu
  Create WebDriver  Chrome  options=${options}
  Set Window Size  ${1920}  ${1080}
  SeleniumLibrary.Go To  url=${pagina}
  Realiza Screenshot

Acessar URL Conforme Parâmetro
  [Documentation]  Keyword responsável por verificar menu horizontal passado no teste e designar a url da página correspondente.
  ...              (Adaptação para interagir com o webdriver na pipeline e não dar conflito por não conseguir interagir com o elemento na tela)
  [Arguments]  ${pagina}
  IF  "${pagina}" == "PRINCIPAL"
      Set Test Variable  ${pagina}  ${AMBIENTES.prod}
  ELSE IF  "${pagina}"== "CONTATO"
      Set Test Variable  ${pagina}  ${AMBIENTES.prod_contato}
  END