#!/bin/sh

sudo dnf install \
  php-cli \
  php-xdebug \
  composer

composer global require hirak/prestissimo
