first-contact
=============

Objetivo aqui é instruir e documentar o processo inicial para quem quer começar a criar projetos de automação de testes funcionais utilizando Selenium IDE, convertendo para Selenium Webdriver + Rspec.

1o Passo
========

Abaixo algumas sugestões para quem está engatinhando, saber quais ferramentas podem ser utilizadas:

- Eu utilizo Linux, portanto, sugiro uma versão linux, seja numa partição ou VM (Ubunto 12.04 LTS);
- Firefox 31 com a extensão do Selenium na sua última versão (Firefox 32 está com conflito);
- Um editor de textos: Sublime Text;
- Configurar sua conta GitHub e sua chave SSH (https://help.github.com/articles/generating-ssh-keys);
- Instalar o Rbenv (https://github.com/sstephenson/rbenv);
- Instalar o Ruby (https://github.com/sstephenson/rbenv#installing-ruby-versions);
- Definir sua pasta de trabalho: mkdir ~/workspace/
- Clonar esse repositório na pasta criada: git clone git@github.com:MyPersonalProjects/first-contact.git
- Para rodar o primeiro exemplo Rspec:
	cd ~/workspace/first-contact/rb
	Rspec spec

Quando isso começar a funcionar (abrirá a página do Google e fará uma pesquisa 2x), significa que já poderemos iniciar os próximos passos.