# Contributing to PHP-Apache Docker Image

Thank you for your interest in contributing! This document provides guidelines for contributing to this project.

## How to Contribute

### Reporting Issues

If you encounter any issues or have suggestions:

1. Check if the issue already exists
2. Create a new issue with:
   - Clear description of the problem
   - Steps to reproduce
   - Expected vs actual behavior
   - PHP/Apache version information
   - Docker version

### Suggesting Enhancements

For new features or improvements:

1. Open an issue describing the enhancement
2. Explain the use case and benefits
3. Discuss implementation approach

### Pull Requests

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Test your changes thoroughly
5. Update documentation (README.md, CHANGELOG.md)
6. Commit your changes (`git commit -m 'Add amazing feature'`)
7. Push to the branch (`git push origin feature/amazing-feature`)
8. Open a Pull Request

## Development Guidelines

### Dockerfile Changes

- Keep the image size minimal
- Document new packages/extensions
- Test build process
- Verify all PHP extensions work correctly

### Testing Your Changes

Before submitting:

```bash
# Build the image
docker build -t php-apache:test .

# Test basic functionality
docker run -d -p 8080:80 php-apache:test

# Verify PHP extensions
docker exec <container-id> php -m

# Check Apache configuration
docker exec <container-id> apache2 -t
```

### Documentation

- Update README.md for new features
- Add entry to CHANGELOG.md
- Include code comments where necessary
- Provide usage examples

## Code of Conduct

- Be respectful and inclusive
- Provide constructive feedback
- Focus on the issue, not the person
- Help others learn and grow

## Questions?

Feel free to open an issue for any questions or clarifications.

Thank you for contributing! 🎉
