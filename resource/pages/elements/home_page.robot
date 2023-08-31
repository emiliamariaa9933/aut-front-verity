*** Settings ***
Documentation  Dicionário de elementos referentes a tela home.
Resource  ${EXECDIR}/resource/main.resource

*** Variables ***
&{home}
...  txt_home_somos_verity=//h2[contains(@class, 'font_2 wixui-rich-text__text') and contains(text(), 'Somos Verity')]
...  txt_home_nossos_clientes=//*[@class="wixui-rich-text__text"][contains(text(), 'Nossos clientes')]
...  btn_menu=xpath=//*[@class="foFAdY"][contains(text(), '{menu}')]