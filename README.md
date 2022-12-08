# teste-carrinho-de-compras
## Automação de um carrinho de compras de eccomerce
`versão python 3.10.7`
`versão robot 5.0.1`
`chromedriver 105.0.5195.52`

Para fazer a aplicação rodar basta clonar o repositório e rodar os comandos:

Dentro da pasta tests:

> robot -d ../results teste-cart.robot

Dependencias, caso não tenha Python, robot e chromedriver instalados:

Instalar o Python 3.x e o pip.
Instalar o Robot Framework, no terminal execute o seguinte comando:

> pip install -U robotframework robot --version

Instalar Selenium Library para o Robot Framework:

> pip install --upgrade robotframework-seleniumlibrary

Para que os testes possam ser realizados através do navegador, colocar o arquivo do chromedriver em /usr/local/bin no caso do linux, para verificar o PATH basta executar echo %PATH% no terminal do windows e echo $PATH no terminal do linux.

[ChromeDriver](https://chromedriver.chromium.org/downloads) para o google chrome (necessário baixar o arquivo com a mesma versão do navegador).

--------------------------------------------------------------------------------------------------------

## Caminho das implementações:

casos de testes
> ./teste-carrinho-de-compras/tests/*

implementações, elementos e suite
> ./teste-carrinho-de-compras/resource/*

relatórios e logs
> ./teste-carrinho-de-compras/results/*

--------------------------------------------------------------------------------------------------------
