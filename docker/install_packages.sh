#!/usr/bin/env bash

if [ -f "/etc/debian_version" ]; then
    # pour ubuntu 14.04 (cuda 7.5)
    # TODO: faudrait rajouter la clée publique du dépot !
    # https://github.com/filipwasil/fillwave/issues/58
    echo "deb http://ppa.launchpad.net/keithw/glfw3/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list.d/fillwave_ext.list
    echo "deb-src http://ppa.launchpad.net/keithw/glfw3/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list.d/fillwave_ext.list
    
    # apt update

    # force-yes car ppa/depot non authentifié.
    
    # apt-get install -y --force-yes \
        # libglfw3-dev

    apt update && \
    apt-get install -y 	\
        build-essential		\
        freeglut3-dev 		\
        glew-utils 			\
        libglew1.6-dev 		\
        libfreeimage-dev	\
        libva-glx1          \
        libglm-dev          \
        libfreeimage-dev    \
        libxi-dev           \
        libxmu-dev			\
        cmake				\
        pkg-config          \
        libglfw3-dev
else
    dnf install -y \
        freeglut-devel \
        glew-devel \
        glm-devel \
        freeimage-devel \
        gcc \
        g++
fi
