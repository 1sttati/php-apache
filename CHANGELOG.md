# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Comprehensive README documentation
- Docker health check for better container monitoring
- .dockerignore for optimized builds
- Example docker-compose.yml configuration
- CHANGELOG for version tracking

### Changed
- Enhanced documentation with usage examples
- Added curl to support health checks

## [1.0.0] - 2025-08-02

### Added
- Initial release with PHP 8.4 and Apache
- Pre-installed PHP extensions: mysqli, pdo, pdo_mysql, gd, mbstring, zip, xml, iconv, pcntl
- Redis support via PECL extension
- MongoDB support via PECL extension
- Composer pre-installed globally
- Laravel installer ready to use
- Apache mod_rewrite enabled
- Document root configured for `/var/www/html/public`
