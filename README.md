# Docker Configuration Skeleton

Este projeto é um skeleton para configurações de contêineres usando Docker, destinado a simplificar a configuração de ambientes de desenvolvimento e teste para aplicações web. Ele inclui contêineres configurados para Nginx, PHP e MySQL.

Uso para rodar projetos Laravel

## Conteúdo do Projeto

- `example.docker-compose.yml`: Arquivo Docker Compose que define os serviços Nginx, PHP e MySQL.
- `nginx/example.nginx.conf`: Arquivo de configuração do Nginx para servir uma aplicação PHP.
- `dockerfiles/example.nginx.dockerfile`: Dockerfile para o contêiner Nginx.
- `dockerfiles/example.php.dockerfile`: Dockerfile para o contêiner PHP.
- `src/`: Diretório onde o código fonte da aplicação deve ser colocado.
- `docker/.dbdata/`: Diretório onde os dados do MySQL serão armazenados.

## Como Usar

### Pré-requisitos

- [Docker](https://www.docker.com/get-started) instalado em seu sistema.
- [Docker Compose](https://docs.docker.com/compose/install/) instalado.

### Passos para Configuração

1. **Clone o repositório:**

   ```bash
   git clone https://github.com/seuusuario/docker-config-skeleton.git
   cd docker-config-skeleton
   ```

2. **Configure o arquivo `.env` (opcional):**

   Crie um arquivo `.env` na raiz do projeto para definir variáveis de ambiente personalizadas.

3. **Construa e inicie os contêineres:**

   Execute o comando abaixo para construir e iniciar os contêineres definidos no `docker-compose.yml`:

   ```bash
   docker-compose up -d
   ```

   Este comando executará os seguintes serviços:

   - **server (Nginx)**: Disponível nas portas `80` e `443`.
   - **php (PHP-FPM)**: Disponível na porta `8080`.
   - **mysql (MySQL)**: Disponível na porta `33068`.

4. **Acesse a aplicação:**

   Abra seu navegador e acesse [http://localhost](http://localhost).

## Estrutura dos Arquivos

### Docker Compose (`example.docker-compose.yml`)

Define três serviços:

- **server (Nginx)**: Serve como servidor web, redirecionando tráfego para o contêiner PHP.
- **php (PHP-FPM)**: Contêiner para execução de scripts PHP.
- **mysql (MySQL)**: Banco de dados relacional.

### Configuração do Nginx (`nginx/example.nginx.conf`)

Configura o Nginx para servir uma aplicação PHP e redireciona certas rotas para o contêiner PHP.

### Dockerfile do Nginx (`dockerfiles/example.nginx.dockerfile`)

Define a imagem Docker personalizada para o servidor Nginx. Inclui a instalação de pacotes necessários e a configuração de SSL.

### Dockerfile do PHP (`dockerfiles/example.php.dockerfile`)

Define a imagem Docker personalizada para o ambiente PHP. Inclui instalação de extensões PHP, dependências e Composer.

## Comandos Úteis

- **Parar os contêineres:**

  ```bash
  docker-compose down
  ```

- **Reconstruir contêineres após alterações:**

  ```bash
  docker-compose up -d --build
  ```

- **Visualizar logs dos contêineres:**

  ```bash
  docker-compose logs -f
  ```

## Notas Adicionais

- Certifique-se de que os diretórios `src/` e `docker/.dbdata/` tenham as permissões corretas para que os contêineres possam acessar os arquivos.

- Modifique os arquivos de configuração conforme necessário para atender aos requisitos específicos do seu projeto.
