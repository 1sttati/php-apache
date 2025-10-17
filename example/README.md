# Example PHP Application

This directory contains example PHP files that demonstrate the capabilities of the PHP-Apache Docker image.

## Files

- **index.php** - Shows PHP info and configuration
- **db-test.php** - Tests MySQL/PDO connection
- **redis-test.php** - Tests Redis connection
- **mongodb-test.php** - Tests MongoDB connection

## Usage

1. Copy this example directory to your project:
   ```bash
   cp -r example/ my-app/
   ```

2. Update your docker-compose.yml to mount the volume:
   ```yaml
   volumes:
     - ./my-app:/var/www/html
   ```

3. Access the examples:
   - http://localhost:8080/ - PHP Info
   - http://localhost:8080/db-test.php - Database test
   - http://localhost:8080/redis-test.php - Redis test
   - http://localhost:8080/mongodb-test.php - MongoDB test

## Environment Variables

You can customize database connections via environment variables:

- `DB_HOST` - MySQL host (default: mysql)
- `DB_NAME` - Database name (default: app_database)
- `DB_USER` - Database user (default: app_user)
- `DB_PASSWORD` - Database password (default: app_password)
- `REDIS_HOST` - Redis host (default: redis)
- `REDIS_PORT` - Redis port (default: 6379)
- `MONGODB_HOST` - MongoDB host (default: mongodb)
- `MONGODB_PORT` - MongoDB port (default: 27017)
