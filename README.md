# Sonata Project Starter

This is a starter installation for full-stack Sonata Admin project development with the LTS Symfony version (6.4).

This open-source project is intended for use in the development of my full-stack projects and is actively maintained and improved. It uses default Symfony components as well as some recommended by Symfony, and I will follow Symfony's recommendations as much as possible in the future.

## Features

- SonataAdminBundle
- SonataDoctrineORMBundle
- SonataUserBUndle
- PHPStan
- PHPUnit
- PHP CS Fixer

## Requirements

- PHP 8.2 or higher
- Composer
- Symfony CLI
- MySQL
- Docker and Docker Compose

## Prerequisites

Ensure you have the following installed on your machine:

- Docker
- Docker Compose
- Composer

## Docker Installation

- Check `docker/docker-notes.txt` file for more info

1. Build and start the containers:

    ```bash
    docker compose up -d --build
    ```

2. Create a `.env.local` file and configure your database connection:

    ```dotenv
    DATABASE_URL=mysql://root:pass1234@mysql-sonata_starter:3306/sonata_starter_dev
    APP_ENV=dev
    APP_DEBUG=true
    ```

3. Create the database and run migrations:

    ```bash
    docker compose exec php php bin/console doctrine:database:create
    docker compose exec php php bin/console doctrine:migrations:migrate
    ```

4. Insert admin-dev user:
    These are just example credentials and passwords are hashed using `bin/console security:hash-password` command.

    ```bash
    DEFAULT ADMIN USER
    username: admin-dev
    password: admin1234
    ```

    ```sql
    INSERT INTO user
    (id, username, username_canonical, email, email_canonical, enabled, salt, password, last_login, confirmation_token, password_requested_at, roles, created_at, updated_at)
    VALUES
    (1, 'admin-dev', 'admin-dev', 'admin-dev@test.com', 'admin-dev@test.com', 1, '$2y$13$r8W59gyeQkbSoiC7/r2bae3a5a5mY7jIDQz.Kp0sbZY.1UYATSLDS', '$2y$13$y6S3EHTHbt1DAmoJZkRUWOEuA7FrTqiwSJFkriimLEo1X8I/xyKm2', NULL, NULL, NULL, 'a:2:{i:0;s:17:\"ROLE_SONATA_ADMIN\";i:1;s:16:\"ROLE_SUPER_ADMIN\";}', '2025-04-25 00:00:00', '2024-04-25 00:00:00');
    ```

5. Start the Docker containers:

    ```bash
    sh up.sh
    ```

6. Run:

    ```bash
    composer install
    sh asset-map-compile.sh
    ```

7. Open your browser and navigate to `http://localhost:8090`.

## Running Tests

To run the tests, use the following command:

    ```bash
    sh test.sh
    ```

## Notes

For more instructions check additional notes in `notes.txt` text file.

## License

This project is licensed under the MIT License.

## Acknowledgements

- [Symfony](https://symfony.com/)
- [Sonata Project](https://docs.sonata-project.org/)
- [Doctrine](https://www.doctrine-project.org/)