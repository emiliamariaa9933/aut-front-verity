*** Settings ***
Resource  ${EXECDIR}/resource/main.resource

Suite Setup  Run Keywords
...  configura ambiente

Test Teardown  SeleniumLibrary.Close Browser