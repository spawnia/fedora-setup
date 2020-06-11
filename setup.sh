#!/bin/sh

DIR=$(dirname $0)

$DIR/dotfiles.sh
$DIR/docker.sh
$DIR/php.sh

mkdir ~/Projects
