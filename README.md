# Introdução.

Bem vindo ao projeto de automação web do site da Lotofacil.

Ele foi todo criado utilizando Cucumber, Capybara,  Rspec, Ruby, SitePrism e Selenium WebDriver.

Total de cenários: 5

Entre algumas de suas funcionalidades, estão:
- busca de jogo;
- verificação de resultados;
- devolução do resultado total arrecado pelos jogos de 15, 14, 13, 12 e onde pontos.
- gerador de relatório em HTML (salvo na pasta /log)

Obs: É aconselhavel usar o saida via html para ter melhor leitura da soma dos resultados


## Necessário instalar:
    • Ruby for Windows/Linux: linguagem de programação utilizada nos testes. 
    • Cmder for Windows: Sistema que trás as funcionalidades bash (Terminal) para o Windows. 
    • DevKit: Kit de ferramentas que o sistema operacional precisa para que o desenvolvimento funcione. 
    • Chromedriver: Driver do navegador que será utilizado na automação. Disponível no site do https://sites.google.com/a/chromium.org/chromedriver/downloads. 
    • GeckoDriver: Driver do navegador Firefox. Disponível no site https://github.com/mozilla/geckodriver/releases . 
    • IEdriver: Driver do navegador Internet Explorer. Disponível no site http://selenium-release.storage.googleapis.com/3.4/IEDriverServer_Win32_3.4.0.zip versão 32bits ou http://selenium-release.storage.googleapis.com/3.4/IEDriverServer_x64_3.4.0.zip versão 64bits. 

## Configurando o ambiente de automação de testes Web

Para que sua automação possa ser realizada é necessário instalar alguns recursos, conforme será descrito abaixo:

## Linux

## 1- Instalação Ruby 

Use os comandos abaixo no terminal:
```bash
$ sudo apt update
$ sudo apt install ruby-full
```


## 2- Instruções para instalação do Geckodriver no Linux ou Mac:

    1. Faça o download do Geckodriver (conforme seu SO)
    2. https://github.com/mozilla/geckodriver/releases
    3. Descompacte 
    4. Acesse a pasta onde descompactou o binário e execute os comandos: 
```bash
chmod +x geckodriver
sudo mv geckodriver /usr/local/bin
```

## 3- Instruções para instalação do Chromedriver no Linux ou Mac: 

    1. Faça o download do Chromedriver (conforme seu SO) 
    2. https://sites.google.com/a/chromium.org/chromedriver/downloads
    3. Descompacte 
    4. Acesse a pasta onde descompactou o binário e execute os comandos:
```bash  
chmod +x chromedriver​
sudo mv chromedriver /usr/local/bin
```

## 4- Instalando o bundler
No Terminal digite o comando:
```bash
gem install bundler
```
## Windows

## 1- Instalando o Console do Cmder
    • Baixe em: https://github.com/cmderdev/cmder/releases/download/v1.3.2/cmder.zip . 
    • Descompactar na pasta C:\Cmder. 
    • Selecione o cmder.exe e arrastar até sua barra de ferramentas do Windows para criar um atalho. 
    • Executar o cmder.exe. 
## 2- Instalando o Ruby para Windows de acordo com a versão do seu sistema operacional e arquitetura x86 (32bits) ou x64 (64bits)
    • Baixe em: http://rubyinstaller.org/downloads/. 
    • Executar o arquivo baixado e seguir as instruções clicando em ‘next’. 
    • Selecionar os 3 checkbox exibidos e continuar a dar ‘next’ até o ‘finish’. 
    • No Console do Cmder, digite o comando ruby –v , se a instalação estiver correta aparecerá a versão instalada. 
## 3- Instalando Devkit
    • Baixe em (x86): https://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-32-4.7.2-20130224-1151-sfx.exe. 
    • Baixe em (x64): http://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe. 
    • Acesse o diretório C:\Ruby23-x64. 
    • Crie uma pasta chamada devkit e coloque o arquivo baixado dentro dessa pasta. 
    • Clique duas vezes no arquivo para que ele descompate os arquivos na pasta que foi criada. 
    • No Console do Cmder, digite os comandos: 
```bash
cd/
cd C:\Ruby23-x64\devkit
ruby dk.rb init
ruby dk.rb install
```
## 4- Alterando os sources do rubygems
O Rubygems precisa de uma atualização de certificado de sergurança para permitir utilizar com https, e para não precisar atualizar isso, passamos a utilizar então o repositório de gems em http, fazendo o seguinte:
    • No Console do Cmder, digite o comando: 
```bash
gem sources -a http://rubygems.org/
gem sources -r https://rubygems.org/
```

## 5- Instalando o bundler
No Console do Cmder, digite o comando:
``` bash
gem install bundler
```

## 6- Instalando o chromedriver, IEdriver e Geckodriver

Baixe o chromedriver em: https://sites.google.com/a/chromium.org/chromedriver/downloads .
    • Descompacte o arquivo dentro da pasta C:\Ruby23-x64\bin. 
Faça o mesmo para o IEdriver e o Geckodriver.
E pronto, ambiente configurado.

Clonando o repositório do git para execução dos teste
Selecionando o destino para o clone do projeto
    • Navegue no Cmder até a pasta em que você achar mais apropriada para ser feito o clone do projeto, como exemplo vou utilizar a pasta projetos dentro de C:. 
cd/
cd projetos
Clonando o repositório 
    • No Console do Cmder, digite o comando: 
git clone https://github.com/joe-tkd/
Como é possível ver, a estrutura do comando é "git clone [endereço do repositório] .
Feito isso, temos um clone do projeto para que possamos trabalhar e executar os testes automatizados.


## Rodando a automação:

## 1- Instalando as gemas:
No terminal, dentro da pasta raiz do projeto, execute o comando abaixo
``` bash
gem install bundler
```

## Abaixo alguns comandos para rodar a automação:

- Roda o default (com Chrome e saída pretty)
```bash
cucumber 
```

- Roda o em formato pretty
```bash
cucumber -p bdd
```

- Roda em formato progress
```bash
cucumber -p dot
```

- Roda em formato html e gera o relatório na pasta /log
```bash
cucumber -p html
```

- Roda no formato dot com Chrome
```bash
cucumber -p chrome
```

- Roda no formato dot com Firefox
```bash
cucumber -p firefox
```

Você pode também rodar algum cenário especifico utilizando @ (Ex: cucumber -t @cenario_exemplo)


## Licença
Esse código é livre para ser usado dentro dos termos da licença MIT license




 
