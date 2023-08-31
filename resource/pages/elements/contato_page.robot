*** Settings ***
Documentation  Dicionário de elementos referentes a tela de contato.
Resource  ${EXECDIR}/resource/main.resource

*** Variables ***
&{contato}
...  input_name=input[name="nome"]
...  input_email=input[name="email"]
...  input_telefone=input[name="phone"]
...  input_motivo_contato=textarea[id="textarea_comp-kwz6tqfr"]
...  verificacao_captcha=p[id="captchaDescription_CAPTCHA_DIALOG_ROOT_COMP"]
...  checkbox_subscrição=button[data-testid="buttonElement"]