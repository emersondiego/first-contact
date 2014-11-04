first-contact
=============

Objetivo aqui é instruir e documentar o processo inicial para quem quer começar a criar projetos de automação de testes funcionais utilizando Selenium IDE, convertendo para Selenium Webdriver + Rspec.

1o Passo
========

Abaixo algumas sugestões para quem está engatinhando, saber quais ferramentas podem ser utilizadas:

- Eu utilizo Linux, portanto, sugiro uma versão linux, seja numa partição ou VM (Ubunto 12.04 LTS);
- Firefox com a extensão do Selenium na sua última versão;
- Um editor de textos: Sublime Text;
- Configurar sua conta GitHub e sua chave SSH (https://help.github.com/articles/generating-ssh-keys);
- Instalar o Rbenv (https://github.com/sstephenson/rbenv#installation);
- Instalar o plugin do rbenv:
	$ git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
- Configurar o rbenv no path:
	$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile
- Atualizar o shell:
	$ exec $SHELL -l
- Instalar o Ruby (https://github.com/sstephenson/rbenv#installing-ruby-versions); #instale a versão 2.1.2 (a atual)
- Definindo a versão ruby global a ser utilizada:
	$ rbenv global 2.1.2 (a versão do ruby que vc instalou)
- Feito isso, instalar o Bundler, com o comando:
	$ sudo gem install bundler
- Definir sua pasta de trabalho:
	$ mkdir ~/workspace/
	$ cd ~/workspace
- Clonar esse repositório na pasta criada:
	$ git clone git@github.com:MyPersonalProjects/first-contact.git
- Para rodar o primeiro exemplo Rspec:
	$ cd ~/workspace/first-contact/rb
	$ bundle
	$ rspec spec

PS: eventualmente pode faltar albuma lib no seu ambiente, por exemplo, OpenSSL, então, instale qualquer dependência que tenha no sistema.

Quando isso começar a funcionar (abrirá a página do Google e fará uma pesquisa 2x), significa que já poderemos iniciar os próximos passos.

2o Passo
========

Finalmente conseguimos terminar o 1o Passo, sim, tudo isso ai é só a preparação do ambiente (e a parte mais chata), agora vamos começar a criar nossos scripts. Minha sugestão incial é aprender brincando, como? Vamos lá:
- Crie uma nova pasta dentro da ../first-contact/"nomedoprojeto" por exemplo, o nome do site que vc vai brincar
- Defina cenários de testes que quer automatizar nos seus scripts
- Grave seus scripts inicialmente com o Selenium IDE, e quando estiver OK, exporte para Ruby/Rspec
- Lembre-se da estrutura básica: o nome do arquivo necessariamente terá "nome_spec.rb" e necessariamente ficará dentro de uma subpasta chamada "spec", ou seja: "../"nomedoprojeto"/spec", sugiro ainda, outra subpasta, dentro da "spec": "../"nomedoprojeto"/spec/funcionais"
- Feito isso, estude o código exportado, e entenda o que está sendo feito nele, tente melhorá-lo, se possível
- Execute e veja se continua funcionando como funcionava como no script da IDE

3o Passo
========

Tudo funcionando, está na hora de começar a fazer seu script ficar mais dinâmico e inteligente, transformando-o em um código orientado a objetos, como vc fará isso? Entendendo seu script, crie no arquivo "nome_spec.rb" na parte do "it" chamadas para para métodos que vc deverá criar em outro arquivo, que pode ficar na seguinte estrutura: ../nomedoprojeto/spec/class/nome.rb

Dessa forma, teremos então as seguintes pastas:
- ../"nomedoprojeto"/spec/funcionais
- ../"nomedoprojeto"/spec/class

Onde, dentro de funcionais, apenas as chamadas para os métodos das suas classes que ficarão dentro a pasta class. Veja um exemplo abaixo:

