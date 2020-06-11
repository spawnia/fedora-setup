#!/bin/sh

sudo dnf install php-cli \
  composer

composer global require hirak/prestissimo
