# Elementor consent blocks with Cookiebot integration

## Requirements

To use this plugin on your own website, you'll have to install

**following WordPress plugins:**
- Elementor

**following applications:**
- [Cookiebot](https://www.cookiebot.com/?utm_source=github&utm_medium=link&utm_campaign=reseller_antonysmal)
  - [Installation guide](https://www.cookiebot.com/en/manual-implementation/) - Recommended.
  - [WordPress plugin](https://wordpress.org/plugins/cookiebot/)
## Development environment

Utilizes [Docker](https://www.docker.com/).

Default Wordpress login credentials: admin | admin.

Notice❗ This environment doesn't activate Cookiebot to your development site automatically. You'll have to manually add Cookiebot to test and develop this plugin.

###  Files
- [DockerFileWordpress](./DockerFileWordpress) Defines WordPress container settings.
- [docker-compose.yml](./docker-compose.yml) Defines how containers interacts with each other.
- [config-wordpress.sh](./config-wordpress.sh) Downloads and installs WordPress and Elementor. Creates working folder for this project to `/wp-content/plugins/`.