#!/usr/bin/env bash

# if [ -f "/etc/debian_version" ]; then
if type "apt" > /dev/null; then
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
        cmake               \
        libglfw3-dev        \
        pkgconf
elif type "dnf" > /dev/null; then
    dnf install -y \
        freeglut-devel \
        glew-devel \
        glm-devel \
        freeimage-devel \
        gcc \
        g++
fi
