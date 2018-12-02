#!/usr/bin/env bash

if [ -z "$(ls -A $PWD)" ]; then
    git clone https://github.com/laravel/laravel.git .
    rm -rf .git
    composer install
    cp .env.example .env
    php artisan key:generate
    php artisan migrate
fi