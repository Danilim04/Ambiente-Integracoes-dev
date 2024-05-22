# Ambiente de Desenvolvimento Dockerizado

## Descrição
Este projeto é destinado ao uso dos desenvolvedores, oferecendo um ambiente padronizado e fácil de configurar para todos os envolvidos.

## Estrutura do Ambiente
- **Nginx**: Funciona como servidor web e proxy reverso.
- **Aplicação**: Inclui um Dockerfile personalizado, configurado com todas as dependências necessárias para o projeto.
- **Redis**: Usado para caching e armazenamento de dados em memória, o que contribui para a melhoria da performance da aplicação.

## Objetivos
- **Padronização do Ambiente**: Assegurar um ambiente de desenvolvimento consistente e controlado para todos os desenvolvedores.
- **Facilidade de Setup**: Simplificar o processo de configuração para novos desenvolvedores.
- **Desenvolvimento Ágil**: Capacitar a equipe de desenvolvimento a focar mais na codificação e menos na configuração de ambientes.

## Tecnologias Utilizadas
- **Docker**: Utilizado para criar e gerenciar containers.
- **Docker Compose**: Empregado para definir e executar múltiplos serviços de containers.
- **Nginx**: Atua como servidor web e proxy reverso.
- **Redis**: Serve como banco de dados em memória para caching e sessões rápidas.

## Como Usar

### Passo 1: Clone o Repositório
Clone o repositório utilizando o comando:
```bash
git clone <URL do Repositório>
```

### Passo 2: Estrutura do Projeto
No diretório do projeto, organize os arquivos da seguinte forma:
- `/app`: Contém a aplicação
- `/docker`: Configurações do Docker
- `/docker-images`: Imagens Docker utilizadas
- `/docker-compose.yml`: Arquivo de configuração dos containers

### Passo 3: Configurar o Docker Compose
Verifique e ajuste os argumentos no Docker Compose conforme necessário. Cada argumento é descrito abaixo:
- `PHP_VERSION: '8.2-fpm'`: versão do PHP
- `workDir: /var/www/`: Diretório onde o container espera encontrar o código.
- `dirApp: ./app`: Local no host onde o código fica armazenado.
- `entrypoint: docker-images/php/entrypoints/entrypoint-backDev3.sh`: Verifique se o arquivo de entrypoint existe neste caminho.
- `supervisordDir: ./docker/supervisord/supervisord-backDev3.conf`: Local no host onde fica a configuração do SupervisorD.

### Passo 4: Configurar PHP, SupervisorD e Nginx
As configurações do PHP, SupervisorD e Nginx podem precisar de ajustes específicos para cada desenvolvimento. Verifique os seguintes locais:
- **Local do arquivo PHP**: `/docker/php/custom.ini`
- **Local do arquivo SupervisorD**: `/docker/supervisord/`
- **Local do arquivo Nginx**: `/docker/nginx/laravel.conf`

Configurações atuais do PHP:
```bash
[PHP]
post_max_size = 100M
upload_max_filesize = 100M
request_terminate_timeout = 3600s
max_execution_time = 3600s
memory_limit = 2058M
```

### Passo 5: Conferir e Iniciar
Confira se todas as configurações estão corretas e que os arquivos e parâmetros existem. Em seguida, no diretório do projeto onde está o docker-compose, execute:
```bash
docker compose up -d
```

### Passo 6: Usar
Após a construção das imagens pelo Docker, a aplicação estará acessível em `localhost`. Para acessar o container:
```bash
docker compose exec back-azapfy bash
# ou
docker-compose exec back-azapfy bash
```

Para qualquer dúvida, entre em contato comigo pelo Discord: daniel_4817

Video Tutorial a respeito: https://drive.google.com/file/d/1-AvJpglt5Wtn9K3tUkoTnN7rbeIOdA0q/view?usp=sharing
---

Este README foi organizado para garantir clareza e facilitar o entendimento de todos os passos necessários para configurar e utilizar o ambiente de desenvolvimento dockerizado.
