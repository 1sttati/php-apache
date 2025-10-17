# PHP 8.4 Apache Docker Image

A production-ready Docker image for PHP 8.4 with Apache web server, optimized for Laravel and modern PHP applications.

## Features

- **PHP 8.4** with Apache 2.4
- **Pre-installed PHP Extensions:**
  - mysqli, pdo, pdo_mysql
  - gd (with freetype, jpeg, webp support)
  - mbstring, zip, xml, iconv, pcntl
  - redis, mongodb
- **Composer** pre-installed globally
- **Laravel Installer** ready to use
- Apache mod_rewrite enabled
- Configured for `/var/www/html/public` as document root

## Quick Start

### Using Docker

```bash
docker pull your-docker-username/php-apache:latest
docker run -d -p 8080:80 your-docker-username/php-apache:latest
```

### Using Docker Compose

Create a `docker-compose.yml` file:

```yaml
version: '3.8'
services:
  web:
    image: your-docker-username/php-apache:latest
    ports:
      - "8080:80"
    volumes:
      - ./src:/var/www/html
    environment:
      - APACHE_DOCUMENT_ROOT=/var/www/html/public
```

Run with:
```bash
docker-compose up -d
```

## Building the Image

```bash
# Build the image
docker build -t $DOCKER_ACC/$DOCKER_REPO:$IMG_TAG .

# Login to Docker Hub
docker login

# Push to registry
docker push $DOCKER_ACC/$DOCKER_REPO:$IMG_TAG
```

## Configuration

### Document Root

The default Apache document root is set to `/var/www/html/public`. You can change this by setting the `APACHE_DOCUMENT_ROOT` environment variable:

```bash
docker run -e APACHE_DOCUMENT_ROOT=/var/www/html/custom -p 8080:80 your-image
```

### Volume Mounting

Mount your application code:

```bash
docker run -v $(pwd):/var/www/html -p 8080:80 your-image
```

## Included PHP Extensions

| Extension | Purpose |
|-----------|---------|
| mysqli | MySQL database connectivity |
| pdo, pdo_mysql | PDO database abstraction layer |
| gd | Image processing |
| mbstring | Multibyte string handling |
| zip | ZIP archive handling |
| xml | XML processing |
| redis | Redis caching support |
| mongodb | MongoDB database support |
| pcntl | Process control |
| iconv | Character encoding conversion |

## Use Cases

- Laravel applications
- Symfony applications
- WordPress with Redis caching
- Custom PHP applications with MongoDB
- Any PHP 8.4 web application requiring Apache

## License

This Dockerfile configuration is open source and available for use.

## About This Repository

This repository has been enhanced to demonstrate [agent capabilities](AGENT_CAPABILITIES.md). See the capabilities document to understand what improvements were made and what the GitHub Copilot Agent can do.