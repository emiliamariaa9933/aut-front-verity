## #####################################################################
## 																	  ##
#                        Automação de Testes WEB - ROBOTFRAMEWORK
# 🍒 Sumário

> 1. [Objetivo](#topico1)
> 2. [Pré requisitos](#topico2)
> 3. [Instalação](#topico3)
>       1. [Instalação do Python](#topico31)
>       2. [Instalação do Robot Framework](#topico32)
>       3. [Instalação DO VirtualVenv](#topico33)
>       4. [Criação do ambiente virtual](#topico34)
>       5. [Instalação das dependências do projeto](#topico35)
> 4. [Execuções](#topico4)
>       1. [Execução na pipeline](#topico41)
>       2. [Execução local (Windows)](#topico42)
> 5. [Bibliotecas](#topico5)
> 6. [Documentação do projeto](#topico6)

<a id="topico1"></a>
# 🎯 1. Objetivo

```
Validar de forma automática o funcionamento e a qualidade do sistema utilizando Robot Framework.
```
<a id="topico2"></a>
# 📋 2. Pré-requisitos

- [Python](https://www.python.org/) - 3.8+
- [Robot Framework](https://robotframework.org/) - 4.1+

<a id="topico3"></a>
# 💻 3. Instalação

## Windows
<a id="topico31"></a>
> - 1. Instalação do Python
>
> [Python](https://www.python.org/downloads/)
>
> Abrir um terminal no windows e executar o seguinte comando para validar a instalação:
> ```
> pip --version
> ```
<a id="topico32"></a>
> - 2. Instalação do Robot Framework 
>
> Execute o seguinte comando:
> ```
> pip install robotframework
> ```
<a id="topico33"></a>
> - 3. Instalação do VirtualEnv
> 
> Execute o seguinte comando:
> ```
> pip install virtualenv
> ```
> obs: virtualenv é o ambiente onde serão instaladas todas as dependências do projeto.
<a id="topico34"></a>
> - 4. Criação do ambiente virtual
> 
>  na pasta raiz do projeto, execute o seguinte comando:
> ```
> virtualenv venv
> ```
> obs: venv: nome da pasta onde serão armazenadas todas as dependências instaladas do projeto.
> - Inicialização do ambiente virtual
> ```
> venv\Scripts\activate
> ```
> - Saindo do ambiente virtual
> ```
> venv\Scripts\deactivate
> ```
<a id="topico35"></a>
> - 5. Instalação das dependências do projeto
> 
> Com o terminal aberto na pasta raiz do projeto, execute o seguinte comando:
> ```
> pip install -r requirements.txt
> ```
> obs: requiriments.txt é o arquivo dentro do projeto que contém todas as bibliotecas necessárias para a automação

<a id="topico4"></a>
# 🚀 4. Execuções

## 1. Execução na Pipeline

<a id="topico41"></a>
> 
> 1. Entrar na pagina da pipeline [aut-front-verity](https://github.com/emiliamariaa9933/aut-front-verity/actions/workflows/ci.yaml)
> 2. Clicar no botão no canto superior direito 'Run Workflow'
> 3. Escolher a branch 'main'
> 4. Escolher Ambiente dos Testes 'prod'
> 5. Clicar no botão azul 'Run workflow'

obs: Quando aparecer o job 'Automated Regressive Tests', clique nele para acompanhar a execução dos testes em tempo real. Após a execução do teste é possivel fazer o download dos artefatos localizados no final da página ao clicar em 'Summary'.

## 2. Execução Local
<a id="topico42"></a>
- Windows
> 1. Entrar na pagina do repositório [aut-front-verity](https://github.com/emiliamariaa9933/aut-front-verity)
> 2. Clicar no botão 'Code' e copiar o endereço HTTPS fornecido pelo github
> 3. Abrir algum terminal no windows na pasta em que deseja que fique o repositório na sua maquina e digitar o seguinte comando:
> ```
> git clone https://github.com/emiliamariaa9933/aut-front-verity.git
> ```
> obs: Se for a primeira vez clonando repositório , vai ser necessário fornecer suas credenciais usadas para logar no github.
> 
> 4. Abrir o terminal na pasta criada apos clonar o projeto e executar o seguinte comando:
> ```
> robot -L trace -v ENVIRONMENT:prod tests
> ```

<a id="topico5"></a>
## 📚 5. Bibliotecas
1. [String Library](https://robotframework.org/robotframework/latest/libraries/String.html)
2. [Collections Library](https://robotframework.org/robotframework/latest/libraries/Collections.html#Get%20Index%20From%20List)
3. [Operating System Library](https://robotframework.org/robotframework/latest/libraries/OperatingSystem.html)
4. [BuiltIn Library](https://robotframework.org/robotframework/latest/libraries/BuiltIn.html)
5. [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html/)
6. [Browser](https://marketsquare.github.io/robotframework-browser/Browser.html)
7. [Process](https://robotframework.org/robotframework/latest/libraries/Process.html)
8. [DateTime](https://robotframework.org/robotframework/latest/libraries/DateTime.html)
9. [Dialogs](https://robotframework.org/robotframework/latest/libraries/Dialogs.html)

<a id="topico6"></a>
## 🔒 6. Documentação do projeto
>
> N/A