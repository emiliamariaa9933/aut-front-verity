*** Settings ***
Documentation  Keywords auxiliares de testes.
Resource  ${EXECDIR}/resource/main.resource

*** Keywords ***
Define o diretório para as evidências
    [Documentation]  Extrai a tag do test, cria o diretório com
    ...              o nome da tag e então define esse diretório para salvar os Screenshots.
    FOR  ${tag}  IN  @{TEST TAGS}
        ${isTC}  Run Keyword And Return Status  Should Contain  ${tag}  TC
        IF  ${isTC} == True
            ${TEST_ID}  Set Variable  ${tag}
            Exit For Loop
        END
    END
    ${EVIDENCIA_PATH}  Set Variable  ${EXECDIR}\\Result\\screenshots\\${TEST_ID}
    Create Directory  ${EVIDENCIA_PATH}
    Set Suite Variable  ${EVIDENCIA_PATH}

Realiza Screenshot
    [Documentation]  Captura a tela da página em ".png", renomeia com a data e hora em que foi feita a Captura
    ...              e salva no diretório com nome do teste.
    [Arguments]  ${locator}=None  ${timeout}=10
    Define o diretório para as evidências
    Run Keyword If  "${locator}" != "None"  Wait Until Page Contains Element  ${locator}  timeout=${timeout}  error="Elemento não encontrado!"
    ${SCREENSHOT_NAME}  Get Current Date  result_format=%d%m%y
    Capture Page Screenshot  ${EVIDENCIA_PATH}\\${SCREENSHOT_NAME}.png

Clicar no elemento
    [Documentation]  Keyword responsável por aguardar o elemento estar visível e clicá-lo em seguida.
    [Arguments]  ${elemento}  ${timeout}=10
    Wait Until Page Contains Element  ${elemento}  ${timeout}
    Click element  ${elemento}
    Realiza Screenshot

Inserir o texto
    [Documentation]  Keyword responsável por inserir o texto desejado no elemento selecionado.
    [Arguments]  ${elemento}  ${texto}
    Wait Until Element is Visible  ${elemento}
    Input Text  ${elemento}  ${texto}
    Realiza Screenshot

desliza abaixo até encontrar o elemento
    [Documentation]  Desliza a tela até o elemento passado via argumento.
    [Arguments]  ${element}  ${vezes}=10
    FOR  ${index}  IN RANGE  ${vezes}
        ${elemento_esta_visivel}  Run Keyword And Return Status  Wait Until Element Is Visible  ${element}  timeout=5
        IF  ${elemento_esta_visivel} == ${True}
            Exit For Loop
        ELSE
            Scroll Element Into View  ${element}
        END
    END
    Realiza Screenshot