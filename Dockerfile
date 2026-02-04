FROM php:8.2-apache

# Activer mod_rewrite (Laravel)
RUN a2enmod rewrite

# Installer dépendances système
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    zip \
    libpng-dev \
    libzip-dev \
    libonig-dev \
    libicu-dev \
    && docker-php-ext-install \
        pdo_mysql \
        mbstring \
        bcmath \
        gd \
        zip \
        intl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Installer Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Définir le dossier de travail
WORKDIR /var/www/html

# Copier tout le projet
COPY . .

# Config Apache pour Laravel
RUN sed -i 's|/var/www/html|/var/www/html/public|g' /etc/apache2/sites-available/000-default.conf

# Permissions Laravel
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 775 storage bootstrap/cache

# Exposer le port Apache
EXPOSE 80

# Commande de démarrage (Laravel setup + migrate)
CMD bash -c "\
    cp .env.example .env && \
    composer install --no-interaction --prefer-dist && \
    php artisan key:generate --force && \
    php artisan migrate --force && \
    apache2-foreground \
"
