# Desafio de Testes Newsletter
Testes de interface web para landing page de cadastro a newsletter.

Elaborado através do Robot Framework, uma ferramenta de código aberto, voltada para automação de testes e processos.

Utilizando a biblioteca SeleniumLibrary, para que os testes interajam com a página web.

## Requisitos

A máquina poderá ter sistema operacional Linux ou Windows.

Deverão ser instaladas as seguintes ferramentas:

- Python 3
- Pip
- RobotFramework
- Navegador Google Chrome

## Instalação

### Python 3

##### Linux:
Para instalar o Python 3, digite no terminal:

    $ sudo apt-get install python3

##### Windows:
Para instalar o Python 3, acesse o link https://www.python.org/downloads/ e faça download da versão mais recente disponível.

Na primeira tela do assistente de instalação, não esqueça de marcar a opção "Add Python to PATH".

A instalação do Pip será realizada em conjunto.

Para cofirmar a instalação, abra o CMD e digite:

    python --version

### Pip

##### Linux:
Para instalar o Pip, o gerenciador de pacotes do Pyhton, digite no terminal:
	
	$ sudo apt-get install python3-pip

##### Windows:
O Pip já terá sido instalado juntamente com o Python.

Para confirmar a instalação, digite no CMD:
    
    pip --version

### Dependências
Instale as dependências necessárias:
    
    $ pip install -r requirements.txt

## Executando os testes

O Robot Framework possui a seguinte sintaxe:

Para executar todos os testes:
    
    $ robot diretorio/de/testes

Para definir os diretório onde os relatórios dos resultados serão armazenados, utilize o -d:

    $ robot -d ./diretorio/de/resultados diretorio/de/testes

OBS: Por boa prática, recomenda-se que o nome do diretório seja "results".

Para executar uma suíte de testes específicas:

    $ robot -d ./diretorio/de/resultados diretorio/de/testes/test_name.robot

Para executar um teste específico:

    $ robot -d ./diretorio/de/resultados -t "nome do teste" diretorio/de/testes/test_name.robot
    
Para acessar o log do teste, acesse o diretório configurado como /diretorio/de/resultados
    
## Interpretação dos resultados

Além do resultado exibido no console, o Robot Framework gera arquivos de Log e Report, para que o testador tenha mais detalhes da execução.

Para dicas de interpretação desses resultados, consulte a página: https://medium.com/@mayfernandes/season-running-ep-01-log-e-report-de-execu%C3%A7%C3%A3o-do-robot-framework-4119d8b37bab

## Configuração de Credenciais

Criar um arquivo com o nome credentials.robot na raiz do projeto. Ele deve possuir a seguinte estrutura:

    *** Variables ***
    ${ADM_USUARIO}            email@dominio.com
    ${ADM_SENHA}              senha
