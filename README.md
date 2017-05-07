# Wordpress Hello World

## Depedências necessárias

Docker - Acesse a documentação de instalação [aqui](https://docs.docker.com/engine/installation/linux)

Docker-compose - Acesse a documentação de instalação [aqui](https://docs.docker.com/compose/install/)

## Wordpress Hello World

1. `git clone https://github.com/victorhundo/wordpress.git && cd wordpress`
2. `docker-compose up`
3. acesse `http://localhost:8080`
4. administre em `localhost:8080/wp-admin`, usuário `admin`, senha `admin`

## Como funciona

As imagens Docker utilizada nesse projeto foi baseada na [imagem oficial do wordpress](https://hub.docker.com/_/wordpress/), após realizar as configurações iniciais (adicionado idioma pt-br e usuário de administrador) foi realizado um `mysqldump` do container do mysql, o arquivo gerado foi adicionado na pasta [mysql](https://github.com/victorhundo/wordpress//tree/master/mysql) com o nome de base.sql.

O container web do wordpress aguarda o container mysql estiver disponivél para criar a base de dados e inserir os dados de `base.sql`. Também foi feito o volume entre a pasta `/var/www/html` do container do wordpress para a pasta do projeto [wordpress/html](hhttps://github.com/victorhundo/wordpress/tree/master/wordpress/html) para que facilite a edição dos arquivos de configuração php do container.
