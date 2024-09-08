# Docker Configuration Skeleton

This project is a skeleton for container configurations using Docker, aimed at simplifying the setup of development and testing environments for web applications. It includes containers configured for Nginx, PHP, and MySQL.

Used for running Laravel projects with reverb installed. 

## Project Content

- `example.docker-compose.yml`: Docker Compose file that defines the Nginx, PHP, and MySQL services.
- `nginx/example.nginx.conf`: Nginx configuration file for serving a PHP application.
- `dockerfiles/example.nginx.dockerfile`: Dockerfile for the Nginx container.
- `dockerfiles/example.php.dockerfile`: Dockerfile for the PHP container.
- `src/`: Directory where the application’s source code should be placed.
- `docker/.dbdata/`: Directory where MySQL data will be stored.

## How to Use

### Prerequisites

- [Docker](https://www.docker.com/get-started) installed on your system.
- [Docker Compose](https://docs.docker.com/compose/install/) installed.

### Setup Steps

1. **Clone the repository:**

   ```bash
   git clone https://github.com/seuusuario/docker-config-skeleton.git
   cd docker-config-skeleton
   ```

2. **Clone project inside /src folder:**

   Create a /src folder inside the project and clone the project inside it.

3. **Build and start the containers:**

   Run the following command to build and start the containers defined in `docker-compose.yml`:

   ```bash
   docker-compose up -d
   ```

   This command will start the following services:

   - **server (Nginx)**: Available on ports`80` and `443`.
   - **php (PHP-FPM)**: Available on ports `8080`.
   - **mysql (MySQL)**: Available on ports `33068`.

4. **Access the application:**

   Open your browser and go to [http://localhost](http://localhost).

## File Structure

### Docker Compose (`example.docker-compose.yml`)

Defines three services::

- **server (Nginx)**: Acts as the web server, routing traffic to the PHP container.
- **php (PHP-FPM)**: Container for executing PHP scripts.
- **mysql (MySQL)**: Relational database.


## Notas Adicionais

- Ensure that the `src/` and `docker/.dbdata/` directories have the correct permissions so that the containers can access the files.

- Modify the configuration files as needed to meet your project's specific requirements.
