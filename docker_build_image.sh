#!/usr/bin/env bash

rsync ./install_packages.sh docker/install_packages.sh

docker build -t $USER/hw0-linux_osx docker/.