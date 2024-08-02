# Elementor consent blocks with Cookiebot integration
## Development environment

Utilizes [Docker](https://www.docker.com/).

Default login: admin | admin.

###  Files
- [DockerFileWordpress](./DockerFileWordpress) Defines WordPress container settings.
- [docker-compose.yml](./docker-compose.yml) Defines how containers interacts with each other.
- [config-wordpress.sh](./config-wordpress.sh) Downloads and installs WordPress and Elementor. Creates working folder for this project to `/wp-content/plugins/`.