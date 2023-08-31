***Settings***
Library  Browser
Library  BuiltIn
Library  Collections
Library  DateTime
Library  DebugLibrary
Library  Dialogs
Library  OperatingSystem
Library  Process
Library  SeleniumLibrary
Library  Screenshot
Library  String

# MASSA DE DADOS
Variables  ${EXECDIR}/resource/data/dados.yaml

# AMBIENTES
Resource  ${EXECDIR}/resource/environment/index_ambiente.resource

# KEYWORDS COMMON
Resource  ${EXECDIR}/resource/pages/keywords/common/helpers.robot
Resource  ${EXECDIR}/resource/pages/keywords/common/setups.robot

# KEYWORDS UTILS
Resource  ${EXECDIR}/resource/utils/hooks.robot
Resource  ${EXECDIR}/resource/utils/gherkin_ptbr.robot

# PAGE OBJECT - ELEMENTS
Resource  ${EXECDIR}/resource/pages/elements/home_page.robot
Resource  ${EXECDIR}/resource/pages/elements/contato_page.robot

# PAGE OBJECT - KEYWORDS DE TESTES
Resource  ${EXECDIR}/resource/pages/keywords/home.robot